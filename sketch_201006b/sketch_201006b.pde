import processing.serial.*;
//este es mi primer código en processing
Serial myPort; // Crea un objeto desde class Serial


void setup(){
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[1], 9600);
  myPort.clear();
  size(1024,768);
  //fullScreen();
}

void draw(){
  //background(255, 128, 0);//fondo naranjo
  while (myPort.available() > 0) {
    int in = myPort.read();
    background(255, in*4, 0);//fondo naranjo
    line(mouseX, mouseY, 700, 500);//linea = trazo
    stroke(2);// grosor es de 2px
    println(in*4);
  }
}
