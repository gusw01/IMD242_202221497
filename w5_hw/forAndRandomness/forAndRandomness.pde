int tileNum;
int randomSeed = 0;
float noiseMult = 1;

void setup() {
  size(800, 800);
  //background (0);
}

void draw() {
  noiseSeed(randomSeed);
  randomSeed(randomSeed);
  background(0);
  tileNum = int(map(mouseX, 0, width, 3, 16 + 1));
  noiseMult = map(mouseY, 0, height, 0.01, 0.0001);
  //noiseMult = pow(10, map(mouseY, 0, height, -1, -10));
  float tileSize = width/ float(tileNum);
  for (int row = 0; row < tileNum; row++) {
    for (int col = 0; col < tileNum; col++) {
      float rectX = tileSize * col;
      float rectY = tileSize * row;
      float centerX = rectX + tileSize * 0.5;
      float centerY = rectY + tileSize * 0.5;
      //float randomVal = random(1);
      float noiseVal = noise(centerX * noiseMult, centerY * noiseMult);
      fill(0);
      //noStroke();
      //rect(rectX, rectY, tileSize, tileSize);
      stroke(255);
      circle(centerX, centerY, tileSize);
      pushMatrix();
      translate(centerX, centerY);
      rotate(radians(360 * noiseVal));
      line(0, 0, tileSize * -0.5,0);
      fill(255);
      circle(tileSize * -0.4, 0, tileSize * -0.2);
      popMatrix();
    }
  }
}
