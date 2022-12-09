public class Principal{
  Desarrollo desarrollo;
Pantalla pantalla;
public boolean mostrarPantallaDesarrollo=false;
public boolean mostrarPantallaInicio=true;
public boolean mostrarpantallaCreditos=false;
int estado=0;

public Principal(){
   pantalla = new Pantalla();
  desarrollo = new Desarrollo();}
  
  void Estado(){
    {
  if (desarrollo.getPerdio()==true)
  {
    pantalla.MostrarDerrota();
    if (mousePressed)
    {
       mostrarPantallaDesarrollo=false;
       mostrarPantallaInicio=true;
       mostrarpantallaCreditos=false;
      desarrollo.setPerdio(false);
    }
  } else if (desarrollo.getGano()==true)
  {
    pantalla.MostrarVictoria();
    if (mousePressed)
    {
       mostrarPantallaDesarrollo=false;
       mostrarPantallaInicio=true;
       mostrarpantallaCreditos=false;
      desarrollo.setGano(false);
    }
  } else 
  {
    if (pantalla.botonInicioPulsado())
    {
      mostrarPantallaDesarrollo=false;
      mostrarPantallaInicio=true;
      mostrarpantallaCreditos=false;
    }
    if (pantalla.botonDesarrolloPulsado())
    {
      mostrarPantallaDesarrollo = true;
      mostrarPantallaInicio = false;
      mostrarpantallaCreditos = false;
      fileWin.stop();
      delay(50);
    }
    if (pantalla.botonCreditosPulsado())
    {
      mostrarPantallaDesarrollo = false;
      mostrarPantallaInicio = false;
      mostrarpantallaCreditos = true;
    }

    if (mostrarPantallaDesarrollo&&mostrarPantallaInicio==false&&mostrarpantallaCreditos==false)
    {
      desarrollo.Mostrar();
    } else if (mostrarpantallaCreditos&&mostrarPantallaInicio==false&&mostrarPantallaDesarrollo==false)
    {
      pantalla.MostrarCreditos();
    } else
    {
      pantalla.MostrarInicio();
    }
  }
}}}
