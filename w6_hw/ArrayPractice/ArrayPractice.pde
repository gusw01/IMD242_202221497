int[] fruitAmts;
String[] fruitNames = {
  "apple", "banana", "mango", "kiwi", "peach"};
//int randomSeed = 0;
int randomSeedValue = int(random(100000000));

void setup() {
  size(1280, 720);
  randomSeedValue = int(random(100000000));
  fruitAmts = new int[fruitNames.length]; //초기화
  for (int n = 0; n < fruitAmts.length; n++) {
    if (n == 0) {
      fruitAmts[n] = 50;
    } else {
      fruitAmts[n] = int(random(5, 100));
    }
  }
}

float barGap = 80;
float barWidth = 30;

void draw () {
  background(0);
  strokeWeight(barWidth);
  //randomSeed(randomSeed);
  randomSeed(randomSeedValue);

  float totalwidth = barWidth * fruitNames.length + barGap * (fruitAmts.length -1);
  int totalAmt = 0;
  for (int n = 0; n < fruitAmts.length; n++) {
    totalAmt += fruitAmts[n];
  }
  float avgAmt = totalAmt / (float)fruitAmts.length;

  for (int n = 0; n < fruitNames.length; n++) {
    float x = (width - totalwidth) * 0.5 + n * (barWidth + barGap);
    int barColor = color(random(100, 255), random(100, 255), random(100, 255));
    //stroke(random(100, 255), random(100, 255), random(100, 255));
    stroke(barColor);
    strokeCap(SQUARE); //네모나게
    textAlign(CENTER);
    textSize(24);
    
    //fill(random(100, 255), random(100, 255), random(100, 255)); //텍스트 컬러
    fill(barColor); 
    line(x, height * 0.5 + 70, x, height * 0.5 - 1 * fruitAmts[n]);
    //rect(x, height * 0.5 + 15 , barWidth, 10);
    text(fruitNames[n], x, height * 0.5 + 30 + 70);
    text(fruitAmts[n], x, height * 0.5 - 1 * fruitAmts[n] - 20);
  }
  fill(255); // 텍스트 컬러
  textSize(20);
  textAlign(LEFT);
  text("Total  " + totalAmt, width * 0.5 - 50, height * 0.5 - 160);
  text("Average  " + nf(avgAmt, 0, 2), width * 0.5 - 70, height * 0.5 + 160);  // 평균 텍스트 (소수점 2자리까지)
}
