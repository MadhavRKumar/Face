int count = 0;
final int LIMIT = 20;
Head head;

void setup() {
  //size(1200, 900);
  frameRate(60);
  fullScreen();
  createFace();
}

void createFace() {
  background(#e4e4e4);
  float size = random(width/4, width/2);
  head = new Head(size, size);
}

void draw() {

      head.show();
      saveFrame("face-####.png");
      createFace();
      count++;
      
      if(count == LIMIT) {
        exit();
      }
}


void keyPressed() { 

  if (key == 'r' || key == 'R') {
    createFace();
  }
}