import processing.serial.*;
Serial serial;
int cm;

void setup() {
  size(800, 800);
  serial = new Serial(this, "COM4", 9600);
}

void draw()
{ cm=serial.read();
  int  x =cm/4;
 
  if (x>10.00)  {
    fill(0, 255, 0);
    delay(1000);
    ellipse(400, 300, 100, 100);
  } else if (x<10.00) {
    fill(255, 0, 0);
    ellipse(400, 300, 100, 100);
    delay(1000);
  }
  fill(0, 255, 0);
  ellipse(200, 450, 50, 50);
  fill(255, 0, 0);
  ellipse(600, 450, 50, 50);
  fill(255, 255, 255);
  
  rect(150, 520, 100, 50);
  fill(255, 255, 255);
  rect(550, 520, 100, 50);
  textSize(32);
  fill(0, 0, 0);
  text("YES", 170, 550);
  text("NO", 580, 550);
  println(x);
}
