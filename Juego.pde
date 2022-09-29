//Juego
//figura cuadrado;
//Propiedades 
//fondo, Posición, tamaño/escala
class juego{
  
  boolean triangulo1;
  boolean triangulo2;
  figura cuadrado;
  formasdepuzzle triangulo;
  int posXCuadrado=270;
  int posYCuadrado=100;
  int posYTriangulos=450;
  int posXTriangulouno=30;
  int ancFigura=250;
  

 juego(){

 cuadrado=new figura(color(0),posXCuadrado, posYCuadrado,ancFigura);
 triangulo=new formasdepuzzle(color(255,0,0),posXTriangulouno,posYTriangulos);
 
}

//Constructor
//Parámetros para definir el tamaño 
//Posición en la pantalla
//forma geometrica que va a ser
//texto que se va a presentar
//Figura; ( seria como el objetivo a realizar)
//Formas de puzzle A, B;

 //Métodos
//void arrancarjuego(){
  

void comenzarJuego(){
  cuadrado.figurafija();
  triangulo1= triangulo. triangulouno(posXCuadrado,posYCuadrado);
  triangulo2= triangulo.triangulodos(posXCuadrado,posYCuadrado);
  fill(0);
     textSize(30);
     text("¡PUZZLE!",335,40);
  
}}
