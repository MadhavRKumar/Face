

public class Nose {
  Head head;
  Eyes eyes;
  float noseHeight;
  color noseColor;
  PVector[] points = new PVector[5];

  public Nose(Head h, Eyes e) {
    head = h;
    eyes = e;
    colorMode(HSB, 255);
    noseColor = h.skinColor;
    noseColor = color(hue(noseColor), saturation(noseColor), brightness(noseColor)*0.7);

    noseHeight = -random(head.h/8, eyes.pos.x - eyes.eyeSize/2);
    generatePoints();
  }

  void show() {

    noFill();
    beginShape();
    strokeWeight(4);
    stroke(noseColor);
    for (PVector p : points) {
      curveVertex(p.x, p.y);
    }
    endShape();
  }

  void generatePoints() {

    points[0] = new PVector(-100, noseHeight);

    float mult = random(1) > 0.5 ? -1 : 1;
    float angle = random(PI/4, 3*PI/4);
    points[1] = new PVector(noseHeight*cos(angle)*mult, noseHeight*sin(angle));

    float angle1 = random(PI, 3*PI/2);

    points[2] = new PVector(noseHeight*cos(angle1)*mult, noseHeight*sin(angle1));

    float angle2 = random(3*PI/2, 2*PI);
    points[3] =  new PVector(noseHeight*cos(angle2)*mult, noseHeight*sin(angle2));

    points[4] = new PVector(points[3].x, points[3].y);
  }
}