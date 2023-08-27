void setup() {
  size(500, 500);
}

float length(int x, int y, float p) {
  return pow(pow((float)x, p) + pow((float)y, p), 1.0 / p);
}

void draw() {
  int centerX = width / 2;
  int centerY = height / 2;
  float radius = 100;
  float epsilon = 5;
  background(0);

  color paint = color(255, 0, 0);

  loadPixels();

  for (int x = 0; x < 500; x++) {
    for (int y = 0; y < 500; y++) {
      int relativeX = abs(x - centerX);
      int relativeY = abs(y - centerY);
      float distance = length(relativeX, relativeY, 1.5);
      print(distance);
      if (distance > radius - epsilon && distance < radius + epsilon) {
        pixels[x + (y * 500)] = paint;
      }
    }
  }

  updatePixels();
}
