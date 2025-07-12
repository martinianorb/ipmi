//link al video: https://youtu.be/r1KKYPqSrtQ

PImage imagenReferencia;
int cantidadFiguras = 16;
color colorActual;
boolean colorActivado = false;

void setup() {
  size(800, 400);
  rectMode(RADIUS);
  ellipseMode(RADIUS);
  imagenReferencia = loadImage("referencia.jpg");
  elegirColor(); 
}

void draw() {
  background(255);

  if (!colorActivado) {
    PImage imagenGris = imagenReferencia.copy();
    imagenGris.filter(GRAY);
    image(imagenGris, 0, 0, width / 2, height);
    fill(255);
  } else {
    image(imagenReferencia, 0, 0, width / 2, height);
    fill(colorActual);
  }

  noStroke();
  blendMode(DIFFERENCE);

  float centroX = width * 3 / 4;
  float centroY = height / 2;
  float desplazamientoTotal = map(mouseY, 0, height, 0, 110);

  for (int i = 0; i < cantidadFiguras; i++) {
    float radio = map(i, 0.6, cantidadFiguras - 1, 5, width / 5);
    float desplazamientoX = calcularDesplazamientoX(i, cantidadFiguras, desplazamientoTotal); //  función que retorna un valor
    float distancia = dist(mouseX, mouseY, centroX, centroY);
    float desplazamientoY = map(distancia, 0, width, -0.5, 0.5);

    dibujarFiguras(centroX, centroY + desplazamientoY, radio, desplazamientoX); //  función que NO retorna valor
  }

  blendMode(BLEND);

  noStroke();
  fill(255);
  for (int fila = 0; fila < 10; fila++) {
    for (int columna = 0; columna < 10; columna++) {
      ellipse(fila, columna, 1, 1);
    }
  }
}

// Función PROPIA que NO retorna un valor
void dibujarFiguras(float x, float y, float radio, float desplazamientoX) {
  float anchoRectangulo = width / 5.6;
  rect(x, y, anchoRectangulo, radio);

  float anchoElipse = radio * 0.85;
  float altoElipse = radio * 1.08;
  ellipse(x + desplazamientoX, y, anchoElipse, altoElipse);
}

// ✅ Función PROPIA con parámetros que **RETORNA un valor**
float calcularDesplazamientoX(int indice, int total, float desplazamientoTotal) {
  return desplazamientoTotal * (total - 1 - indice) / (float)total;
}

void mousePressed() {
  colorActivado = true;
  elegirColor();
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    colorActivado = false;
  }
}

void elegirColor() {
  colorActual = color(random(255), random(255), random(255));
}
