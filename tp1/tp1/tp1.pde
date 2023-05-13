PImage img1, img2, img3,img4,img5; 

PFont fuente; 
float suma;
float contador;
float temporizadorpantalla;
String estado;
float desaparecer;
float aparecer;
float contador2;
float contador3;
float contador4;
float contador5;
void setup() {
  size(640,480);
  
  

img1=loadImage("voicot1.jpg");

img2=loadImage("voicot2.jpg");

img3=loadImage("voicot3.jpg");

img4=loadImage("voicot4.jpg");

img5=loadImage("voicot5.jpg");

contador5=0;
contador4=0;
  contador3=0;
  contador2=0;
  desaparecer=255;
  aparecer=0;
suma=20;
contador=1;
temporizadorpantalla=0;
estado="uno";
}

void draw() {
  
  if(estado=="uno"){
    println(aparecer);
  aparecer=aparecer+1;
  
  contador=contador+1;
  
    tint(aparecer);
  image(img1,0,0,640,480);
if(contador>300){
estado="dos";
aparecer=255;
}
  }
 
  
     else if(estado=="dos"){
    
    contador2=contador2+1;
    println(contador2);
    
    aparecer=aparecer-5;
    background(0);
  image(img2,0,0,640,480);
  textSize(30);
   fill(0,0,0,aparecer);
  text("¡AMO LOS ANIMALES!",250,430);
 
 
 
 if(contador2>100){
estado="tres";
aparecer=255;
 }
  }else if(estado=="tres"){
    
    aparecer=aparecer-5;
  image(img3,0,0,640,480);
  fill(0,0,0,aparecer);
     text("¡SON HERMOSOS LOS ANIMALES!",100,440);
 
 contador3=contador3+1;
 
 if(contador3>100){
 estado="cuatro";
 aparecer=255;
 }
 
  }else if(estado=="cuatro"){
     aparecer=aparecer-5;
  image(img4,0,0,640,480);
   fill(0,0,0,aparecer);
   text("¡CUIDEMOS LAS VAQUITAS!",100,450);
 contador4=contador4+1;
  if(contador4>100){

estado="cinco";    
  aparecer=0;  
  }
 
}else if(estado=="cinco"){
    
    aparecer=aparecer-5;
  image(img5,0,0,640,480);
   fill(255);
   text("¡VIVA LOS ANIMALES!",180,50);
   text("click en el asado para reiniciar",100,470);
 
 contador5=contador5+1;
 
 if(contador5>100){
 estado="cinco";
 aparecer=0;
 }
 
}

}

void mouseClicked() {
if(estado=="cinco"){
  cursor(HAND);
    if (dist(mouseX, mouseY,270 , 500) <2000) {
      contador4=0;
  contador3=0;
  contador2=0;
  desaparecer=255;
  aparecer=0;
suma=20;
contador=1;
temporizadorpantalla=0;
estado="uno";
    }}
 
}
