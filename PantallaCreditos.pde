public class PantallaCreditos
{
  Boton botonInicio;
  int botonInicioX=350;
  int botonInicioY=650;
  int wX=80;
  int hY=70;
  float movY = 0;
  PImage playBoton;
  public PantallaCreditos()
  {
     botonInicio = new Boton(botonInicioX,botonInicioY,wX,hY);
    playBoton = loadImage("playImage.png");
    playBoton.resize(50,50);
  }
   void Mostrar()
  {
    mostrarFondo();
    textSize(50);
    fill(255,0,0);
    text("CREDITOS",232,120);
    textSize(35);
    fill(75*3,50*2,25*3);
    text("JULIA GIMENEZ",212,263);
    textSize(35);
    fill(75*3,50*2,25*3);
    text("LEG: 91391 / 1",261,328);
    textSize(40);
    fill(75*2,50*2,25*4);
    text("TECNOLOGIA MULTIMEDIAL",80,438);
    textSize(40);
    fill(75*2,50*2,25*4);
    text("DISEÑO MULTIMEDIAL",138,520);
    textSize(50);
    fill(75*2,50*3,25*4);
    text("UNLP",310,600);
    botonInicio.Dibujo(250,130,130);
    image(playBoton,366,660);
  }
  public boolean botonInicioPulsado()
  {
   if(botonInicio.Pulsado(botonInicioX,botonInicioY,wX,hY))
   {
     return true;
   }
   else
   return false;
  }
  void mostrarFondo()
  {
    background(0);
    fill(255,255,255,175);
    for(int i=0;i<30;i++)
    {
    ellipse(random(0,800),movY-600,random(0,20),random(0,20));
    ellipse(random(0,800),movY-400,random(0,20),random(0,20));
    ellipse(random(0,800),movY-200,random(0,20),random(0,20));
    ellipse(random(0,800),movY,random(0,20),random(0,20));
    }
    movY+=4;
    if(movY>height+600)
    {
      movY=0;
    }
    
  }
}
