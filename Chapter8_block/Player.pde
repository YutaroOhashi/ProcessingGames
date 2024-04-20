class Player{
  float x, y, w, h, easing, targetX;
  int score, life, bonus;
  Player(){
    x = width/2;
    y = 470;
    easing = 0.1;
    life = 10;
    score = 0;
    bonus = -1;
    w = 25;
    h = 5;
  }
  void move(){
    targetX = mouseX;
    x += (targetX - x) * easing; 
    rectMode(RADIUS);
    rect(x, y, w, h);
  }
}
