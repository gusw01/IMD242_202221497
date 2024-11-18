let cp; //capture 약자
let canvasW, canvasH;
let scale;
let cpW, cpH;

function setup() {
  canvasW = 640;
  canvasH = 480;
  createCanvas(canvasW, canvasH);

  scale = 0.1;
  cpW = canvasW * scale;
  cpH = canvasH * scale;
  cp = createCapture(VIDEO);
  cp.size(cpW, cpH);
  cp.hide();
}

function draw() {
  background(0);
  // circle(mouseX, mouseY, 10);
  // image(cp, 0, 0, width, height); //이미지 데이터, 위치값
  // console.log(cp.get(10, 10));
  //x, y값 -> 해당 위치에서 rgb값이 array로 묶여있는 걸 뱉어줌(r, g, b, a)

  for (let y = 0; y < cpH; y++) {
    for (let x = 0; x < cpW; x++) {
      let colour = cp.get(x, y);
      let b = brightness(colour);
      let diameter = map(b, 0, 255, 0, 20);
      fill(255);
      circle(x * 10 + 5, y * 10 + 5, diameter);
      // fill(colour[0], colour[1], colour[2]);
      // circle(x * 10 + 5, y * 10 + 5, 10);
    }
  }
}
