ArrayList<StarParticle> particles;
float gravity = 0.2;
float windStrength = 0.02;
PVector center; //GPT 사용

void setup() {
  size(600, 600);
  fullScreen();

  particles = new ArrayList<StarParticle>();
  center = new PVector(width / 2, height / 2); //GPT 사용(마우스를 중심으로 별무리가 돌도록 요청)

  //초기별 500개 추가
  for (int idx = 0; idx < 500; idx++) {
    addBasicStar();
  }
}

//마우스 인터랙션
void mousePressed() {
  addParticles(mouseX, mouseY);
}

void mouseDragged() {
  addParticles(mouseX, mouseY);
}

void draw() {
  background(0);
  //마우스에 따라 센터 움직임
  center.x = mouseX;
  center.y = mouseY;

  //별무리
  for (int idx = particles.size() - 1; idx >= 0; idx--) {
    StarParticle particle = particles.get(idx);
    particle.update(center, gravity, windStrength); //별 중심, 중력, 바람 호출
    particle.display(); //별 호출

    // 수명이 0 이하이거나 화면을 벗어난 입자 제거
    if (particle.lifetime <= 0 || particle.pos[0] < 0 || particle.pos[0] > width || particle.pos[1] < 0 || particle.pos[1] > height) {
      particles.remove(idx);
    }
  }

  //10 프레임마다 기본별 30개 추가 //GPT 사용(지속적으로 별이 추가되도록 요청)
  if (frameCount % 10 == 0) {
    addBasicStars(30);
  }

  if (mousePressed) {
    addParticles(mouseX, mouseY);
  }
  
  //ArrayList의 현재 크기
  fill(255);
  textSize(16);
  text("Particles: " + particles.size(), 30, 50); 
}

//기본별 생성 //GPT 사용(마우스를 클릭하지 않아도 배경으로 별이 나오도록 요청)
void addBasicStar() {
  StarParticle newParticle = new StarParticle();
  newParticle.init(random(width), random(height), 1);
  particles.add(newParticle);
}

//기본별 추가 //GPT 사용(지속적으로 별이 추가되도록 요청)
void addBasicStars(int count) {
  for (int idx = 0; idx < count; idx++) {
    addBasicStar();
  }
}

//별생성
void addParticles(float x, float y) {
  for (int idx = 0; idx < 5; idx++) {
    StarParticle newParticle = new StarParticle();
    newParticle.init(x + random(-2, 2), y + random(-2, 2), 1); //GPT 사용(자연스럽게 생성되는 별 요청)
    particles.add(newParticle);
  }
}
