PImage miFoto;
size(800, 400);
background(149,184,209);
miFoto = loadImage("miFoto.jpg");
image(miFoto, 0, 0, 400, 400);

//parte de atrás del pelo
fill(100,60,20);
quad(498,200, 703,200, 675,350, 525,350);

//------cuello
stroke(0.5);
fill(255,220,205);
quad(570,300, 630,300, 620,340, 580,340);

//-cara
stroke(0.5);
fill(255, 220, 200);
ellipse(600, 200, 170, 240);

//--ojos
stroke(0,0,0);
strokeWeight(2);
fill(255,255,255);
arc(635, 190, 40, 20, PI, PI*2);
arc(635, 190, 40, 20, 0, PI);
arc(565, 190, 40, 20, PI, PI*2);
arc(565, 190, 40, 20, 0, PI);
fill(0,0,0);
ellipse(565, 190, 20, 20);
ellipse(635, 190, 20, 20);
strokeWeight(1.5);
line(555, 180, 551, 172);
line(550, 185, 545, 173);
line(545, 190, 540, 178);
line(645, 180, 650, 172);
line(650, 185, 656, 175);
line(655, 190, 661, 180);

//---nariz
noFill();
stroke(0,0,0);
strokeWeight(2);
line(598, 195, 585, 235);
line(585, 235, 605, 238);
///---------------------------------------------------------------------------------------------

//----boca
fill(165,86,96);
strokeWeight(1.5);
arc(600, 270, 50, 25 ,0, PI);
triangle(600,269, 605,254, 625,269);
triangle(575,269, 595,254, 600,269);
noFill();

//-----lentes
stroke(255,255,255);
strokeWeight(4);
arc(557, 175, 75, 80, 0, PI);
line(519.5, 175, 594.5, 175);
arc(643, 175, 75, 80, 0, PI);
line(605.5, 175, 680.5, 175);
line(594.5, 186, 605.5, 186);

//--------pecho
noStroke();
fill(255,220,205);
rect(500, 340, 200, 100, 20);
//remera
fill(255,255,255);
noStroke();
rect(540, 340, 20, 60);
rect(640, 340, 20, 60);
rect(540, 370, 100, 90);

//pelo
noFill();
strokeWeight(40);
stroke(100,60,20);
arc(600, 160, 170, 140, PI, PI*2);
noStroke();
fill(100, 60, 20);
rect(498, 140, 36, 250); 
rect(667, 140, 36, 250); 
