float Y = random(0, 50);
float Y2 = random(0, 800);
float Y3 = random(0, 800);
float Y4 = random(0, 800);
float H = random(500, 700);


void setup() {
  size(360, 640);
  background(0);
  noStroke();
}

void mousePressed (){
}

void draw() {
  fill(255);
  background(0);
  //if (mouseX >= 0
  //&& mouseX <= width / 4
  //&& mouseY >= Y
  //&& mouseY <= Y + 150) {
  //  fill(255, 0, 0);
  //}
  //line1
  quad(0, Y, width / 4, Y, width / 4, Y + 150, 0, Y + 150);
  quad(0, Y - H, width / 4, Y - H,
  width / 4, Y - H + 150, 0, Y - H + 150);
  quad(0, Y - H * 2, width / 4, Y - H * 2,
  width / 4, Y - H * 2 + 150, 0, Y - H * 2 + 150);
  Y = Y + 1;
  
  //line2
  quad(width / 4, Y - 150, width / 4 * 2, Y - 150, 
  width / 4 * 2, Y, width / 4, Y);
  quad(width / 4, Y - 150 - H - Y2, width / 4 * 2, Y - 150 - H - Y2, 
  width / 4 * 2, Y - H - Y2, width / 4, Y - H - Y2);
  quad(width / 4, Y - 150 - H * 2 - Y2, width / 4 * 2, Y - 150 - H * 2 - Y2, 
  width / 4 * 2, Y - H * 2 - Y2, width / 4, Y - H * 2 - Y2);
  
  //line3
  quad(width / 4 * 2, Y - Y3, width / 4 * 3, Y - Y3, 
  width / 4 * 3, Y + 150 - Y3, width / 4 * 2, Y + 150 - Y3);
  quad(width / 4 * 2, Y - Y3 - H, width / 4 * 3, Y - Y3 - H, 
  width / 4 * 3, Y + 150 - Y3 - H, width / 4 * 2, Y + 150 - Y3 - H);
  quad(width / 4 * 2, Y - Y3 - H * 2, width / 4 * 3, Y - Y3 - H * 2, 
  width / 4 * 3, Y + 150 - Y3 - H * 2, width / 4 * 2, Y + 150 - Y3 - H * 2);

  
  //line4
  quad(width / 4 * 3, Y - 150 - Y4, width / 4 * 4, Y - 150 - Y4, 
  width / 4 * 4, Y - Y4, width / 4 * 3, Y - Y4);
  quad(width / 4 * 3, Y - 150 - Y4 - H, width / 4 * 4, Y - 150 - Y4 - H, 
  width / 4 * 4, Y - Y4 - H, width / 4 * 3, Y - Y4 - H);
  quad(width / 4 * 3, Y - 150 - Y4 - H * 2, width / 4 * 4, Y - 150 - Y4 - H * 2, 
  width / 4 * 4, Y - Y4 - H * 2, width / 4 * 3, Y - Y4 - H * 2);
}
