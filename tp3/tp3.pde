https://youtu.be/ziUvhmIs9s8

PImage [] foto = new PImage [17]; 
int minumero;
int numeroactual;
boolean botonderecho;
boolean botonizquierdo;
void setup(){
size(600,600);

for(int i=0;i<16;i++){
 
foto[i]=loadImage("escena"+i+".png");
}
}
void draw(){
numeroactual=minumero;
println(numeroactual);
println(botonderecho);
println(botonizquierdo);
 if(numeroactual==0){ 
   
botonderecho=coordenadasderecho(550,600,550,600);
botonizquierdo=coordenadasderecho(0,50,0,50);

  labase("",foto[1]);
 }else if(numeroactual==1){
  labase("HABIA UNA VEZ, TRES CERDITOS QUE PLANEABAN VIVIR EN EL BOSQUE..",foto[2]);
botonderecho=coordenadasderecho(550,600,550,600);

 }else if(numeroactual==2){
 labase("LOS HERMANOS EMPRENDIERON CAMINO. EL MAYOR LES ADVIERTE A LOS OTROS QUE CONSTRUYAN CASAS FUERTES PARA EVITAR FUTUROS PROBLEMAS..",foto[3]);
botonderecho=coordenadasderecho(550,600,550,600);
botonizquierdo=coordenadasderecho(0,50,0,50);
 
 }else if(numeroactual==3){
 labase("PERO EL MAS CHICO, COMO ERA UN HOLGAZÁN, SE CONSTRUYO UNA CASA RÁPIDO, HECHA DE PAJA..",foto[4]);
  botonderecho=coordenadasderecho(550,600,550,600);
 
 }else if(numeroactual==4){
 labase("DE NOCHE, SE DESPERTÓ CON LA CASA VOLANDOSE, ERA EL LOBO INTENTANDO COMÉRSELO, HABIA TIRADO LA CASA DE UN SOPLIDO!",foto[5]);
 botonderecho=coordenadasderecho(550,600,550,600);
botonizquierdo=coordenadasderecho(0,50,0,50);

 }else if(numeroactual==5){
 labase("CORRIENDO, FUE A REFUGIARSE A LA CASA DEL HERMANO DEL MEDIO, QUE CON UN POCO MÁS DE ESFUERZO SE CONSTRUYO UNA CASA DE MADERA ¿ESTARÁN A SALVO ALLI?",foto[6]);
 botonderecho=coordenadasderecho(550,600,550,600);
 
 }else if(numeroactual==6){
 labase("EL LOBO HABRÍA CONSEGUIDO DESARMAR LA CASA ENTERA APENAS CON UN POCO MAS DE ESFUERZO EN SU SOPLIDO",foto[7]);
 botonderecho=coordenadasderecho(550,600,550,600);
botonizquierdo=coordenadasderecho(0,50,0,50);

 }else if(numeroactual==7){
 labase("LOS DOS HERMANOS CORRIERON A REFUGIARSE A LA CASA DEL CHANCHITO MAYOR, QUE ERA MUY SABIO, Y CON MUCHO ESFUERZO SE CONSTRUYÓ UNA CASA DE LADRILLOS, A PRUEBA DE SOPLIDOS ¿HABRÍAN CONSEGUIDO ALLI ESTAR A SALVO?",foto[8]);
 botonderecho=coordenadasderecho(550,600,550,600);
 
 }else if(numeroactual==8){
 labase("EL LOBO, ASTUTO, DESPUES DE ANALIZAR LA CASA DE LADRILLOS Y DE DARSE CUENTA QUE NO PODRÍA DERRIBARLA DE UN SOPLIDO, TUVO LA GRANDIOSA IDEA DE ENTRAR POR LA CHIMENEA. LOS TRES CHANCHITOS DEBEN ACTUAR RÁPIDO SI QUIEREN SALVARSE",foto[9]);
botonderecho=coordenadasderecho(550,600,550,600);
botonizquierdo=coordenadasderecho(0,50,0,50); 
 
 }else if(numeroactual==9){
 labase("LOS TRES HERMANOS ACTUARON RAPIDAMENTE Y SE LES OCURRIÓ TENDERLE UNA TRAMPA AL LOBO..",foto[10]);
 botonderecho=coordenadasderecho(550,600,550,600);

 }else if(numeroactual==10){
 labase("CON LA HOYA DEBAJO DE LA CHIMENEA LOGRAN QUE EL LOBO CAIGA DENTRO",foto[11]);
 botonderecho=coordenadasderecho(550,600,550,600);

 }else if(numeroactual==11){
labase("LOS CHANCHITOS SE VENGARON, EL LOBO SE QUEMÓ TANTO QUE NUNCA MÁS VOLVIÓ A MOLESTAR ",foto[12]);
botonderecho=coordenadasderecho(550,600,550,600);

 
 }else if(numeroactual==12){
labase("LOS 3 CERDITOS DECIDIERON VIVIR JUNTOS, Y VIVIERON FELICES PARA SIEMPRE",foto[13]);
botonizquierdo=coordenadasderecho(550,600,550,600);
 
}else if(numeroactual==13){
labase("LOS HERMANOS ASUSTADOS DECIDIERON ABANDONAR EL PLAN DE VIVIR EN EL BOSQUE Y VUELVEN CON SU MAMÁ",foto[14]);
botonizquierdo=coordenadasderecho(0,50,0,50); 
 
 }else if(numeroactual==14){
labase("",foto[15]);
botonizquierdo=coordenadasderecho(0,50,0,50); 


}else if(numeroactual==15){
labase("EL LOBO VENCIÓ Y AHORA SE PREPARARÁ UNA RICA CENA CON SU PRESA",foto[16]);
 botonizquierdo=coordenadasderecho(0,50,0,50); 
 }
}
void mousePressed(){
if(numeroactual==0&& botonderecho ){
minumero=1;

}
else if(numeroactual==0 && botonizquierdo){ 
  minumero=14;

}
else if(numeroactual==1 && botonderecho){ 
  minumero=2;

}else if(numeroactual==2 && botonderecho){ 
  minumero=3;

}else if(numeroactual==2 && botonizquierdo){ 
  minumero=13;

}else if(numeroactual==3 && botonderecho){ 
  minumero=4;

}else if(numeroactual==4 && botonderecho){ 
  minumero=5;

}else if(numeroactual==4 && botonizquierdo){ 
  minumero=15;

}
else if(numeroactual==5 && botonderecho){ 
  minumero=6;

}
else if(numeroactual==6 && botonderecho){ 
  minumero=7;

}
else if(numeroactual==6 && botonizquierdo){ 
  minumero=15;

}
else if(numeroactual==7 && botonderecho){ 
  minumero=8;

}

else if(numeroactual==8 && botonderecho){ 
  minumero=9;

}

else if(numeroactual==8 && botonizquierdo){ 
  minumero=15;

}

else if(numeroactual==9 && botonderecho){ 
  minumero=10;

}

else if(numeroactual==10 && botonderecho){ 
  minumero=11;

}


else if(numeroactual==11 && botonderecho){ 
  minumero=12;

}



else if(numeroactual==12 && botonizquierdo){ 
  minumero=0;

}



else if(numeroactual==13 && botonizquierdo){ 
  minumero=0;

}



else if(numeroactual==14 && botonizquierdo){ 
  minumero=0;

}



else if(numeroactual==15 && botonizquierdo){ 
  minumero=0;

}




}
void labase(String mitexto, PImage lafoto){
   String eltexto=mitexto;
  PImage mifoto= lafoto;
  image(mifoto,0,0,600,600);
 textSize(20);
 fill(0);
 text(eltexto,150,50,300,300);
 }
 boolean coordenadasderecho(int posicionx1, int posicionx2, int posiciony1, int posiciony2){
 
 return (mouseX>posicionx1 && mouseX<posicionx2 && mouseY >posiciony1 && mouseY<posiciony2);
 }
