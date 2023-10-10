float x1, y1, x2, y2;
float skewAmount = 0.0;

void setup() {
  size(400, 400);
  x1 = 100;
  y1 = 100;
  x2 = 300;
  y2 = 300;
  rectMode(CORNERS);
}

void draw() {
  background(120);
  
  // Dibuja un rectángulo sesgado
  pushMatrix();
  skew(skewAmount);
  rect(x1, y1, x2, y2);
  popMatrix();
}

void skew(float angle) {
  float t = tan(angle);
  applyMatrix(1, t, 0, 1, 0, 0);
}

void keyPressed() {
  // Al presionar una tecla, cambia el valor de sesgo (skewAmount)
  if (key == 'a' || key == 'A') {
    skewAmount += 0.1;
  } 
}
