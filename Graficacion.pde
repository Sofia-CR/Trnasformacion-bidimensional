float x1 = 100; 
float y1 = 200; 
float angle1 = 0; 

float x2 = 300; 
float y2 = 200; 
float velocidadX2 = 3; 
float velocidadY2 = 2; 

float x3 = 200; 
float y3 = 300; 
float lado3 = 50; 

float x4 = 300; 
float y4 = 100; 
float ladoX4 = 60; 
float ladoY4 = 40; 
float sesgoX4 = 1.02; 
float sesgoY4 = 0.98; 

boolean rot= false; 
boolean reboteAct = false; 
boolean cambioTamAleatorioActivo = false; 
boolean sesgoAct = false; 

float lado = 100; 
float intensidad = 0;
boolean aumentar = true;

void setup() {
  size(500, 500);
}

void draw() {
  float rojo = random(0, 220);
  float verde = random(0, 220);
  float azul = random(0, 220);
  background(intensidad, 220, 220);
  stroke(intensidad, 0,0);
  fill(rojo, verde, azul);

  if (intensidad == 20){
    aumentar = false;
  }else if (intensidad == 0 ){
    aumentar = true;
  }
  
  if (aumentar ){
      intensidad += 1;
  }else {
    intensidad -= 1;
  }

  if (rot) {
    translate(x1, y1);
    rotate(radians(angle1));
    rectMode(CENTER);
    rect(0, 0, 100, 100);
    angle1 += 2;
  }

  if (reboteAct) {
    x2 += velocidadX2;
    y2 += velocidadY2;

    if (x2 > width || x2 < 0) {
      velocidadX2 *= -3;
    }

    if (y2 > height || y2 < 0) {
      velocidadY2 *= -3;
    }

    rectMode(CENTER);
    rect(x2, y2, 100, 100);
  }

  if (cambioTamAleatorioActivo) {
    float factorCambio = random(0.8, 1.2); // Factor de cambio entre 0.8 y 1.2
    lado3 *= factorCambio;

    rectMode(CENTER);
    rect(x3, y3, lado3, lado3);
  }

  if (sesgoAct) {
    // Aplica el sesgo en el cambio de tamaño del cuadrado sesgado
    ladoX4 *= sesgoX4;
    ladoY4 *= sesgoY4;

    rectMode(CENTER);
    rect(x4, y4, ladoX4, ladoY4);
  }
}

void keyPressed() {
  if (key == '1') {
    rot= true;
    reboteAct = false;
    cambioTamAleatorioActivo = false;
    sesgoAct = false;
  } else if (key == '2') {
    rot = false;
    reboteAct = true;
    cambioTamAleatorioActivo = false;
    sesgoAct = false;
  } else if (key == '3') {
    rot = false;
    reboteAct = false;
    cambioTamAleatorioActivo = true;
    sesgoAct = false;
  } else if (key == '4') {
    rot = false;
    reboteAct = false;
    cambioTamAleatorioActivo = false;
    sesgoAct = true;
  }
}
