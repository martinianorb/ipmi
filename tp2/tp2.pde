int estado = 0;
int segundos = 0;
PImage onepice;
PImage tematica;
PImage luffy;
float py = 0;
float px = 0;
float opacidad = 255;
float vel = 1;

void setup() {
  size(640, 480);
  textSize(40);
  textAlign(CENTER);
  onepice = loadImage("onepiece.jpg");
  onepice.resize(width, height);

  tematica = loadImage("tematica.jpg");
  tematica.resize(width, height);

  luffy = loadImage("luffy.jpg");
  luffy.resize(width, height);

}

void draw() {
  background(255);  

  text(segundos, width/2, 30);


  if (frameCount % 60 == 0) {
    segundos++;
  }


  int nuevoEstado;
  if (segundos <= 8) {
    nuevoEstado = 0;
  } else if (segundos > 8 && segundos <= 20) {
    nuevoEstado = 1;
  } else {
    nuevoEstado = 2;
  }


  if (nuevoEstado != estado) {
    estado = nuevoEstado;
    py = 0;
  }

 
  if (estado == 0) {
    image(onepice, 0, 0);
    textSize(30);
    fill(0);
    text("Este anime se llama One Piece", width/2, py);
    if (py < 80) {
      py = py + 0.5 * vel;
    }
  }

  if (estado == 1) {
    image(tematica, 0, 0);
    textSize(25);
    fill(0);
    text("La obra narra las aventuras de Monkey D. Luffy y su tripulación", width/2, py);
    if (py < 150) {
      py = py + 0.2 * vel;
    }
  }

  if (estado == 2) {
    image(luffy, 0, 0);
    textSize(30);
    fill(255);
    text("El personaje principal se llama Luffy", width/2, py);
    if (py < 200) {
      py = py + 0.1 * vel;
    }

    // Mostrar botón de reset
    fill(255);
    ellipse(600, 450, 50, 50);
    fill(0);
    text("R", 600, 460);
   
  }
}

void mousePressed() {
  float d = dist(mouseX, mouseY, 600, 450);
  if (d < 25) {
    segundos = 0;
    estado = 0;
    py = 0;
  }
}
