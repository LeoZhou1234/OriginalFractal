final float cos = 0.5;
final float sin = 0.8660254;

void setup() {
  size(800, 800);
  background(135, 205, 235);
  noLoop();
}

void draw() {
  fractal(400, 400, 250);
}

public void hexagon(float cx, float cy, float len) {
  float[] dx = {cos, 1, cos, -cos, -1, -cos, cos};
  float[] dy = {sin, 0, -sin, -sin, 0, sin, sin}; 
  beginShape();
  for (int i = 0; i < 7; i++) {
    vertex(cx + len*dx[i], cy + len*dy[i]);
  }
  endShape();
}

public void fractal(float cx, float cy, float len) {
  hexagon(cx, cy, len);
  if (len > 5) {
    float[] dx = {0, sin, 0, -sin, -sin, 0, sin}; 
    float[] dy = {0, cos, 1, cos, -cos, -1, -cos};
    for (int i = 0; i < 7; i++) {
      fractal(cx + len*dx[i], cy + len*dy[i], len/3);
    }
  }
}



