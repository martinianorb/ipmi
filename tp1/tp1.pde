PImage img;

void setup() {
  size(800, 400);
  img = loadImage("luperca.jpg"); 
  img.resize(400, 400); 
}

void draw() {
  background(220);

 
  image(img, 0, 0);

  // Orejas con sombra
  fill(80, 80, 80, 150); 
  triangle(490, 240, 500, 190, 510, 240);
  triangle(520, 240, 530, 190, 540, 240);

  // Base
  fill(140, 120, 100);
  rect(420, 350, 360, 30, 10);
  
  // Detalles base
  stroke(120, 100, 80);
  line(430, 355, 770, 355);
  line(430, 365, 770, 365);
  noStroke();

  // Cola
  fill(90);
  rect(690, 250, 60, 10); 

  // Patas loba
  fill(70, 70, 70, 150); 
  rect(540, 300, 10, 50); 
  rect(570, 300, 10, 50); 
  rect(630, 300, 10, 50); 
  rect(660, 300, 10, 50); 

  // Textura patas
  stroke(60);
  line(543, 310, 543, 330);
  line(633, 310, 633, 330);
  noStroke();

  // Cuerpo loba
  fill(90);
  ellipse(600, 260, 200, 100); 
  ellipse(520, 250, 60, 60); 

  // Ojos loba
  fill(255);
  ellipse(510, 235, 8, 8);
  ellipse(530, 235, 8, 8);
  fill(0);
  ellipse(510, 235, 3, 3);
  ellipse(530, 235, 3, 3);

  // Hocico y boca loba
  fill(70);
  ellipse(500, 245, 25, 15);  
  fill(0);
  ellipse(520, 260, 20, 4); 

  // Mamas
  fill(80); 
  ellipse(560, 310, 5, 10);
  ellipse(580, 310, 5, 10);
  ellipse(600, 310, 5, 10);
  ellipse(620, 310, 5, 10);
  ellipse(640, 310, 5, 10);

  // Niño 1 (parado)
  fill(255, 220, 180); 
  ellipse(560, 320, 20, 20); // cabeza 
  ellipse(560, 340, 25, 30); // torso
  ellipse(550, 360, 10, 20); // pierna 
  ellipse(570, 360, 10, 20); // pierna
  ellipse(545, 330, 8, 20); // brazo 
  ellipse(575, 330, 8, 20); // brazo 

  // Detalles niño 1
  fill(0);
  ellipse(555, 320, 3, 3); // ojo izq
  ellipse(565, 320, 3, 3); 
  fill(90, 70, 50);
  ellipse(560, 325, 2, 2); 
  fill(0);
  ellipse(560, 330, 4, 2); 

  // Niño 2 (sentado)
  fill(255, 220, 180); 
  ellipse(610, 320, 20, 20); // cabeza
  ellipse(610, 340, 25, 30); // torso vertical
  ellipse(600, 360, 10, 15); // pierna izquierda estirada
  ellipse(620, 360, 10, 15); // pierna derecha estirada
  ellipse(595, 335, 8, 15); // brazo izquierdo relajado
  ellipse(625, 335, 8, 15); // brazo derecho relajado

  // Detalles niño 2
  fill(0);
  ellipse(605, 320, 3, 3); 
  ellipse(615, 320, 3, 3); 
  fill(90, 70, 50);
  ellipse(610, 325, 2, 2); 
  fill(0);
  ellipse(610, 330, 4, 2); 

  // Sombras niños
  fill(50, 50, 50, 50);
  ellipse(560, 365, 30, 8);
  ellipse(610, 370, 30, 8);
}
