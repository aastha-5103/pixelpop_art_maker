
PImage img;
int smallPoint, largePoint;

void setup() {
  size(1080, 940);
  img = loadImage("tower3.jpg");
  img.resize(1080,940);
  smallPoint=10;
  largePoint=40;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() { 
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 128);
  rect(x, y, pointillize,pointillize);
}
