float Y = random(0, 50);
float Y2 = random(0, 800);
float Y3 = random(0, 800);
float Y4 = random(0, 800);
float H = random(500, 700);


void setup() {
  size(360, 640);
  background(0);
  //noStroke();
}

void draw() {
  fill(255);
  background(0);
  //noStroke();
  stroke(0);
  strokeWeight(1);
  Y = Y + 1;

  //line1
  quad(0, Y, width / 4, Y, width / 4, Y + 150, 0, Y + 150);
  quad(0, Y - H, width / 4, Y - H,
    width / 4, Y - H + 150, 0, Y - H + 150);
  quad(0, Y - H * 2, width / 4, Y - H * 2,
    width / 4, Y - H * 2 + 150, 0, Y - H * 2 + 150);

  //line2
  quad(width / 4, Y - 150, width / 4 * 2, Y - 150,
    width / 4 * 2, Y, width / 4, Y);
  quad(width / 4, Y - 150 - H - Y2, width / 4 * 2, Y - 150 - H - Y2,
    width / 4 * 2, Y - H - Y2, width / 4, Y - H - Y2);
  quad(width / 4, Y - 150 - H * 2 - Y2, width / 4 * 2, Y - 150 - H * 2 - Y2,
    width / 4 * 2, Y - H * 2 - Y2, width / 4, Y - H * 2 - Y2);

  //line3
  quad(width / 4 * 2, Y - 150 * 2, width / 4 * 3, Y  - 150 * 2,
    width / 4 * 3, Y - 150, width / 4 * 2, Y - 150);
  quad(width / 4 * 2, Y - 150 * 2 - Y3 - H, width / 4 * 3, Y - 150 * 2 - Y3 - H,
    width / 4 * 3, Y - 150 - Y3 - H, width / 4 * 2, Y - 150 - Y3 - H);
  quad(width / 4 * 2, Y - 150 * 2 - Y3 - H * 2, width / 4 * 3, Y - 150 * 2 - Y3 - H * 2,
    width / 4 * 3, Y - 150 - Y3 - H * 2, width / 4 * 2, Y - 150 - Y3 - H * 2);

  //line4
  quad(width / 4 * 3, Y - 150 * 3, width / 4 * 4, Y - 150 * 3,
    width / 4 * 4, Y - 150 * 2, width / 4 * 3, Y - 150 * 2);
  quad(width / 4 * 3, Y - 150 * 3 - Y4 - H, width / 4 * 4, Y - 150 * 3 - Y4 - H,
    width / 4 * 4, Y - 150 * 2 - Y4 - H, width / 4 * 3, Y - 150 * 2 - Y4 - H);
  quad(width / 4 * 3, Y - 150 * 3 - Y4 - H * 2, width / 4 * 4, Y - 150 * 3 - Y4 - H * 2,
    width / 4 * 4, Y - 150 * 2 - Y4 - H * 2, width / 4 * 3, Y - 150 * 2 - Y4 - H * 2);

  //bottom
  stroke(0);
  strokeWeight(3);

  //tap1
  fill(0);
  stroke(255, 0, 151);
  if (mouseX >= 0
    && mouseX <= width / 4
    && mouseY >= height - width / 4
    && mouseY <= height) {
    fill(101, 0, 59);
  }
  rect(0, height - width / 4, width / 4, width / 4, 5);

  noStroke();
  fill(255, 0, 151, 0);
  if (mousePressed) {
    if (mouseX >= 0
      && mouseX <= width / 4
      && mouseY >= 0
      && mouseY <= height) {
      fill(255, 0, 151, 70);
    }
    rect(0, 0, width / 4, height);
  }

  //tap2
  fill(0);
  stroke(253, 255, 35);
  if (mouseX >= width / 4
    && mouseX <= width / 4 * 2
    && mouseY >= height - width / 4
    && mouseY <= height) {
    fill(93, 94, 12);
  }
  rect(width / 4, height - width / 4, width / 4, width / 4, 5);

  noStroke();
  fill(253, 255, 35, 0);
  if (mousePressed) {
    if (mouseX >= width / 4
      && mouseX <= width / 4 * 2
      && mouseY >= 0
      && mouseY <= height) {
      fill(253, 255, 35, 70);
    }
    rect(width / 4, 0, width / 4, height);
  }

  //tap3
  fill(0);
  stroke(76, 255, 77);
  if (mouseX >= width / 4 * 2
    && mouseX <= width / 4 * 3
    && mouseY >= height - width / 4
    && mouseY <= height) {
    fill(22, 77, 22);
  }
  rect(width / 4 * 2, height - width / 4, width / 4, width / 4, 5);

  noStroke();
  fill(76, 255, 77, 0);
  if (mousePressed) {
    if (mouseX >= width / 4 * 2
      && mouseX <= width / 4 * 3
      && mouseY >= 0
      && mouseY <= height) {
      fill(76, 255, 77, 70);
    }
    rect(width / 4 * 2, 0, width / 4, height);
  }
  
  //tap4
  fill(0);
  stroke(66, 134, 255);
  if (mouseX >= width / 4 * 3
    && mouseX <= width 
    && mouseY >= height - width / 4
    && mouseY <= height) {
    fill(20, 38, 77);
  }
  rect(width / 4 * 3, height - width / 4, width / 4, width / 4, 5);

  noStroke();
  fill(66, 134, 255, 0);
  if (mousePressed) {
    if (mouseX >= width / 4 * 3
      && mouseX <= width
      && mouseY >= 0
      && mouseY <= height) {
      fill(66, 134, 255, 70);
    }
    rect(width / 4 * 3, 0, width / 4, height);
  }
}