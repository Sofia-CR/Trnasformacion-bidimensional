float a = 0.0;
float s = 0.0;

void setup() {
  size(640, 360);
  noStroke();
  rectMode(CENTER);
  frameRate(30);
}

void draw() {
  
  background(255);
  
  a = a + 0.04;
  s = cos(a)*2;
  
  translate(width/2, height/2);
  scale(s); 
  fill(80,60,100);
  rect(0, 0, 50, 50);  
  translate(75, 0);
  fill(80,60,100);
  scale(s);
  rect(0, 0, 50, 50);       
}
