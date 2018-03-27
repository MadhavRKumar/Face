
class Head {
  color[] skinColors = {#FFCBB6, #7D432B, #EB9B60, #FDC3B5, #581D15, #F8BC86, #823910};
  color skinColor;
  float w;
  float h;
  PVector pos = new PVector();
  Eyes eyes;
  Nose nose;
  Mouth mouth;
  public Head(float w_, float h_) {
    this(w_, h_, width/2, height/2);
  }

  public Head(float w_, float h_, float x, float y) {
    w = w_;
    h = h_;
    skinColor = skinColors[(int)(random(skinColors.length))];
    eyes = new Eyes(this);
    nose = new Nose(this, eyes);
    mouth = new Mouth(this, nose);
    pos.set(x, y);
  }

  public void show() {
    translate(pos.x, pos.y);
    noStroke();
    fill(skinColor);
    ellipse(0, 0, w, h);
    eyes.show();
    nose.show();
    mouth.show();
  }
}