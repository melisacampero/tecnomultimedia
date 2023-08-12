
void elcirculo(){

background(random(0,100),random(0,200),20);;

  image(laimagen,50,50,300,300);  
  translate(550,height/2);

  noStroke();



  

for(float i=2;i<810.5;i++){
  angulo=0.016000307;

    if (cambiar%8 == 0){
    fill(255);
  }else if (cambiar%8 == 4){
    fill(0);
  }else if (cambiar%8 == 1){
    fill(210, 210, 0);
  }else if (cambiar%8 == 5){
    fill(50, 50, 255);
  }else{
    noFill();
  }

  rotate(angulo);   
  cambiar=cambiar+1;
  ellipse(150,0, 45,49);
}

for(float i=2;i<410.5;i++){
  angulo=0.031000307;
   if (cambiar%8 == 0){
    fill(255);
  }else if (cambiar%8 == 4){
    fill(0);
  }else if (cambiar%8 == 1){
    fill(210, 210, 0);
  }else if (cambiar%8 == 5){
    fill(50, 50, 255);
  }else{
    noFill();
  }
  rotate(-angulo);   
  cambiar=cambiar+1;
  ellipse(80,0, 45,49);
} 
 
  noStroke();
  
  





}
