//Desafio
int miVariable= 1;
 void setup(){
  size(400,400);
  background(255,75,75); 

}
void draw(){
  miVariable= frameCount/2; 
  background(frameCount,75,75);
  fill(255,19,47);
 ellipse(0,400-miVariable,80,120);
 ellipse(frameCount,height/2,50,50);
 ellipse(frameCount,frameCount,50,50);
 ellipse(50,50,frameCount,frameCount);
 fill(frameCount,231,49);
 rect(100,100,300,300);
 rect(100,100,250,250);
 rect(100,100,200,200);
 fill(frameCount,231,49);
 rect(100,100,150,150);
 rect(100,100,100,100);
 rect(100,100,50,50);
 fill(255,255,255);
  textSize(50);
  text("Holaa!",miVariable,200);
  float x = random( width );
float y = random( height );
fill (miVariable,0,90);
textSize (40);
text("Julia", x, y );
  
}
