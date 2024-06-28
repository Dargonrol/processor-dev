const int datapins[] = {9, 8, 7, 6, 5, 4, 3, 2};
const int enablePIN = 10;
const int RW = 12;
const int RS = 11;
const int V0 = 13;
const int contrast = 0;
int input;

void write_data(bool RS_bit, bool RW_bit, byte data) {
  delayMicroseconds(60);
  if (RS_bit == 1) {
    digitalWrite(RS, HIGH);
  } else {
    digitalWrite(RS, LOW);
  }
  if (RW_bit == 1) {
    digitalWrite(RW, HIGH);
  } else {
    digitalWrite(RW, LOW);
  }
  
  for (int  i = 0; i < 8; i++) {
    if (bitRead(data, i) == 1) {
      digitalWrite(datapins[i], HIGH);
    } else {
      digitalWrite(datapins[i], LOW);
    }
   }
  delayMicroseconds(1000);
  digitalWrite(enablePIN, HIGH);
  delayMicroseconds(1);
  digitalWrite(enablePIN, LOW);
}

void initialization() {
  Serial.begin(9600);
  for (int pin = 0; pin < (sizeof(datapins) / 2 ); pin++) {
    pinMode(datapins[pin], OUTPUT);
  }
  pinMode(enablePIN, OUTPUT);
  pinMode(RW, OUTPUT);
  pinMode(RS, OUTPUT);
  pinMode(V0, OUTPUT);
  analogWrite(V0, contrast);

  write_data(0, 0, B00111100);
  write_data(0, 0, B00001000);
  write_data(0, 0, B00000001);
  write_data(0, 0, B00000110);
  write_data(0, 0, B00001110);
}

void setup() {
  delay(1000);
  initialization();
  
  //write_data(RS, RW, DATA);
  
}

void loop() {
  if(Serial.available()){
        input = Serial.read();
        if (input != 10) {
          Serial.println(input);
          write_data(1, 0, input);
          delay(1);
          write_data(0, 0, B00011100);
        }
  }

}

/*
void write_data(bool RS_bit, bool RW_bit, byte data, byte line = 0) {
    delayMicroseconds(60);
    if (RS_bit == 1) {
        digitalWrite(RS, HIGH);
    } else {
        digitalWrite(RS, LOW);
    }
    if (RW_bit == 1) {
        digitalWrite(RW, HIGH);
    } else {
        digitalWrite(RW, LOW);
    }
  
    if (line != 0) { 
    // added the following code
    byte DDRAM_address;
    if (line == 1) {
        DDRAM_address = 0x00;
    } else if (line == 2) {
        DDRAM_address = 0x40;
    } else {
        DDRAM_address = 0x00; // default to line 1
    }
    // send command to set DDRAM address
    for (int i = 0; i < 8; i++) {
        if (bitRead(DDRAM_address, i) == 1) {
            digitalWrite(datapins[i], HIGH);
        } else {
            digitalWrite(datapins[i], LOW);
        }
    }
    
    delayMicroseconds(1000);
    digitalWrite(enablePIN, HIGH);
    delayMicroseconds(1);
    digitalWrite(enablePIN, LOW);
  
    // write data to the desired position
    for (int i = 0; i < 8; i++) {
        if (bitRead(data, i) == 1) {
            digitalWrite(datapins[i], HIGH);
        } else {
            digitalWrite(datapins[i], LOW);
        }
    }
    delayMicroseconds(1000);
    digitalWrite(enablePIN, HIGH);
    delayMicroseconds(1);
    digitalWrite(enablePIN, LOW);
}
*/