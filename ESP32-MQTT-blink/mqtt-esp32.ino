#include <ArduinoJson.h>
#include "WiFi.h"
#include <PubSubClient.h>

// Update these with values suitable for your network.
const char* ssid = "wifissid";
const char* password = "wifipassword";
const char* mqtt_server = "iot.eclipse.org";

const int ledPin1 = 35;

const int ledPin2 = 0;

#define mqtt_port 1883
#define MQTT_SERIAL_PUBLISH_CH "blackoutreader"
#define MQTT_SERIAL_RECEIVER_CH "blackoutreader"
#define ID_MAP_LENGTH 5
WiFiClient wifiClient;
/*id - GPIO
 * 1 - 4
 * 2 - 5
 * 3 - 16
 * 4 - 17
 */
int iomap[ID_MAP_LENGTH]={0,4,5,16,17};
int i=0;

PubSubClient client(wifiClient);

void setup_wifi() {
    delay(10);
    // We start by connecting to a WiFi network
    Serial.println();
    Serial.print("Connecting to ");
    Serial.println(ssid);
    WiFi.begin(ssid, password);
    while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.print(".");
    }
    randomSeed(micros());
    Serial.println("");
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());
}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP32Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect
    if (client.connect(clientId.c_str())) {
      Serial.println("connected");
      //Once connected, publish an announcement...
      //client.publish("/blackoutreader/devices/blackoutreader/up/", "hello world");
      // ... and resubscribe
      client.subscribe(MQTT_SERIAL_RECEIVER_CH);
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}


void callback(char* topic, byte *payload, unsigned int length) {
  //print recevied messages on the serial console
    Serial.println("-------new message from broker-----");
    Serial.print("channel:");
    Serial.println(topic);
    Serial.print("data:");  
    Serial.write(payload, length);
    Serial.println();
    StaticJsonBuffer<500> jsonBuffer;
    JsonObject& message = jsonBuffer.parseObject((char *)payload);
    if (!message.success()) {
      Serial.println("JSON parse failed");  
      return;
    }
    i=40;
    while(i>0){
      digitalWrite (ledPin1, HIGH);  // turn on the LED
      digitalWrite (ledPin2, HIGH);  // turn on the LED
      delay(125);
      digitalWrite (ledPin1, LOW);  // turn on the LED
      digitalWrite (ledPin2, LOW);  // turn on the LED
      delay(125);
      i=i-1;
    }
    // loop through each switch and swith IO sate
    JsonArray& switches=message["switches"];
    int i=0,id,io_status;
    for(i=0;i<switches.size();i++){
      id=switches[i]["id"];
      io_status=switches[i]["status"];
      digitalWrite(iomap[id],io_status);
    }


    
}

void setup() {
  pinMode (ledPin1, OUTPUT);
  pinMode (ledPin2, OUTPUT);
  digitalWrite (ledPin1, LOW);  // turn on the LED
  digitalWrite (ledPin2, LOW);  // turn on the LED
  Serial.begin(115200);
  Serial.setTimeout(500);// Set time out for 
  int i=0;
  for(i=0;i<ID_MAP_LENGTH;i++){
    pinMode(iomap[i],OUTPUT);
  }
  setup_wifi();
  client.setServer(mqtt_server, mqtt_port);
  client.setCallback(callback);
  reconnect();
}

void loop() {
   client.loop();
 }
