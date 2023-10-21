let elPersonaje;
let elJuego;
let pantalla = 0;

function preload() {
  cerdito = loadImage('data/cerdo2.png');
  fondo = loadImage('data/fondo.jpg');
  casa1 = loadImage('data/casa.png');
  instrucciones = loadImage('data/instrucciones.jpg');
  lobo = loadImage('data/lobo.png');
  tallo = loadImage('data/tallo.png');
}

function setup() {
  createCanvas(600, 600);
  fuente = loadFont('data/Nunito.ttf');
  textFont(fuente);
  elJuego = new Juego();
}

function draw() {
  background(220);
  if (pantalla == 0) {
    image(instrucciones, 0, 0);
    elJuego.juegoSetUp();
  }
  else if (pantalla == 1) {
    elJuego.juegoEventos();
    elJuego.dibujar();
    if (elJuego.perdiste) {
      pantalla = 3;
    }
    else if (elJuego.ganaste) {
      pantalla = 2;
    }
  }
  else if (pantalla == 2) {
    image(fondo, 0, 0);
    fill(0, 255, 0, 30);
    rect(0, 0, width, height);
    textSize(32);
    fill(255);
    textAlign(CENTER);
    text("GANASTE", width/2,height/2);
    text("VUELVE", 300, 427);
  }
  else if (pantalla == 3) {
    image(fondo, 0, 0);
    fill(255, 0, 0, 30);
    rect(0, 0, width, height);
    textSize(32);
    fill(255);
    textAlign(CENTER);
    text("PERDISTE", width/2,height/2);
    text("VUELVE", 300, 427);
  }

}

function mousePressed() {
  if (pantalla == 0) {
    if (mouseX >= 250 && mouseX <= 350 && mouseY >= 410 && mouseY <= 450) {
      pantalla = 1;
    }
  }
  else if (pantalla == 2) {
    if (mouseX >= 250 && mouseX <= 350 && mouseY >= 410 && mouseY <= 450) {
      pantalla = 0;
    }
  }
  else if (pantalla == 3) {
    if (mouseX >= 250 && mouseX <= 350 && mouseY >= 410 && mouseY <= 450) {
      pantalla = 0;
    }
  }
}
