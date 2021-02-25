
import g4p_controls.*;
GWindow finestra1, finestra2, finestra3;


float modificatore = 0;
float livello = -30;
float sfondo = 220;
PImage info, pompa, societa, societa1;

void setup() {
  size(500, 700, JAVA2D);
  info=loadImage("../img/icona informazione.png");
  pompa=loadImage("../img/pompa.jpg");
  societa=loadImage("../img/societa.png");
  societa1=loadImage("../img/societa.png");
}

void draw() {
  background(sfondo);
  GenerazioneLivello();
  SfondoTesti();
  Struttura();
  Vasca();
  Linee();
  Tasto();
  Pompe();
  Sensori();
  Testi();
  PopUpPompaUno();
  PopUpPompaDue();
  PopUpSocieta();
  Immagini();
  delay(300);
}

void Immagini() {
  info.resize(0, 50);
  image(info, 200, 150);
  image(info, 450, 150);
  societa.resize(0, 50);
  image(societa, 450, 645);
}

void GenerazioneLivello() {
  modificatore = random(-0.5, 0.5);
  livello = livello + modificatore;
  if (livello > 0)
    livello = 0;
  if (livello < -300)
    livello = -299;
}

void Struttura() {
  fill(sfondo);
  line(0, 200, 500, 200);
  line(250, 0, 250, 200);
}

void Pompe() {
  if (livello >= -20 || livello <= -280) {
    fill(255, 0, 0);
    ellipse(125, 120, 100, 100);
    ellipse(375, 120, 100, 100);
  } else {
    if (modificatore == 0) {
      fill(0, 255, 0);
      ellipse(125, 120, 100, 100);
      ellipse(375, 120, 100, 100);
    }
    if (modificatore < 0) {
      fill(0, 255, 0);
      //pompa 2
      ellipse(375, 120, 100, 100);
      fill(255, 255, 0);
      //pompa 1
      ellipse(125, 120, 100, 100);
    }
    if (modificatore > 0) {
      fill(255, 255, 0);
      //pompa 2
      ellipse(375, 120, 100, 100);
      fill(0, 255, 0);
      //pompa 1
      ellipse(125, 120, 100, 100);
    }
  }
}

void Vasca() {
  fill(200);
  rect(150, 400, 200, 300);
  noStroke();
  rectMode(CORNER);
  fill(0, 117, 255);
  rect(50, 550, 200, livello);
  rectMode(CENTER);
  stroke(1);
}

void Linee() {
  fill(0);
  line(230, 270, 270, 270);
  line(230, 400, 270, 400);
  line(230, 530, 270, 530);
}

void Sensori() {
  if (livello >= -20 || livello <= -280) {
    fill(255, 0, 0);
    //sensore1
    ellipse(320, 270, 60, 60);
    //sensore 2
    ellipse(320, 400, 60, 60);
    //senspore 3
    ellipse(320, 530, 60, 60);
  }
  if (livello <= -160 && livello > -280) {
    fill(0, 255, 0);
    //sensore1
    ellipse(320, 270, 60, 60);
    fill(255, 255, 0);
    //sensore 2
    ellipse(320, 400, 60, 60);
    //senspore 3
    ellipse(320, 530, 60, 60);
  }
  if (livello < -20 && livello > -160) {
    fill(0, 255, 0);
    //sensore1
    ellipse(320, 270, 60, 60);
    //sensore 2
    ellipse(320, 400, 60, 60);
    fill(255, 255, 0);
    //senspore 3
    ellipse(320, 530, 60, 60);
  }
}

void Testi() {
  noStroke();
  textSize(25);
  fill(0);
  textAlign(CENTER);
  text("POMPA INPUT", 125, 50);
  text("POMPA OUTPUT", 375, 50);
  text("Sensore 1", 420, 275);
  text("Sensore 2", 420, 405);
  text("Sensore 3", 420, 535);
  text("Start / Stop", 250, 630);
  stroke(1);
}

void SfondoTesti() {
  fill(sfondo);
  rectMode(CENTER);
  noStroke();
  rect(500, 380, 280, 350);
  rect(250, 30, 1000, 40);
  stroke(1);
}

void Tasto() {
  fill(255, 0, 0);
  rect(250, 620, 150, 45);
}

void PopUpPompaUno() {
  if (mouseX>=200&&mouseX<=250&&mouseY<=200&&mouseY>=150&&mousePressed)
  {
    InizializzazionePompaUno();
    finestra1.redraw();
  }
}

void PopUpPompaDue() {
  if (mouseX>=450&&mouseX<=500&&mouseY<=200&&mouseY>=150&&mousePressed)
  {
    InizializzazionePompaDue();
    finestra2.redraw();
  }
}

void PopUpSocieta() {

  if (mouseX>=440&&mouseX<=500&&mouseY<=700&&mouseY>=630&&mousePressed)
  {
    InizializzazioneSocieta();
    finestra3.redraw();
  }
}

void InizializzazionePompaUno()
{
  finestra1 = GWindow.getWindow(this, "Dettagli pompa input", 100, 100, 500, 500, JAVA2D);
  finestra1.noLoop();
  finestra1.addDrawHandler(this, "FinestraPompaUno");
  finestra1.loop();
}

void InizializzazionePompaDue()
{
  finestra2 = GWindow.getWindow(this, "Dettagli pompa output", 100, 100, 500, 500, JAVA2D);
  finestra2.noLoop();
  finestra2.addDrawHandler(this, "FinestraPompaDue");
  finestra2.loop();
}

void InizializzazioneSocieta()
{
  finestra3 = GWindow.getWindow(this, "Dettagli società", 100, 100, 500, 500, JAVA2D);
  finestra3.noLoop();
  finestra3.addDrawHandler(this, "FinestraSocieta");
  finestra3.loop();
}

void FinestraPompaUno(PApplet appc, GWinData data)
{
  appc.rectMode(CENTER);
  appc.noStroke();
  appc.fill(sfondo);
  appc.rect(250, 250, 500, 500);
  appc.stroke(1);
  appc.fill(0);
  appc.textSize(20);
  appc.imageMode(CENTER);
  appc.textAlign(CENTER);
  appc.text("Pedrolli JSW2 - Elettropompa autoadescante", 250, 50);
  appc.text("Materiale: Ghisa", 250, 300);
  appc.text("Dimensioni: 39x18x20cm", 250, 330);
  appc.text("Alimentazione: V220 monofase", 250, 360);
  appc.text("Peso: 14.7 Kg", 250, 390);
  appc.text("Portata Massima: 60L al minuto", 250, 420);
  appc.text("Altezza massima di sollevamento: 48 Metri", 250, 450);
  appc.text("Numero di serie: 1025PH", 250, 480);
  pompa.resize(0, 180);
  appc.image(pompa, 250, 180);
  appc.imageMode(CORNER);
  appc.noLoop();
}

void FinestraPompaDue(PApplet appc, GWinData data)
{
  appc.rectMode(CENTER);
  appc.noStroke();
  appc.fill(sfondo);
  appc.rect(250, 250, 500, 500);
  appc.stroke(1);
  appc.fill(0);
  appc.textSize(20);
  appc.imageMode(CENTER);
  appc.textAlign(CENTER);
  appc.text("Pedrolli JSW2 - Elettropompa autoadescante", 250, 50);
  appc.text("Materiale: Ghisa", 250, 300);
  appc.text("Dimensioni: 39x18x20cm", 250, 330);
  appc.text("Alimentazione: V220 monofase", 250, 360);
  appc.text("Peso: 14.7 Kg", 250, 390);
  appc.text("Portata Massima: 60L al minuto", 250, 420);
  appc.text("Altezza massima di sollevamento: 48 Metri", 250, 450);
  appc.text("Numero di serie: 1030PH", 250, 480);
  pompa.resize(0, 180);
  appc.image(pompa, 250, 180);
  appc.imageMode(CORNER);
  appc.noLoop();
}

void FinestraSocieta(PApplet appc, GWinData data)
{
  appc.noStroke();
  appc.fill(sfondo);
  appc.rectMode(CENTER);
  appc.rect(250, 250, 500, 500);
  appc.stroke(1);
  appc.fill(0);
  appc.textSize(25);
  appc.imageMode(CENTER);
  appc.textAlign(CENTER);
  appc.text("ISC - Intimiano Systems Company", 250, 50);
  appc.text("www.isc.it", 250, 300);
  appc.text("info@isc.com", 250, 330);
  appc.text("031560459", 250, 360);
  appc.text("@isc", 250, 390);
  societa1.resize(0, 180);
  appc.image(societa1, 250, 180);
  appc.imageMode(CORNER);
  appc.noLoop();
}
