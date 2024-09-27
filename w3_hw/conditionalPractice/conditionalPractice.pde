void setup() {
  size(640, 360);
  rectMode(CENTER);
}

void draw() {
  background(0);

  if (mouseY < height / 4 ) {
    line(width * .5 - 50, height / 8 - 40,
      width * .5 + 50, height / 8 + 40);
  } else if (mouseY < height / 4 * 2) {
    square(width * .5, height / 8 * 3, 80);
  } else if (mouseY < height / 4 * 3) {
    quad(width * .5 - 80, height / 8 * 5 - 20, width * .5 + 80, height / 8 * 5 - 20, 
    width * .5 + 80,  height / 8 * 5 + 20,  width * .5 - 80,  height / 8 * 5 + 20);
  } else {
    circle(width * .5, height / 8 * 7, 80);
  }

  stroke(127);
  strokeWeight(4);
  line(0, height / 4, width, height / 4);
  line(0, height / 4 * 2, width, height / 4 * 2);
  line(0, height / 4 * 3, width, height / 4 * 3);
}
