// Trabajo practico 1
// secuencia de creditos de Videojuego
float x=700.0;
color relleno;
PImage imagenTetris;
void setup(){
  size (400,600);
 background(0);
  PFont font; 
  font = loadFont("Algerian-48.vlw"); 
 textFont(font);
fill(214,199,30);
textSize(70);
relleno= color(0);
imagenTetris= loadImage("Tetris.png");

}

void draw(){
 if(mousePressed== true){
   background(0);
    fill(250,43,35);
    rect(mouseX,mouseY,50,45);
 }
{
  image(imagenTetris,75,50,250,200);
  if(key==' '){
    background(0);
  }

  //bordes
  fill(108,105,105);
 rect(0,575,400,200);
 rect(0,0,600,25);
 rect(0,0,25,600);
rect(370,0,50,600);
 // rectangulos y cuadrados de colores
 fill(250,43,35);
rect(25,550,100,25);
fill(35,244,250);
square(25,500,50);
fill(250,35,215);
rect(75,490,25,60);
rect(25,490,76,25);
fill(70,250,35);
square(100,490,60);
fill(35,54,250);
rect(125,550,60,25);
 rect(160,490,25,60);
 fill(252,117,25);
rect(50,465,100,25);
rect(87,405,25,60);
fill(252,234,25);
rect(25,440,25,50);
rect(50,440,37,25);
fill(250,43,35);
square(25,380,62);
fill(250,35,215);
rect(185,490,25,85);
fill(35,244,250);
rect(140,465,40,25);
fill(193,54,222);
rect(180,465,30,25);
rect(210,435,25,85);
fill(252,234,25);
rect(210,390,25,50);
rect(185,415,25,50);
fill(100,490,60);
rect(160,390,50,25);
rect(160,415,25,50);
fill(250,43,35);
rect(137,380,25,85);
fill(250,35,215);
rect(112,380,25,85);
fill(35,54,250);
rect(87,320,25,90);
rect(112,355,50,25);
fill(252,117,25);
rect(210,520,25,55);
rect(235,550,55,25);
fill(35,244,250);
rect(235,525,55,25);
rect(265,495,25,55);
rect(265,495,50,30);
fill(252,234,25);
square(290,520,55);
fill(250,35,215);
rect(315,495,55,25);
rect(345,520,25,55);
fill(250,43,35);
rect(295,470,75,25);
rect(320,445,25,50);
fill(100,490,60);
rect(345,385,25,85);
fill(35,54,250);
rect(235,445,30,80);
fill(252,117,25);
rect(265,470,30,25);
rect(265,445,55,25);
fill(250,35,215);
square(235,390,55);
fill(252,234,25);
rect(290,420,55,25);
rect(320,385,25,60);
fill(100,490,60);
rect(62,320,25,60);
rect(25,355,62,25);
fill(35,244,250);
rect(290,370,30,50);
rect(260,340,30,50);
fill(193,54,222);
rect(190,365,70,25);
fill(252,117,25);
rect(162,337,28,53);
rect(190,337,38,28);
//fill(214,199,30);
for (int i = 20; i <= 80; i += 70) {
  if ((i > 140) && (i < 240)) {
    stroke(255);  // Set color to black
  } else {
    stroke(0);  // Set color to white
    
x--;

fill(252,frameCount,35);
textSize(24);
if(key==' '){
text("Creditos\n\nDiseñador:\n\nAlekséi\nPázhitnov\n\nProgramadores:\n\nAlekséi\nPázhitnov,\nSpectrum\nHolobyte\n\nLanzado\nel 6 de junio\nde 1984\n\n\nMusicalizacion:\nKorobéiniki\nInterpretado:\nHirokazu Tanaka\n\nDistribuidores:\nSpectrum Holobyte,\nNintendo,\nEA Mobile,\nMirrorsoft,\nTandy Corporation,\nVMSoft Bulgaria,\nVanguard Works\n\nPlataformas:\nGame Boy,\nNintendo\nEntertainment\nSystem",120,x);
}

  
  
}}}}
