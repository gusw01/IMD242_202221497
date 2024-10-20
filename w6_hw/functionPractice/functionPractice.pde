int randomSeedValue = int(random(100000000));

void setup() {
  size(800, 800);
}

void mousePressed() {
  randomSeedValue = int(random(100000000));
  println(randomSeedValue);
}

void draw() {
  background(255);
  randomSeed(randomSeedValue);
  for (int n = 0; n < 5; n++) {
    building(random(width),
      random(100, 400),
      random(60, 120),
      int(random(3, 10)));
  }
}

void building(float x, float h, float width, int floors) {
  //건물
  fill(random(100, 255), random(100, 255), random(100, 255));
  rect(x, height - h, width, h);

  //창문
  float windowWidth = width / 3;
  float windowHeight = h / floors;

  fill(255);
  for (int i = 1; i < floors; i++) {
    for (int n = 0; n < 3; n++) {
      rect(x + n * windowWidth + 2, height - (i + 1) * windowHeight + 2, windowWidth - 5, windowHeight - 5);
    }
  }

  //문
  fill(171, 171, 171);
  rect(x + width / 3, height - windowHeight, windowWidth, windowHeight);

  stroke(200, 200, 200);
  strokeWeight(2);
  line(x + (width / 2), height - windowHeight, x + (width / 2), height);

  noStroke();
}
