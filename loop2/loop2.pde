void setup() {
  size (160, 160);
  background(0);

  for (int i = 0; i <= 6; i++) {
    for (int j = 0; j <= 6; j++) {

      if ( i == j) {
        fill (0, 0, 255);
      } else {
        fill(255, 255, 0);
      }
      ellipse (20 + i*20, 20 + j*20, 20, 20);
    }
  }
}
