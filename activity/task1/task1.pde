// Add your code for this task below
class HappyFace {
  float x, y, r, dx, dy;
  color fillColor, outlineColor;

  HappyFace() {
    this.r = 50;
    this.x = r;
    this.y = r;
    this.dx = 0;
    this.dy = 0;
    this.fillColor = color(255, 255, 0);
    this.outlineColor = color(255, 155, 0);
  }

  HappyFace(float x, float y, float r, float dx, float dy, color fillColor, color outlineColor) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.dx = dx;
    this.dy = dy;
    this.fillColor = fillColor;
    this.outlineColor = outlineColor;
  }

  void display() {
    ellipseMode(CENTER);
    fill(fillColor);
    stroke(outlineColor);
    strokeWeight(r/20);
    ellipse(x,y,2*r,2*r); //face
    arc(x,y,1.6*r,1.6*r,.1*PI,.9*PI); //mouth
    ellipse(x+r/2,y-r/4,r/4,r/2); //right eye
    ellipse(x-r/2,y-r/4,r/4,r/2); //left eye
  }

  void move() {
    x += dx;
    y += dy;

    if ( x > width-r || x < r ) {
      dx = -dx;
      x += dx;
    }

    if (y > height-r || y < r) {
      dy = -dy;
      y += dy;
    }
  }
}
HappyFace face1 = new HappyFace();
HappyFace face2 = new HappyFace(3*width/2, height/2, width/4, 2, -1, color(255,0,0), color(0,255,0));
void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  
  face1.move();
  face2.move();
  
  face1.display();
  face2.display();
}
