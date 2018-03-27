
public class Mouth {

  Head head;
  Nose nose;
  boolean open;
  PVector[] points = new PVector[5];

  public Mouth(Head h, Nose n) {
    head = h;
    nose = n;
    open = random(1) > 0.5;


    generatePoints();
  }

  void show() {
    if (open) {
      noFill();
    } else {
      fill(nose.noseColor);
    }
    strokeWeight(7);
    stroke(nose.noseColor);
    strokeJoin(ROUND);
    beginShape();
    for (PVector p : points) {
      curveVertex(p.x, p.y);
    }
    if (open) {
      endShape();
    } else {
      endShape(CLOSE);
    }
  }

  void generatePoints() {
    float div = random(2, 8);
    float a = head.w/sqrt(2);


    float xRange = a/div;
    float y = random(-nose.noseHeight, head.h/3);
    points[0] = new PVector(xRange, y);
    int i = 1;
    for (float x = xRange; x >= -xRange; x -= xRange) {

      points[i] = new PVector(x, y);
      i++;
      y = random(-nose.noseHeight*1.1, head.h/3);
    }

    points[4] = points[3];
  }
}