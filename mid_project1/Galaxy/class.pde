class StarParticle {
  float[] pos;
  float[] vel;
  float rad;
  float lifetime; //별 수명 //GPT 사용(몇초후 별이 사라지게 요청)

  StarParticle() {
    pos = new float[2];
    vel = new float[2];
    lifetime = 800; //초기 별 수명
  }

  void init(float x, float y, float rad) {
    pos[0] = x;
    pos[1] = y;
    this.rad = rad;
    //불규칙한 속도로 자연스러운 별무리 느낌
    vel[0] = random(-0.4, 0.4); //수평 방향 랜덤
    vel[1] = random(-0.3, 0); //수직 이동-위로 올라감(-0.3)
  }

  //GPT 사용(자연스럽게 회오리치며 퍼져나가다가 사라짐 요청)
  void update(PVector center, float gravity, float windStrength) {
    lifetime -= 0.5; //매 프레임마다 수명 값이 0.5씩 줄어듦

    //중심을 향하는 방향 벡터
    PVector particlePos = new PVector(pos[0], pos[1]);
    PVector direction = PVector.sub(center, particlePos);
    direction.normalize(); //방향 벡터를 정규화

    //별무리가 아치형으로 떨어짐
    vel[0] += windStrength * (noise(pos[1] * 0.01) - 0.5); //무작위 수평 속도(-0.5 ~ 0.5)
    vel[1] += gravity; //중력의 의한 수직 속도

    //회오리 모양으로 회전
    float angularVelocity = 0.2; //회전 속도
    float angle = atan2(direction.y, direction.x) + angularVelocity; //중심으로 향하는 별 + 회전 = 회오리

    //퍼짐 속도 증가
    float spreadFactor = 0.5; //퍼짐 강도
    vel[0] += cos(angle) * spreadFactor; //회전 방향에 따라 x 속도 추가
    vel[1] += sin(angle) * spreadFactor; //회전 방향에 따라 y 속도 추가

    //위치 업데이트
    for (int idx = 0; idx < 2; idx++) {
      pos[idx] += vel[idx];
    }
  }

  void display() {
    fill(255, lifetime * 0.3);
    noStroke();
    //긴 잔상 //GPT 사용(잔상이 길게 남기를 요청)
    ellipse(pos[0], pos[1], 2 * rad * (lifetime / 800), 2 * rad * (lifetime / 800));
  }
}
