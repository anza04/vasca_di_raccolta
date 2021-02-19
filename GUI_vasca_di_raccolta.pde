float modificatore = 0;
float livello = -30;
float sfondo = 220;
PImage info, pompa, societa, societa1;

void setup() {
  size(500, 700);
  info=loadImage("img/icona informazione.png");
  pompa=loadImage("img/pompa.jpg");
  societa=loadImage("img/societa.png");
  societa1=loadImage("img/societa.png");
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

void Immagini(){
  info.resize(0,50);
  image(info, 200,150);
  image(info, 450,150);
  societa.resize(0,50);
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

void PopUpPompaUno(){
  if(mouseX>=200&&mouseX<=250&&mouseY<=200&&mouseY>=150)
  {
    noStroke();
    fill(sfondo);
    rect(250,450,500,498);
    stroke(1);
    fill(0);
    textSize(20);
    imageMode(CENTER);
    text("Pedrolli JSW2 - Elettropompa autoadescante",250,250);
    text("Materiale: Ghisa", 250, 420);
    text("Dimensioni: 39x18x20cm", 250, 450);
    text("Alimentazione: V220 monofase", 250, 480);
    text("Peso: 14.7 Kg", 250, 510);
    text("Portata Massima: 60L al minuto", 250, 540);
    text("Altezza massima di sollevamento: 48 Metri", 250, 570);
    text("Numero di serie: 1025PH", 250, 600);
    pompa.resize(0,100);
    image(pompa, 250, 325);
    imageMode(CORNER);
  }
}

void PopUpPompaDue(){
  if(mouseX>=450&&mouseX<=500&&mouseY<=200&&mouseY>=150)
  {
    noStroke();
    fill(sfondo);
    rect(250,450,500,498);
    stroke(1);
    fill(0);
    textSize(20);
    imageMode(CENTER);
    text("Pedrolli JSW2 - Elettropompa autoadescante",250,250);
    text("Materiale: Ghisa", 250, 420);
    text("Dimensioni: 39x18x20cm", 250, 450);
    text("Alimentazione: V220 monofase", 250, 480);
    text("Peso: 14.7 Kg", 250, 510);
    text("Portata Massima: 60L al minuto", 250, 540);
    text("Altezza massima di sollevamento: 48 Metri", 250, 570);
    text("Numero di serie: 1070PH", 250, 600);
    pompa.resize(0,100);
    image(pompa, 250, 325);
    imageMode(CORNER);
  }
}

void PopUpSocieta(){
  
  if(mouseX>=440&&mouseX<=500&&mouseY<=700&&mouseY>=630)
  {
    noStroke();
    fill(sfondo);
    rect(250,450,500,498);
    stroke(1);
    fill(0);
    textSize(25);
    imageMode(CENTER);
    text("ISC - Intimiano Systems Company",250,240);
    text("www.isc.it", 250, 440);
    text("info@isc.com", 250, 470);
    text("031560459", 250, 500);
    text("@isc", 250, 530);
    societa1.resize(0,150);
    image(societa1, 250, 330);
    imageMode(CORNER);
  }
}
