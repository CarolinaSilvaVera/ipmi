//--- SILVA VERA, Carolina 122903/0 //<>//

PImage astorPiazzolla;
PImage astorPiazzolla2;
PImage astorPiazzolla3;
PFont miFuente;
int ContadorTiempo;
int NumPantalla;
boolean started = true;
float posx;
float posy;
float radiodelaelipse = 75;

void setup() {
  size(640, 480);
  frameRate(30);

  miFuente = createFont("miFuente", 48);
  textFont(miFuente);

  astorPiazzolla = loadImage("astorPiazzolla.jpg");
  astorPiazzolla2 = loadImage("astorPiazzolla2.jpg");
  astorPiazzolla3 = loadImage("astorPiazzolla3.jpg");

  posx = width / 2;
  posy = height / 2;

  NumPantalla = 0;
  ContadorTiempo = 0;
}

void draw() {
  background(255);
 
  if (NumPantalla == 0 && started) {
    image(astorPiazzolla, 0, 0, width, height);
    textAlign(CENTER, CENTER);
    textSize(16);
    float y = map(ContadorTiempo, 0, 160, 0, height / 2 + 100);
    if (y > height / 2 + 100) 
    y = height / 2 + 100;
    fill(255);
    text("LA EXPERIENCIA INMERSIVA PIAZZOLLA 100 REALIZADA\nEN 2022 EN CENTRO CULTURAL KIRCHNER FUE UN HOMENAJE\nAL CENTENARIO DEL NACIMIENTO Y LOS 30 AÑOS DEL FALLECIMIENTO DEL\nCOMPOSITOR ASTOR PIAZZOLLA.\n", width/2, y);
} 
  else if (NumPantalla == 1){
    image(astorPiazzolla2, 0, 0, width, height);
    float opacidad = map(ContadorTiempo, 0, 90, 0, 255); 
    fill(255, 255, 0, opacidad);
    textAlign(CENTER, CENTER);
    textSize(15);
    text("CON 200 METROS CUADRADOS, 14 PROYECTORES, 24 PARLANTES\nY UN TRATAMIENTO ACÚSTICO ESPECIALIZADO, LA SALA PROPONE\nUN RECORRIDO VISUAL Y SONORO POR LA VIDA\nY LA OBRA DE PIAZZOLLA.\n", width/2, height/2);
} 
  else if (NumPantalla == 2){
    image(astorPiazzolla3, 0, 0, width, height);
    textAlign(CENTER, CENTER);
    textSize(15);
    float y = map(ContadorTiempo, 0, 130, height + 100, height / 2 - 50);
    if (y < height / 2 - 100) 
    y = height / 2 - 100;
    fill(255);
    text("ES LA PRIMER SALA INMERSIVA PERMANENTE EN\nUNA INSTITUCIÓN CULTURAL PÚBLICA EN EL PAÍS.\nLA INSTALACIÓN INCLUYE IMÁGENES Y PIEZAS \nEMBLEMÁTICAS COMO 'LIBERTANGO' Y 'OTOÑO PORTEÑO'.\n", width/2, y);
}
  else if (NumPantalla == 3) {
  image(astorPiazzolla3, 0, 0, width, height);

  if (!started) {
    fill(165, 32, 25);
    ellipse(width/2, height/2, 150, 150);
    textAlign(CENTER, CENTER);
    textSize(24);
    fill(255);
    text("REINICIAR", width/2, height/2);
 }
}
  if (started) {
  ContadorTiempo++;
  if (ContadorTiempo > 160) {
  ContadorTiempo = 0;
  NumPantalla++;
  if (NumPantalla > 3) {
  NumPantalla = 3;
  started = false;
   }
  }
 }
}

void mousePressed(){
 float distancia = dist(width/2, height/2, mouseX, mouseY);
  if (!started && NumPantalla == 3 && distancia < 75) {
  started = true; 
  NumPantalla = 0; 
  ContadorTiempo = 0;
} 
}
