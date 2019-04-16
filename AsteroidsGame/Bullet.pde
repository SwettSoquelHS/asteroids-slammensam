class Bullet extends Mover {
  private int live;

  Bullet(float x, float y) {
    super(x, y);
    live = 75;
  }

  Bullet(float x, float y, float speed, float direction) {
    super(x, y, speed, direction);
    live = 75;
  }

  void show() {
    pushMatrix();
    translate(x, y);
    fill(255);
    quad(-2, 2, 2, 2, 2, -2, -2, -2);
    popMatrix();
    
  }
  void update() {
    if (live > 0) {
      super.update();
      live--;
    }
    //print(live);
  }
  boolean isAlive() {
    if (live > 0) {
      return true;
    }
    return false;
  }
}
