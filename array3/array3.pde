float [] x;
float [] y;

void setup() {
  size(1000, 1000);
  x = new float[200];
  y = new float[200];
}

void draw() {

  for (int i = 0; i < x.length; i ++) {
    x[i] = i;
  }

  for (int i = 0; i < y.length; i ++) {
    y[i] = x[i]*3;
  }

  for (int i = 0; i < x.length; i ++) {
    ellipse(x[i], y[i], 10, 10);
  }
}
