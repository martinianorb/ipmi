//tp2
//Martiniano Rodriguez
//legajo:95529/0
//Comision 5
int estado = 0;
int segundos = 0;
PImage Portada;
PImage Saga;
PImage JK;
PImage flecha;
PFont l;
float py = 0;
float px = 0;
float opacidad = 255;
float vel = 1;

void setup() {
  size(640, 480);
  textSize(40);
  textAlign(CENTER);
  Portada = loadImage("Harry Potter y la piedra filosofal.jpg");
  Saga = loadImage("Saga.jpg");
  JK = loadImage("JK.jpg");
  flecha = loadImage("flecha.jpg");
  l = loadFont("Mifuente.vlw");
  textFont(l, 25);
}

void draw() {
  text(segundos, width/2, 300);
  
  // Incrementar segundos cada segundo
  if (frameCount % 60 == 0) {
    segundos++;
  }

  // Calcular la opacidad
  opacidad = py * 255 / height;

  // Reducir la velocidad cada segundo
  if (frameCount % 60 == 0) {
    vel = vel - 0.01;
    ellipse(100, 100, 600, 430);
  }

  // Actualizar el estado basado en los segundos
  if (segundos <= 8) {
    estado = 0;
  } else if (segundos > 8 && segundos <= 20) {
    estado = 1;
  } else {
    estado = 2;
  }

  // Mostrar las imágenes y textos según el estado
  if (estado == 0) {
    image(Portada, 0, 0, width, height);
    textSize(30);
    fill(0);
    text("Este es el primer libro de la saga", width/2, py);
    if (py < 80) {
      py = py + 0.5 * vel;
    }
  } else if (estado == 1) {
    image(Saga, 0, 0, width, height);
    textSize(25);
    fill(0, 0, 0);
    text("La saga de Harry Potter cuenta con siete libros", width/2, py);
    if (py < 150) {
      py = py + 0.2 * vel;
    }
  } else if (estado == 2) {
    image(JK, 0, 0, width, height);
    textSize(30);
    fill(0);
    text("JK ROWLING es la escritora de la saga", width/2, py);
    if (py < 200) {
      py = py + 0.1 * vel;
      fill(255);
      ellipse(600, 450, 50, 50);
      fill(0);
      text("R", 600, 460);
      flecha.resize(30, 30);
      image(flecha, 520, 435);
    }
  }
}

void mousePressed() {
  // Verificar si el clic está dentro del área sensible
  if (mouseX >= 570 && mouseX <= 620 && mouseY >= 420 && mouseY <= 470) {
    segundos = 0;
    estado = 0;
    py = 0;
  }
}
