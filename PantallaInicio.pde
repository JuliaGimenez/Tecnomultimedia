public class PantallaInicio
{
  int botonInicioX=670;
  int botonInicioY=650; // 375
  int botonCreditosX=30;
  int botonCreditosY=650;
  int wX=100;
  int hY=70;
  Boton botondDesarrollo;
  Boton botonCreditos;
  PImage fondo;
  PImage playBoton;
  public PantallaInicio()
  {
    fondo = loadImage("CapturaULT.JPG");
    playBoton = loadImage("playImage.png");
    playBoton.resize(50,50);
    botondDesarrollo = new Boton(botonInicioX,botonInicioY,wX,hY);
    botonCreditos = new Boton(botonCreditosX,botonCreditosY,wX,hY);
  }
  void Mostrar()
  {
    background(0);
    image(fondo,0,0);
    noTint();
    textSize(50);
    fill(0,0,0);
    fill(75*3,50*4,25*4,120);
    textFont(myFont, 50);
    text("TRABAJO PRACTICO 5",89,110);
    textSize(75);
    fill(75*3,50*3,25*3,180);
    text("METEOR SHIELD",40,220);
    botondDesarrollo.Dibujo(124,130,198);
    textSize(30);
    fill(124,130,198);
    fill(0,0,0);
    botonCreditos.Dibujo(124,130,198);
    image(playBoton,696,662);
    fill(0,0,0);
    text("INFO",45,698);
  }
  public boolean botonDesarrolloPulsado()
  {
   if(botondDesarrollo.Pulsado(botonInicioX,botonInicioY,wX,hY))
   {
     return true;
   }
   else
   return false;
  }
  public boolean botonCreditosPulsado()
  {
   if(botonCreditos.Pulsado(botonCreditosX,botonCreditosY,wX,hY))
   {
     return true;
   }
   else
   return false;
  }
}
