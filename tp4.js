let estado = "inicio";

let balaY = [];
let balaX = [];
let enemigoY = [];
let enemigoX = [];
let puntaje = 0
let fondo;

function preload() {
  fondo = loadImage("./data/fondo.jpg");
}

function setup() {
  createCanvas(600, 400)
  for (let i = 0; i < 5; i++) {
    enemigoX[i] = random(0, width);
    enemigoY[i] = random(-800, 0);
  }
}

function juegoSetUp() {
  balaY = [];
  balaX = [];
  enemigoY = [];
  enemigoX = [];
  puntaje = 0;
  for (let i = 0; i < 5; i++) {
    enemigoX[i] = random(0, width);
    enemigoY[i] = random(-800, 0);
  }
}

function clic(x, y) {

  let ok = false;

  if (dist(x, y, mouseX, mouseY) < 145) {
    ok = true;
  }
  return ok;
}


function jugar() {
  background(51);
  rectMode(CENTER);
  circle(mouseX, height - 50, 25);


  for (let index = 0; index < balaX.length; index++) {
    balaY[index] -= 10;
    circle(balaX[index], balaY[index], 10);
  }

  for (let index = 0; index < enemigoX.length; index++) {
    enemigoY[index] += 2;
    rect(enemigoX[index], enemigoY[index], 10);
    if (enemigoY[index] > height) {
      text("PERDISTE", width / 2, height / 2)
      estado = "fin";
    }
    if (estado == "fin") {
    }
  }

  //colisiones
  for (let index = 0; index < enemigoX.length; index++) {
    for (let i = 0; i < balaX.length; i++) {


      if (dist(enemigoX[index], enemigoY[index], balaX[i], balaY[i]) < 10) {

        enemigoX[index] = random(0, width);
        enemigoY[index] = random(-800, 0);

        puntaje += 1

        if (puntaje > 10) {
          estado = "ganaste";
        }
      }
    }

    if (estado == "fin") {

      enemigoX[index] = random(0, width);
      enemigoY[index] = random(-800, 0);
    }

  }
  text(puntaje, 15, 25)

}
function draw() {

  if (estado == "inicio") {

    image(fondo, 0, 0, 600, 400);
    textSize(25);
    fill(255, 255, 255);
    text("INICIAR", 480, 340);
    textSize(20);
    fill(255, 255, 255);
    text("Creditos", 80, 340);
    textSize(20);
    fill(255, 255, 255);
    text("Reglas", 230, 340);
    // reiniciar juego
    juegoSetUp();
  }
  else if (estado == "juego") {

    jugar();

  }
  else if (estado == "creditos") {
    background(255, 3, 9);
    textSize();
    text('TP4: MELISA CAMPERO', width / 3, height / 2);
    textSize(12);
    text('menú', 500, 300);

  }
  else if (estado == "reglas") {
    background(254, 150, 247);
    textSize(10);
    text('EL PERSONAJE SE MUEVE CON EL MOVIMIENTO DEL MOUSE', width / 3, height / 2);
    text('LANZAS BALAS CON EL CLICK', width / 3, 250);
    textSize(12);
    text('menú', 500, 300);

  }
  else if (estado == "fin") {
    background(254, 150, 247);
    textSize(50)
    text("PERDISTE", width / 2, height / 2)
    textSize(10)
    text("MENÚ", 500, 300);
  }
  else if (estado == "ganaste") {
    background(254, 150, 150);
    textSize(50)
    text("GANASTE", width / 2, height / 2)
    textSize(10)
    text("MENÚ", 500, 300);
  }
}

function mousePressed() {
  if (estado == "juego") {

    //tirar bala
    balaX.push(mouseX);
    balaY.push(height - 50);
  }

  if (estado == "inicio") {
    if (clic(480, 340)) {
      estado = "juego";

    } else if (clic(80, 340)) {
      estado = "creditos";
    } else if (clic(230, 340)) {
      estado = "reglas";
    }
  } else if (estado == "creditos") {
    if (clic(500, 300)) {
      estado = "inicio";
    }
  }
  else if (estado == "reglas") {
    if (clic(500, 300)) {
      estado = "inicio";
    }
  }
  else if (estado == "fin") {
    if (clic(500, 300)) {
      estado = "inicio";
    }
  }
  else if (estado == "ganaste") {
    if (clic(500, 300)) {
      estado = "inicio";
    }
  }

}
