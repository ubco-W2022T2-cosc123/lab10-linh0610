// Add your code for this task below
HappyFace face1 = new HappyFace(50, 100, 40, color(255, 255, 0), color(255, 155, 0), 3, 5);
HappyFace face2 = new HappyFace(20, 10, 60, color(255, 0, 0), color(0, 255, 0), 5, 2);
HappyFace face3 = new HappyFace(10, 50, 30, color(0, 0, 255), color(255, 255, 255), 2, 4);

void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  
  face1.move();
  face2.move();
  face3.move();
  
  face1.display();
  face2.display();
  face3.display();
  face1.bounce();
  face2.bounce();
  face3.bounce();
}

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
  
  HappyFace(float x, float y, float r, color fillColor, color outlineColor, float dx, float dy) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.fillColor = fillColor;
    this.outlineColor = outlineColor;
    this.dx = dx;
    this.dy = dy;
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
    this.bounce();
  }
  void bounce(){
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
