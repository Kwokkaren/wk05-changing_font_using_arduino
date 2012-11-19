/* simple "K" drawn with basic shapes in colours
kwok karen 
u0907816@nus.edu.sg */

import processing.serial.*;  // Import Serial class library
Serial myPort;  // Create object from Serial class

float Y=20;



void setup(){
size (400,400);
background (Y);
String portName = Serial.list()[0]; //the first port
myPort = new Serial(this, portName, 9600);
myPort.bufferUntil('\n'); // buffer incoming characters until line feed.
}


void serialEvent(Serial p){
  String s = "";        // string value received.
  String[] values;      // splitted string values.
  
  if(p.available() > 0){  // check number of characters in the serial buffer 
    s = p.readString();   // read string.
    if(s != null){ 
      println("received:"+s);
      
      values = s.split(",");     // separate values with ',' characters.
      println(values);           
      
      val = float(values[0]);
    }}}
    
    
void draw(){
  

noStroke();
fill(#D91A2A,127);
//top tri(x1,y1,x2,y2,x3,y3)
triangle(Y,50,320,50,Y,220);

//rect(x,y,width,height)
fill(#A9D943,127);
rect(Y-105,50,110,300);

//bottom
fill(#F2E527,127);
triangle(Y,140,Y,350,345,350);


//save ("K02changed.tif");
}

