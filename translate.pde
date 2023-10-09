float x, y;
float dim = 80.0;

void setup() {
  size(640, 360);
  noStroke();
}

void draw() {
  background(255);
  
  x = x + 0.8;
  
  if (x > width + dim) {
    x = -dim;
  } 
  
  translate(x, height/2-dim/2);
  fill(80,60,100);
  rect(-dim/2, -dim/2, dim, dim);
  
  // Transforms accumulate. Notice how this rect moves 
  // twice as fast as the other, but it has the same 
  // parameter for the x-axis value
  translate(x, dim);
  fill(80,60,100);
  rect(-dim/2, -dim/2, dim, dim);
}
