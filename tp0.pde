//Muñeco de nieve

//fondo
size(600,600);
colorMode(RGB);
background(150,220,232);

//Circulos
//circulo 1
circle(300,400,250);
fill(0);
circle(300,390,20);
circle(300,440,20);
circle(300,490,20);
//circulo 2
fill(255);
circle(300,250,200);
fill(0);
circle(300,240,20);
circle(300,290,20);
//circulo 3
fill(255);
circle(300,125,150);
fill(0);
circle(270,115,15);
circle(330,115,15);

//Nariz
fill(255,141,0);
triangle(320,140,270,160,230,210);

//brazos
stroke(0);
strokeWeight(5);
line(200,250,100,200);
line(500,200,400,250);
line(80,180,100,200);
line(80,220,100,200);
line(500,200,520,180);
line(500,200,520,220);

//Sombrero
strokeWeight(0);
fill(0);
rect(250,0,100,80);
ellipse(300,60,150,70);

//Boca

circle(300,175,10);
circle(315,172,10);
circle(330,164,10);
circle(344,154,10);
