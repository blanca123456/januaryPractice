class Star {

  color col;

  float size;

  PVector position;
  PVector velocity;

  Star(color _col, PVector _pos, PVector _vel) {
    col = _col;
    position = _pos;
    velocity = _vel;

    size = random(10, 70);
  }

  void run() {
    update();
    render();
  }

  void render() {
    fill(col);
    ellipse(position.x, position.y, size, size);
  }

  void update() {
    position.add(velocity);
    
    size = size-1;
    if (size < 0){
      size = 0;
    }

    if (position.x > width || position.x < 0) {
      velocity.x = velocity.x * (-1);
    }
    if (position.y > height || position.y < 0) {
      velocity.y = velocity.y * (-1);
    }
  }
}
