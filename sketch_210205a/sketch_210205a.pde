void setup()
{
  size(1000, 1000);
}

void draw()
{
  stroke(30);
  fill(0,0,0);
  textSize(40);
  text("Pompa 1", 120, 40);
  fill(0,255,0);
  ellipse(100, 100, 75, 75);
  fill(255,255,0);
  ellipse(200, 100, 75, 75);
  fill(255,0,0);
  ellipse(300, 100, 75, 75);
  
  fill(0,0,0);
  text("Pompa 2", 120, 240);
  fill(0,255,0);
  ellipse(100, 300, 75, 75);
  fill(255,255,0);
  ellipse(200, 300, 75, 75);
  fill(255,0,0);
  ellipse(300, 300, 75, 75);
  
  rectMode(CENTER);
  fill(0,0,0,0);
  rect(600, 300, 300, 500);
  rectMode(CORNER);
  noStroke();
  fill(47, 196, 244);
  rect(451, 550, 298, -random(0,500));
  
  stroke(30);
  fill(0,0,0);
  textSize(40);
  text("Pompa 1", 120, 40);
  fill(0,255,0);
  ellipse(100, 100, 75, 75);
  fill(255,255,0);
  ellipse(200, 100, 75, 75);
  fill(255,0,0);
  ellipse(300, 100, 75, 75);
  
  fill(0,0,0);
  text("Sensore 2", 120, 240);
  fill(0,255,0);
  ellipse(100, 300, 75, 75);
  fill(255,255,0);
  ellipse(200, 300, 75, 75);
  fill(255,0,0);
  ellipse(300, 300, 75, 75);
  
  stroke(30);
  fill(0,0,0);
  textSize(40);
  text("Sensore 3", 120, 40);
  fill(0,255,0);
  ellipse(100, 100, 75, 75);
  fill(255,255,0);
  ellipse(200, 100, 75, 75);
  fill(255,0,0);
  ellipse(300, 100, 75, 75);
}
