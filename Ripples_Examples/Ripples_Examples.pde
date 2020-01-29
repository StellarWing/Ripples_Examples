ArrayList<Ripple> myRipples;
Ripple s;

void setup() {
  size(800, 600);
  noFill();

  myRipples = new ArrayList<Ripple>();
  int i = 0;
  while (i < 150) { //check draw while, has to have the same number 
    //constructor being called
    myRipples.add(new Ripple() );
    i++;
  }
}

void draw() {
  background(0);
  stroke(0);

  int i = 0;
  while (i < 150) {
    Ripple s = myRipples.get(i); 
    s.act();
    s.show();
    i++;
  }
}
  
