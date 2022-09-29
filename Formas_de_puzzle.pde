// FORMAS DE PUZZLE
class formasdepuzzle{
  //Propiedades 
//Cantidad,Posición, forma, tamaño/escala y color
  color r;
  boolean manipularuno=false;
  boolean manipulardos=false;
  int xformauno;
  int xformados;
  int yformauno;
  int yformados;
  int anc;
  boolean estoydentrouno=false;
  boolean estoydentrodos=false;
 
//Constructor
//Parámetros para definir el tamaño, las 2 tendrán el mismo tamaño pero distintas formas para completar la forma 
//Posición en la pantalla, por debajo del centro de la pantalla
//Color: al juntarlas de forma correcta se pondrán del mismo.
formasdepuzzle(color r_,int x_,int y_){
  r=r_;
  xformauno=x_;
  xformados=x_+400;
  yformauno=y_;
  yformados=y_;
 
}

 //Métodos
 boolean triangulouno(int xCuadrado, int yCuadrado){
   fill(r);
   int posIniX= xformauno;
   int posIniY=yformauno;
   int punto2X=posIniX;
   int punto2Y=posIniY+250;
   int punto3X=posIniX+250;
   int punto3Y= punto2Y;
   if(mouseX<400&&mouseY>400){
     fill(0,255,0);
     if(mousePressed==true){
       manipularuno= true;}
   }else{ 
     fill(r);
   }
   if(manipularuno==true&&mousePressed==true){
     xformauno= mouseX;
     yformauno= mouseY;
     if(mouseX>(xCuadrado-2)&&mouseX<(xCuadrado+2)&&mouseY>(yCuadrado-2)&&mouseY<(yCuadrado+2)){
       fill(0,0,255);}
   }
   if(mouseY<400&&mousePressed==false&&mouseX>400){
     manipularuno=false;
   }
    triangle(posIniX,posIniY,punto2X,punto2Y,punto3X,punto3Y);
    if(xformauno>265&&xformauno<275&&yformauno>95&&yformauno<105&&mousePressed==false){
      estoydentrouno=true;
      return true;
    }
     return false;
 }
 boolean triangulodos(int xCuadrado, int yCuadrado){
   fill(r);
   int posIniX=xformados;
   int posIniY=yformados;
   int punto2X=posIniX+250;
   int punto2Y=posIniY;
   int punto3X=punto2X;
   int punto3Y=punto2Y+250;
   if(mouseX>400&&mouseY>400){
     fill(0,255,0);
     if(mousePressed){
       manipulardos=true;
     }
   }else{
     fill(r);}
     if(manipulardos&&mousePressed){
       xformados= mouseX;
       yformados= mouseY;
       if(mouseX>(xCuadrado-2)&&mouseX<(xCuadrado+2)&&mouseY>(yCuadrado-2)&&mouseY<(yCuadrado+2));
       { fill(0,0,255);
       }
     }
     if(mouseY<400&&mousePressed==false){
       manipulardos=false;
     }
     triangle(posIniX,posIniY,punto2X,punto2Y,punto3X,punto3Y);
     if(xformados>265&&xformados<275&&yformados>95&&yformados<105&&mousePressed==false)
     {
       estoydentrodos=true;
       return true;
     }
     return false;
 }}
