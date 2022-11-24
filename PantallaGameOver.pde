public class PantallaGameOver
{
  public PantallaGameOver()
  {
    
  }
  void Mostrar()
  {
    background(0);
    fill(255);
    textSize(40);
    text("¡DERROTA!", 300, 350);
    textSize(20);
    text("(Click para volver)", 300, 500);
    delay(100);
  }
}
