////https://youtu.be/1sPlm9cVgMI

int [] pantallas = new int [16]; 
PImage [] foto = new PImage [17]; 
int minumero;
int numeroactual;
boolean botonderecho;
boolean botonizquierdo;
void setup(){
size(600,600);
foto[1]=loadImage("inicio.png");
foto[2]=loadImage("escena1.png");
foto[3]=loadImage("escena2.png");
foto[4]=loadImage("escena3.png");
foto[5]=loadImage("escena4.png");
foto[6]=loadImage("escena5.png");
foto[7]=loadImage("escena6.png");
foto[8]=loadImage("escena7.png");
foto[9]=loadImage("escena8.png");
foto[10]=loadImage("escena9.png");
foto[11]=loadImage("escena10.png");
foto[12]=loadImage("escena11.png");
foto[13]=loadImage("escena12.png");
foto[14]=loadImage("arrepentir.png");
foto[15]=loadImage("creditos.png");
foto[16]=loadImage("morir.png");

for(int i=0;i<15;i++){
pantallas[i] =0;

}
}
void draw(){
println(pantallas);
numeroactual=minumero;
println(numeroactual);
println(botonderecho);
println(botonizquierdo);
 if(pantallas[0]==0){ 
   
botonderecho=coordenadasderecho(550,600,550,600);
botonizquierdo=coordenadasizquierdo(0,50,0,50);

  labase("",foto[1]);
 }else if(pantallas[1]==0){
  labase("HABIA UNA VEZ, TRES CERDITOS QUE PLANEABAN VIVIR EN EL BOSQUE..",foto[2]);
botonderecho=coordenadasderecho(550,600,550,600);

 }else if(pantallas[2]==0){
 labase("LOS HERMANOS EMPRENDIERON CAMINO. EL MAYOR LES ADVIERTE A LOS OTROS QUE CONSTRUYAN CASAS FUERTES PARA EVITAR FUTUROS PROBLEMAS..",foto[3]);
botonderecho=coordenadasderecho(550,600,550,600);
botonizquierdo=coordenadasizquierdo(0,50,0,50);
 
 }else if(pantallas[3]==0){
 labase("PERO EL MAS CHICO, COMO ERA UN HOLGAZÁN, SE CONSTRUYO UNA CASA RÁPIDO, HECHA DE PAJA..",foto[4]);
  botonderecho=coordenadasderecho(550,600,550,600);
 
 }else if(pantallas[4]==0){
 labase("DE NOCHE, SE DESPERTÓ CON LA CASA VOLANDOSE, ERA EL LOBO INTENTANDO COMÉRSELO, HABIA TIRADO LA CASA DE UN SOPLIDO!",foto[5]);
 botonderecho=coordenadasderecho(550,600,550,600);
botonizquierdo=coordenadasizquierdo(0,50,0,50);

 }else if(pantallas[5]==0){
 labase("CORRIENDO, FUE A REFUGIARSE A LA CASA DEL HERMANO DEL MEDIO, QUE CON UN POCO MÁS DE ESFUERZO SE CONSTRUYO UNA CASA DE MADERA ¿ESTARÁN A SALVO ALLI?",foto[6]);
 botonderecho=coordenadasderecho(550,600,550,600);
 
 }else if(pantallas[6]==0){
 labase("EL LOBO HABRÍA CONSEGUIDO DESARMAR LA CASA ENTERA APENAS CON UN POCO MAS DE ESFUERZO EN SU SOPLIDO",foto[7]);
 botonderecho=coordenadasderecho(550,600,550,600);
botonizquierdo=coordenadasizquierdo(0,50,0,50);

 }else if(pantallas[7]==0){
 labase("LOS DOS HERMANOS CORRIERON A REFUGIARSE A LA CASA DEL CHANCHITO MAYOR, QUE ERA MUY SABIO, Y CON MUCHO ESFUERZO SE CONSTRUYÓ UNA CASA DE LADRILLOS, A PRUEBA DE SOPLIDOS ¿HABRÍAN CONSEGUIDO ALLI ESTAR A SALVO?",foto[8]);
 botonderecho=coordenadasderecho(550,600,550,600);
 
 }else if(pantallas[8]==0){
 labase("EL LOBO, ASTUTO, DESPUES DE ANALIZAR LA CASA DE LADRILLOS Y DE DARSE CUENTA QUE NO PODRÍA DERRIBARLA DE UN SOPLIDO, TUVO LA GRANDIOSA IDEA DE ENTRAR POR LA CHIMENEA. LOS TRES CHANCHITOS DEBEN ACTUAR RÁPIDO SI QUIEREN SALVARSE",foto[9]);
botonderecho=coordenadasderecho(550,600,550,600);
botonizquierdo=coordenadasizquierdo(0,50,0,50); 
 
 }else if(pantallas[9]==0){
 labase("LOS TRES HERMANOS ACTUARON RAPIDAMENTE Y SE LES OCURRIÓ TENDERLE UNA TRAMPA AL LOBO..",foto[10]);
 botonderecho=coordenadasderecho(550,600,550,600);

 }else if(pantallas[10]==0){
 labase("CON LA HOYA DEBAJO DE LA CHIMENEA LOGRAN QUE EL LOBO CAIGA DENTRO",foto[11]);
 botonderecho=coordenadasderecho(550,600,550,600);

 }else if(pantallas[11]==0){
labase("LOS CHANCHITOS SE VENGARON, EL LOBO SE QUEMÓ TANTO QUE NUNCA MÁS VOLVIÓ A MOLESTAR ",foto[12]);
botonderecho=coordenadasderecho(550,600,550,600);

 
 }else if(pantallas[12]==0){
labase("LOS 3 CERDITOS DECIDIERON VIVIR JUNTOS, Y VIVIERON FELICES PARA SIEMPRE",foto[13]);
botonizquierdo=coordenadasderecho(550,600,550,600);
 
}else if(pantallas[13]==0){
labase("LOS HERMANOS ASUSTADOS DECIDIERON ABANDONAR EL PLAN DE VIVIR EN EL BOSQUE Y VUELVEN CON SU MAMÁ",foto[14]);
botonizquierdo=coordenadasizquierdo(0,50,0,50); 
 
 }else if(pantallas[14]==0){
labase("",foto[15]);
botonizquierdo=coordenadasizquierdo(0,50,0,50); 


}else if(pantallas[15]==0){
labase("EL LOBO VENCIÓ Y AHORA SE PREPARARÁ UNA RICA CENA CON SU PRESA",foto[16]);
 botonizquierdo=coordenadasizquierdo(0,50,0,50); 
 }
}
void mousePressed(){
if(pantallas[0]==0&& botonderecho ){
  for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[1]=0;
}
}
else if(pantallas[0]==0 && botonizquierdo){ 
  for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[14]=0;
}
}
else if(pantallas[1]==0 && botonderecho){ 

  for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[2]=0;
}
}
else if(pantallas[2]==0 && botonderecho){ 
  for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[3]=0;
}
}
else if(pantallas[2]==0 && botonizquierdo){ 
  for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[13]=0;
}
}
else if(pantallas[3]==0 && botonderecho){ 
    for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[4]=0;
}
}
else if(pantallas[4]==0 && botonderecho ){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[5]=0;
}
}
else if(pantallas[4]==0 && botonizquierdo){ 
  for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[15]=0;
}
}
else if(pantallas[5]==0 && botonderecho){ 
   for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[6]=0;
}
}
else if(pantallas[6]==0 && botonderecho){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[7]=0;
}
}else if(pantallas[6]==0 && botonizquierdo){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[15]=0;
}
}
else if(pantallas[7]==0 && botonderecho){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[8]=0;
}
}
else if(pantallas[8]==0 && botonderecho){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[9]=0;
 }
}else if(pantallas[8]==0 && botonizquierdo){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[15]=0;
}
}
else if(pantallas[9]==0 && botonderecho){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[10]=0;
}
}
else if(pantallas[10]==0 && botonderecho){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[11]=0;
}
}
else if(pantallas[11]==0 && botonderecho){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[12]=0;
}
}else if(pantallas[12]==0 && botonizquierdo){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[0]=0;
}
}else if(pantallas[13]==0 && botonizquierdo){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[0]=0;
}
}else if(pantallas[14]==0 && botonizquierdo){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[0]=0;
}
}
else if(pantallas[15]==0 && botonizquierdo){ 
 for(int i=0;i<15;i++){
  pantallas[i]=1;
    pantallas[0]=0;
}
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
 int miposicionx1= posicionx1;
 int miposicionx2= posicionx2;
int  miposiciony1= posiciony1;
int miposiciony2= posiciony2;
 return (mouseX>miposicionx1 && mouseX<miposicionx2 && mouseY >miposiciony1 && mouseY<miposiciony2);
 }
  boolean coordenadasizquierdo(int posicionx1, int posicionx2, int posiciony1, int posiciony2){
 int miposicionx1= posicionx1;
 int miposicionx2= posicionx2;
int  miposiciony1= posiciony1;
int miposiciony2= posiciony2;

 return (mouseX>miposicionx1 && mouseX<miposicionx2 && mouseY >miposiciony1 && mouseY<miposiciony2);
 }
 
 
