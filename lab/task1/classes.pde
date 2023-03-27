//REQ: create a Hero class with the specs mentioned in the assignment document.
class Hero {
  float x, y, scale, speedX, speedY;
  color torsoColor, beltColor;

  Hero() {
    x = width/2;
    y = height/2;
    scale = 1;
    speedX = 1;
    speedY = 0;
    torsoColor = color(19,0,205);
    beltColor = color(0,255,255);
  }

  Hero(float x1, float y1, float scale1) {
    x = x1;
    y = y1;
    scale = scale1;
    speedX = 1;
    speedY = 0;
    torsoColor = color(19,0,205);
    beltColor = color(0,255,255);
  }

  Hero(float x1, float y1, float scale1, float sx, float sy, color torsoClr, color beltClr) {
    x = x1;
    y = y1;
    scale = scale1;
    speedX = sx;
    speedY = sy;
    torsoColor = torsoClr;
    beltColor = beltClr;
  }

  void move() {
    x += speedX;
    y += speedY;

    if (x < -100*scale) {
      x = width + 100*scale;
    } else if (x > width + 100*scale) {
      x = -100*scale;
    }

    if (y < -150*scale) {
      y = height + 150*scale;
    } else if (y > height + 150*scale) {
      y = -150*scale;
    }
  }

  void display() {
    pushMatrix();
    translate(x, y);
    scale(scale);



    // torso
    noStroke();
    fill(torsoColor);
    rect(-35, -20, 70, 100);

    // head
    fill(255);
    ellipse(0, -50, 70, 70);

    // eyes
    fill(0);
    ellipse(-20, -60, 20, 30);
    ellipse(20, -60, 20, 30);

    // mouth
    strokeWeight(5);
    stroke(0);
    noFill();
    arc(0, -35, 40, 40, 0.2*PI, 0.8*PI);

    // legs
    fill(torsoColor);
    strokeWeight(3);
    stroke(torsoColor);
    line(-25, 60, -40, 90);
    line(25, 60, 40, 90);
    fill(torsoColor);
    strokeWeight(3);
    stroke(torsoColor);
    line(-25, 10, -50, -40);
    line(25, 10, 50, 40);
        // belt
    strokeWeight(2);
    stroke(beltColor);
    fill(beltColor);
    rect(-35, 20, 70, 10);

    popMatrix();
  }
}
