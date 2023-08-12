
float angulo;
float cambiar = 0;
PImage laimagen;
void setup() {
size(800,400);
laimagen=loadImage("ilusion.jpeg");

} 




void draw() {
  
  if(detenercirculo()==true){
   
elcirculo();

 }else if(detenercirculo()==false){

cambiar = 0;
  
  }

}
