//usaremos esta variable para hacer girar los cuadrados
float i = 0;
//y esta para el tono (hue) del color
float h = 0;

void setup(){
 size(640, 360);
 //cambiamos el modo para el rectángulo
 rectMode(CENTER);
 //y el de color
 colorMode(HSB, 60);
 //creamos un valor aleatorio para el tono
 h = random(100);
 //definimos el color de fondo
 background(h, 250, 250);
} 

void draw(){
  //tiramos un rectángulo del mismo color y tamaño del fondo a cada ciclo
  fill(h, 50, 50);
  rect(width/2, height/2, width, height);
  //borde y relleno del cuadrado
  stroke(#ffffff);
  fill(h*0.5, 50, 50);
  //trasladamos el punto 0,0 al centro de la ventana
  translate(width/2, height/2);
  //asignamos el valor de giro
  rotate(i);
  //y dibujamos el cuadrado
  rect(0, 0, 150, 150);
  //resereamos traslación y giro
  resetMatrix();
  //y repetimos con otro rectángulo

  //esto hace que el valor del ángulo aumente a cada ciclo
  i = i + 0.01;
}
