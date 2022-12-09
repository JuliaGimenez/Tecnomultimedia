//https://youtu.be/J6TuBxRmSQY

import processing.sound.*;
SoundFile fileDisparo;
SoundFile fileImpacto;
SoundFile fileWin;
Principal principal;

void setup()
{
  size(800, 800);
  fileDisparo = new SoundFile(this, "shoot.mp3");
  fileImpacto = new SoundFile(this, "hit.wav");
  fileWin = new SoundFile(this, "musicWin.mp3");
  principal= new Principal();
}


void draw()
{
  principal.Estado();
}
