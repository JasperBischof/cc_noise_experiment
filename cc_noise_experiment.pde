float x;
float y;
float x2;
float y2;
float radius = 4;
float xoff = 0;
float yoff = 100;
float xoff2 = 100;
float yoff2 = 100;
color c;

void setup() {
  size(1000, 1000);
  y = height/2;
  x = width/2;
  c = color(255, 255, 255);
  frameRate(60);
  noiseSeed(66666);
  background(0);
}

void draw() {

  //fill(0, 3);
  //noStroke();
  //rect(0, 0, width, height);

  int colorRed = (int)map(mouseX, 0, width, 0, 255);
  int colorGreen = (int)map(mouseY, 0, height, 0, 255);

//  int lod = (int)map(mouseY, 0, height, 0, 50);
//  float falloff = map(mouseX, 0, width, 0, 0.5);
//  noiseDetail(lod, falloff);

  x = map(noise(xoff), 0, 1, 0, width);
  y = map(noise(yoff), 0, 1, 0, height);
  x2 = map(noise(xoff2), 0, 1, 0, width);
  y2 = map(noise(yoff2), 0, 1, 0, height);

  xoff = xoff + 0.03;
  yoff = yoff + 0.03;
  xoff2 = xoff2 + 0.03;
  yoff2 = yoff2 + 0.03;

  fill(colorRed, colorGreen, 255);
  noStroke();
  circle(x, y, radius);
  circle(x2, y2, radius);
  stroke(colorRed, colorGreen, 255);
  strokeWeight(2);
  line(x, y, x2, y2);
}
