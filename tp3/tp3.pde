// Link al video: https://youtu.be/l5bw_T8EFas

PImage referencia;
int cant = 15;
color c;
boolean colorActivo = false;

void setup() {
  size(800, 400);
  rectMode(RADIUS);
  ellipseMode(RADIUS);
  referencia = loadImage("referencia.jpg");
  elegirColor(); 
}

void draw() {
  background(0);

  if (!colorActivo) {
    PImage grises = referencia.copy();
    grises.filter(GRAY);
    image(grises, 0, 0, width/2, height);
    fill(255); // blanco
  } else {
    image(referencia, 0, 0, width/2, height);
    fill(c); // color random
  }

  noStroke();
  blendMode(DIFFERENCE);

  for (int i = 0; i <= cant; i++) {
    float radioa = map(log(i == 0 ? 1 : i), 0, log(cant), width / 4, 1); 
    float radiob = map(i*i, 0, cant*cant, width / 4, 20);
    float radio = map(mouseY, 0, height, radioa, radiob);

    float cx = width * 3/4; 
    float cy = height / 2;

    rect(cx, cy, width / 4, radio);
    ellipse(cx, cy, radio, radio);
  }
}

void mousePressed() {
  colorActivo = true; // activa color al primer clic
  elegirColor();      // cambia a un color random
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    colorActivo = false; // vuelve al modo blanco y negro
  }
}

void elegirColor() {
  c = color(random(255), random(255), random(255));
}
