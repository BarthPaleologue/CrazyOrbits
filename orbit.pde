void setup() {
  size(500, 500);
  
  smooth();
  noStroke();
  background(0);
}

float length(int x, int y, float p) {
  return pow(pow((float)x, p) + pow((float)y, p), 1.0 / p);
}

void draw() {
  int centerX = width / 2;
  int centerY = height / 2;
  float radius = 100;
  
  noStroke();
  fill( 0, 10);  // fill with black, low opacity; builds up over old ellipses
  rect(0, 0, width, height);
  fill(255,255);

  color paint = color(255, 0, 0);

  float clock = millis() / 1000.0;
  
  float p = 0.5 + 2.0 * (1.0 + cos(clock / 10.0)) / 2.0;
  
  float theta = 5.0 * clock;

  float r = pow(pow(abs(cos(theta)), p) + pow(abs(sin(theta)), p), 1.0 / p);

  int x = int(radius * cos(theta) / r);
  int y = int(radius * sin(theta) / r);
  
  circle(centerX + x, centerY + y, 10); 
  //fill(255, 255);
}
