
class Eyes {
  Head head;
  PVector pos = new PVector();
  float eyeSize;
  float pupilSize;
  PVector leftPupilPos = new PVector();
  PVector rightPupilPos = new PVector();


  public Eyes(Head h) {
    head = h;
    float div = random(2, 4);
    float a = head.w/sqrt(2);
    float x = a/div;
    float y = -1 * x * random(1);
    pos.set(x, y);

    eyeSize = random(pos.x/4, pos.x/1.5);


    pupilSize = eyeSize / (random(1.5, 6));
    setPupilPosition();

  }


  public void show() {
    drawEyes();
    drawPupils();
  }

  void drawEyes() {
    fill(#fefefe);
    ellipse(-pos.x, pos.y, eyeSize, eyeSize);
    ellipse(pos.x, pos.y, eyeSize, eyeSize);
  }

  void drawPupils() {
    noStroke();
    fill(#363636);

    ellipse(-leftPupilPos.x, leftPupilPos.y, pupilSize, pupilSize);

    ellipse(rightPupilPos.x, rightPupilPos.y, pupilSize, pupilSize);
  }

  void setPupilPosition() {

    float angle = random(2*PI);
    float r = ((eyeSize-pupilSize)/2) * sqrt(random(1));

    float x = pos.x + r * cos(angle);
    float y = pos.y + r * sin(angle);

    leftPupilPos.set(x, y );


    float x1 = 2*pos.x - leftPupilPos.x;
    rightPupilPos.set(x1, y);
  }
}