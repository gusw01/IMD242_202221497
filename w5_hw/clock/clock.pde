void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  translate(width / 2, height / 2);

  stroke(0);
  strokeWeight(4);
  noFill();
  ellipse(0, 0, 700, 700);

  for (int idx = 0; idx < 12; idx++) {
    stroke(255);
    strokeWeight(3);
    line(0, -350, 0, -310);
    rotate(radians(30));
  }


  for (int idx = 0; idx < 60; idx++) {
    stroke(126, 126, 126);
    strokeWeight(3);
    if (idx % 5 != 0) {
      line(0, -350, 0, -330);
    }
    rotate(radians(6));
  }


  int s = second();
  int m = minute();
  int h = hour();

  // 초침
  stroke(255, 0, 0);
  strokeWeight(3);
  pushMatrix();
  rotate(map(s, 0, 60, 0, TWO_PI));
  line(0, 0, 0, -300);
  popMatrix();

  // 분침
  stroke(255);
  strokeWeight(8);
  pushMatrix();
  rotate(map(m, 0, 60, 0, TWO_PI)); 
  line(0, 0, 0, -280);
  popMatrix();

  // 시침
  stroke(255);
  strokeWeight(10);
  pushMatrix();
  float hourAngle = map(h % 12, 0, 12, 0, TWO_PI) + map(m, 0, 60, 0, radians(30));
  rotate(hourAngle);
  line(0, 0, 0, -200);
  popMatrix();

  // 시계 중심점
  fill(255);
  ellipse(0, 0, 20, 20);
}
