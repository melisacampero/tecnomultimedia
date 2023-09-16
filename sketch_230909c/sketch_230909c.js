let estado="inicio";
let balas = [];
let enemigos = [];
let puntaje = 0
let fondo
let bx1=50;
let bx2=200;
let bx3=500;
let by1=280
let by2=300




function preload(){
fondo = loadImage ("./data/fondo.jpg");
}

function setup() {
createCanvas(600, 400)

}
function clic(x, y){
 
  let ok=false;
 
   if(dist(x,y,mouseX,mouseY) < 45){
         ok = true;
         }
 return ok;
}  


function jugar(){
background(51);
rectMode(CENTER);
circle (mouseX, height -50, 25);

// actualizar y dibujar balas
for (let bala of balas) {
  bala.y -= 10;
  circle(bala.x, bala.y, 10);
}
//actualizar y dibujar enemigos
for (let enemigo of enemigos){
  enemigo.y += 2;
  rect(enemigo.x, enemigo.y, 10);
  if (enemigo.y > height){
    noLoop()
  }
}
 
 //colisiones
 for (let enemigo of enemigos){
  for (let bala of balas){
    if (dist(enemigo.x, enemigo.y, bala.x, bala.y) <10){
    //  enemigos.splice(enemigos.indexOF(enemigo), 1);
     // balas.splice(balas.indexOF(bala), 1);
    enemigo.x=random(0,width);
    enemigo.y=random(-800,0);
      let nuevoEnemigo = {
        x: random(0, width),
        y: random(-800,0),
      };
      enemigos.push(nuevoEnemigo);
      puntaje += 1
    }
  }
}
text(puntaje, 15, 25)

   estado = "fin";
  
 }
function draw() {

  if(estado == "inicio"){
    image(fondo,0,0);
    textSize(25);
    fill(255,255,255);
    text ("INICIAR",480,340);
     textSize(20);
    fill(255,255,255);
    text ("Creditos",80,340);
     textSize(20);
    fill(255,255,255);
    text ("Reglas",230,340);
    
  }else
    if(estado == "juego"){
     
      jugar();
     
    } else
    if(estado == "creditos" ){
      background(255,3,9);
      textSize(50);
      text('TP4: MELISA CAMPERO', width/3, height/2);
     
    }else 
    if(estado == "reglas" ){
      background(254,150,247);
        textSize(10);
      text('EL PERSONAJE SE MUEVE CON EL MOVIMIENTO DEL MOUSE', width/3, height/2);
      text('LANZAS BALAS CON EL CLICK', width/3, 250);
    } else
      if(estado == "fin"){
         background(254,150,247);
       textSize(50)
          text("PERDISTE", width/2, height/2)
           textSize(10)
         text ("clic para volver al menú",  width/2, 350);
        
     }         
}
  
function mousePressed() {
  if (estado == "inicio") {
    if (clic(bx3, by1)) {
      estado = "juego";
     {
  //tirar bala
  let bala = {
    x: mouseX,
    y: height -50,
  };
  balas.push(bala);
}
    } else if (clic(bx1, by2)) {
      estado = "creditos";
    }else if (clic(bx2,by2)){
      estado = "reglas";
    } else if (estado == "fin") {
      estado = "inicio";

    }
  }
}
