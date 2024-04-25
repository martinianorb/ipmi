//TP1
// Martiniano Rodriguez Barreda
// Legajo 95529/0
PImage imagen;

void setup() {
  size(800, 400);
  imagen = loadImage("banana.png"); 
}

void draw() {
  background(255);
  
  // la banana en la mitad izquierda
  drawBanana(width/4, height/2, 350, 150); // Ajusta los valores de ancho y alto
  
  // la imagen en la mitad derecha
  image(imagen, width/2, 0, width/2, height);
}

void drawBanana(float x, float y, float w, float h) {
  noStroke();
  
  // sombra 
  fill(150); // Gris
  ellipse(x + w*0.1, y + h*0.8, w*0.8, h*0.2);
  
  // Dibujar la banana
  fill(255, 255, 0); // Amarillo
  beginShape();
  vertex(x, y);
  bezierVertex(x - w*0.4, y - h*0.4, x - w*0.7, y + h*0.2, x, y + h*0.9);
  bezierVertex(x + w*0.6, y + h*0.3, x + w*0.9, y - h*2, x, y);
  endShape(CLOSE);
  
  // detalles de la banana
  stroke(255,255,255); 
  strokeWeight(2);
  noFill();
 
  // tallo
  pushMatrix();
  translate(w*0.2, -h*0.3); // Movimiento hacia arriba y hacia la derecha
  fill(139, 69, 19); // Marrón
  beginShape();
  vertex(x + w*0.35, y - h*0.2);
  bezierVertex(x + w*0.35, y - h*0.5, x + w*0.4, y - h*0.6, x + w*0.4, y - h*0.7);
  bezierVertex(x + w*0.4, y - h*0.8, x + w*0.35, y - h*0.8, x + w*0.35, y - h*0.8);
  vertex(x + w*0.35, y - h*0.8);
  bezierVertex(x + w*0.3, y - h*0.8, x + w*0.25, y - h*0.7, x + w*0.25, y - h*0.6);
  endShape(CLOSE);
  popMatrix();
  
  // Detalles
  fill(255); // Blanco
  ellipse(x - w*0.2, y - h*0.3, w*0.3, h*0.3); 
}
