//https://youtu.be/yKe1GuZq2PI
PantallaInicio pantallaInicio;
PantallaDesarrollo pantallaDesarrollo;
PantallaCreditos pantallaCreditos;
PantallaGameOver pantallaGameOver;
PantallaVictoria pantallaVictoria;
public boolean mostrarPantallaDesarrollo=false;
public boolean mostrarPantallaInicio=true;
public boolean mostrarpantallaCreditos=false;
import processing.sound.*;
SoundFile fileDisparo;
SoundFile fileImpacto;
SoundFile fileWin;
PFont myFont;

void setup()
{
  size(800,800);
  myFont = createFont("Interstellar.ttf", 32);
  fileDisparo = new SoundFile(this, "shoot.mp3");
  fileImpacto = new SoundFile(this, "hit.wav");
  fileWin = new SoundFile(this, "musicWin.mp3");

  
  pantallaInicio = new PantallaInicio();
  pantallaDesarrollo = new PantallaDesarrollo();
  pantallaCreditos = new PantallaCreditos();
  pantallaGameOver = new PantallaGameOver();
  pantallaVictoria = new PantallaVictoria();
}
void draw()
{
  if(pantallaDesarrollo.getPerdio()==true)
  {
    pantallaGameOver.Mostrar();
    if(mousePressed)
    {
      pantallaDesarrollo.setPerdio(false);
    }
  } else if(pantallaDesarrollo.getGano()==true)
  {
    pantallaVictoria.Mostrar();
    if(mousePressed)
    {
      pantallaDesarrollo.setGano(false);
    }
  }
  else
  {
    if(pantallaCreditos.botonInicioPulsado())
    {
      mostrarPantallaDesarrollo=false;
      mostrarPantallaInicio=true;
      mostrarpantallaCreditos=false;
    }
    if(pantallaInicio.botonDesarrolloPulsado())
    {
      mostrarPantallaDesarrollo = true;
      mostrarPantallaInicio = false;
      mostrarpantallaCreditos = false;
      fileWin.stop();
      delay(50);
    }
    if(pantallaInicio.botonCreditosPulsado())
    {
      mostrarPantallaDesarrollo = false;
      mostrarPantallaInicio = false;
      mostrarpantallaCreditos = true;   
    }
    
    if(mostrarPantallaDesarrollo==true&&mostrarPantallaInicio==false&&mostrarpantallaCreditos==false)
    {
      pantallaDesarrollo.Mostrar();
    }
    else if(mostrarpantallaCreditos==true&&mostrarPantallaInicio==false&&mostrarPantallaDesarrollo==false)
    {
      pantallaCreditos.Mostrar();
    } else
    {
       pantallaInicio.Mostrar();
    }
  }
}
