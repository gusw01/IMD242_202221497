void setup() {
  size(640, 480);
  background(255, 210, 210);
  //fullScreen();
}
  
void draw() {
  //background(0);
  //circle(mouseX, mouseY, 150);
  noStroke();
  //arm-left
  fill(249, 130, 180);
  ellipse(width / 2 - 120, height / 2 - 70, 100, 100);
  //legs
  fill(155, 50, 50);
  ellipse(width / 2 - 60 + 10, height / 2 +100, 120, 140);
  ellipse(width / 2 + 60 + 10, height / 2 +100, 120, 140);
  fill(255, 79, 79);
  ellipse(width / 2 - 60, height / 2 +100, 120, 140);
  ellipse(width / 2 + 60, height / 2 +100, 120, 140);
  //face
  fill(249, 130, 180);
  circle(width / 2, height / 2, 300);
  fill(249, 150, 182);
  circle(width / 2 - 10, height / 2, 290);
  //arm-right
  fill(249, 150, 182);
  ellipse(width / 2 + 120, height / 2 - 70, 100, 100);
  //mouse
  fill(155, 50, 50);
  circle(width / 2 - 30, height / 2 + 10, 70);
  fill(255, 79, 79);
  circle(width / 2 - 30 + 5, height / 2 + 10 + 5, 60);
  //eyes
  fill(0);
  ellipse(width / 2 - 60, height / 2 - 85, 40, 60);
  ellipse(width / 2 - 60 + 70, height / 2 - 85, 40, 60);
  fill(255);
  circle(width / 2 - 60 - 8, height / 2 - 85 - 15, 15);
  circle(width / 2 - 60 - 8 + 70, height / 2 - 85 - 15, 15);
  fill(0, 100, 200);
  ellipse(width / 2 - 60, height / 2 - 85 + 15, 25, 20);
  ellipse(width / 2 - 60 + 70, height / 2 - 85 + 15, 25, 20);
  //cheek
  fill(255, 79, 79);
  ellipse(width / 2 - 100, height / 2 - 50, 35, 20);
  ellipse(width / 2 - 100 + 150, height / 2 - 50, 35, 20);
  
  //cake
  fill(255, 250, 200);
  //triangle(120, 300, 232, 80, 344, 300);
  triangle(mouseX + 5 , mouseY - 20 ,
  mouseX - 60, mouseY + 10, mouseX + 40, mouseY + 10);
  //square(120, 100, 220);
  //quad(152, 124, 344, 80, 276, 252, 120, 304);
  quad(mouseX - 60, mouseY + 10, mouseX + 40, mouseY + 10,
  mouseX + 40, mouseY + 60, mouseX - 60, mouseY + 60);
  fill(255, 215, 50);
  quad(mouseX - 55, mouseY + 30, mouseX + 35, mouseY + 30,
  mouseX + 35, mouseY + 45, mouseX - 55, mouseY + 45);
  fill(255, 30, 30);
  circle(mouseX - 10, mouseY - 12, 40);
  fill(255);
  circle(mouseX - 15, mouseY - 20, 10);
}

void mouseMoved() {
  //background(mouseX, mouseY, 0);
  background(255, 210, 210);
  noStroke();
  //arm-left
  fill(249, 130, 180);
  ellipse(width / 2 - 120, height / 2 - 70, 100, 100);
  //legs
  fill(155, 50, 50);
  ellipse(width / 2 - 60 + 10, height / 2 +100, 120, 140);
  ellipse(width / 2 + 60 + 10, height / 2 +100, 120, 140);
  fill(255, 79, 79);
  ellipse(width / 2 - 60, height / 2 +100, 120, 140);
  ellipse(width / 2 + 60, height / 2 +100, 120, 140);
  //face
  fill(249, 130, 180);
  circle(width / 2, height / 2, 300);
  fill(249, 150, 182);
  circle(width / 2 - 10, height / 2, 290);
  //arm-right
  fill(249, 150, 182);
  ellipse(width / 2 + 120, height / 2 - 70, 100, 100);
  //mouse
  fill(155, 50, 50);
  circle(width / 2 - 20, height / 2 + 40, 170);
  fill(255, 79, 79);
  circle(width / 2 - 20 +5, height / 2 + 40 + 10, 150);
  //eyes
  fill(0);
  ellipse(width / 2 - 60, height / 2 - 85, 40, 60);
  ellipse(width / 2 - 60 + 70, height / 2 - 85, 40, 60);
  fill(255);
  circle(width / 2 - 60 - 8, height / 2 - 85 - 15, 15);
  circle(width / 2 - 60 - 8 + 70, height / 2 - 85 - 15, 15);
  fill(0, 100, 200);
  ellipse(width / 2 - 60, height / 2 - 85 + 15, 25, 20);
  ellipse(width / 2 - 60 + 70, height / 2 - 85 + 15, 25, 20);
  //cheek
  fill(255, 79, 79);
  ellipse(width / 2 - 100, height / 2 - 50, 35, 20);
  ellipse(width / 2 - 100 + 150, height / 2 - 50, 35, 20);
}
  
  
