// FIGURA

class figura {

 //Propiedades 
//Posición, forma, tamaño/escala 
int x;
int y;
float anc;
color c;


//Constructor
//Parámetros para definir el tamaño 
//forma geometrica que va a ser

figura(color c_,int x_,int y_, int anc_){
x=x_;
y=y_;
anc=anc_;
c=c_;}


 //Métodos
void figurafija(){
  fill(c);
  rect(x,y,anc,anc);
}}
