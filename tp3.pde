//https://youtu.be/LppbxUCWsyk
//Codigo
String N;
String estado;
PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PFont L;
int contadordeTiempo;
int contadordeClick;
int click=10;
int cant=2;
int tam;
int pos;
String []miarreglo=new String[3];
int r;
int m;
void setup(){
  size(600,600);
  background(0);
  //contadordeTiempo=0;
    contadordeClick=0;
    contadordeTiempo=0;
  textSize(24);
  textAlign(CENTER,CENTER);
  estado="inicio";
   img=loadImage("istockphoto-1290539971-612x612.jpg");
   img2=loadImage("istockphoto-1290539971-612x612 - copia.jpg");
   img3=loadImage("istockphoto-1290539971-612x612 - copia.jpg");
   img4=loadImage("perspectiva-cuadricula-blanco-negro-fondo-estructura-metalica-ajedrez-modelo-tecnologia-digital-cyber-box-plantilla-ilusion-abstracta-vector_356415-1140.jpg");
   img5=loadImage("Sin título.jpg");
   img6=loadImage("istockphoto-1249638308-612x612.jpg");
   L=loadFont("Algerian-48.vlw");
    textFont(L);
    tam=width/cant;
    miarreglo[0]=("black square");
    miarreglo[1]=("Comienza a jugar!");
    miarreglo[2]= ("presiona la elipse para jugar");
   r=80;
   m=50;
}

void draw(){
if(estado=="inicio"){
  background(0);
  image(img,0,140);
  image(img2,0,0);
  image(img3,0,460);
  cuadrado();
   fill(255);
    textSize(60);
    text(miarreglo[0],310,100);
    fill(227,197,27);
    textSize(25);
    text(miarreglo[1],310,140);
    fill(255);
    text(miarreglo[2],310,470);
    fill(255);
    if(dist(mouseX,mouseY,width/2,height/2+100)<=25){
    fill(0);
    }else{
  fill(165,0,232);
  ellipse(width/2,height/2+100,90,70);
  fill(255);
  textSize(40);
    text(">",300,395);
  }}}
    
    void mouseClicked(){
      if(dist(mouseX,mouseY,width/2,height/2+100)<=25){
        estado="instrucciones";
if(estado=="instrucciones"){
background(0);
            fill(255);
            image(img5,0,140);
            image(img2,0,0);
            image(img3,0,460);
            textSize(40);
            textAlign(40);
            fill(227,197,27);
            text("INTRUCCIONES",150,140);
            fill(255);
            textSize(30);
            text("Como jugar: \n\nPara lograr \nel objetivo\ntenes que cliclearn \n30 veces el cuadrado \nque aparece \nen la pantalla\npara poder ganar!",150,220);
            fill(227,197,27);
            textSize(17);
            text("presionar la barra espaciadora\n y cliclear a la vez\npara comenzar a jugar",150,530);}}
          
           if(estado=="juego"){
           background(0);
           image(img4,-150,-80);
             fill(0);
            rect(150,160,190,190);
          }}
            void mousePressed(){
               if(estado=="juego"){
                 if(mouseX>150 && mouseX< 150+200 && mouseY>150 && mouseY<150+200)
                 println(contadordeClick);
                 contadordeClick+=1;
             if(contadordeClick==click);
              fill(0);
          rect(150,160,190,190);
        }
        if (contadordeClick==30){
          estado="ganar";
           
                       
             if( estado.equals("ganar") ){
    background( 255 );
    image(img6,0,0);
    fill(200,0,0);
  text("Para volver a comenzar\n tocar la barra\nespaciadora",50,500);
fill(0);
text("Para ir a los creditos \ncliclear y presionar\na la vez la letra C",350,500);}
    
    
      if(estado.equals("ganar")&& key=='c'){
             estado="creditos";
    if(estado=="creditos"){
      background(0);
            fill(255);
            textSize(30);
            text("Creditos:\n\nTECNO MULTIMEDIAL 1\nTrabajo practico N 3\nAlumna:\nJulia Gimenez\n Legajo:91391/1",10,80);
            fill(165,0,232);
            text("\n Profesor:\n Matias\n Jauregui Lorda\n Comision 2\n\n Gracias\n por jugar!",300,370);           
    float relleno=map(mouseX, 0, width, 0, 255);
             {
             pos++;
             {
            fill(0, relleno, 0);
            {
            for (int x=0; x<cant; x++) {
            for (int y=0; y<cant; y++) {
            if ((x+y)%2==0) {
             fill(0);
            } else {
            fill(165,0,232);
            rect(x*tam, y*tam, tam,tam);
            }}}}}}}}}}
         void keyPressed(){
          if(estado.equals("instrucciones")&& key==' '){
          estado="juego";} 
           reiniciar();     
       }
          void reiniciar(){  
             if (estado.equals("ganar")&&key==' '){
             estado="inicio";
             contadordeClick=0;
         }
 }
  void cuadrado(){
    if (estado.equals("inicio")){
   fill(165,0,232);
   stroke(227,197,27);
   strokeWeight(3);
   rect(r,m,460,120);
 
    }
    // agregue arreglos y tambien una funcion propia, pero no pude acomodar lo de perder, intente varias formas y el tiempo no corre
          //contadordeTiempo++;
           //  println( contadordeTiempo );
    //println( contadordeTiempo/60 );}
        // else if(contadordeTiempo>=5*60){
          // estado="perder";
             
          //             
             //if(estado==("perder")){
              // background(255);}}
             
           
         
      // }
     
    
    }
