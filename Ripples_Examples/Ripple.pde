class Ripple {
  //instance variables
  float x, y;
  float size;
  float speed;
  float a;


  Ripple() {

    x =  random(0, width);
    y =  random(0, height);
    size = random(5, 200);
    speed = 2;
  }

  void act() {
    //actions that a ripple can do
    //ripple can expand
    size = size + speed;
    if (size > 200) {
      x = random(0, width);
      y = random(0, height);
      size = 0;
    }
  }
  void show() {
    //draws ripple to screen
    a = map(size, 0, 200, 255, 0);
    stroke(255, a);
    ellipse(x, y, size, size/2);
  }
}
