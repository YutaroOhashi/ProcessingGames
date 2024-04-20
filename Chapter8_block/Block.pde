class Block{
  int life, x, y, w, h, colorCode;
  Block(){
    life = 0;
    w = 20;
    h = 5;
    colorCode = int(random(20));
  }
  void display(){
    if (life == 1){ //ブロックがある場合
      if (topDownHit()){
        ball.yDir = -ball.yDir;
        player.bonus += 1;
        player.score += 10 + player.bonus;
        blockN[stage]--;
        life = 0;
        if(colorCode == 0) {     //red
          player.score += 90;
          itemN = (itemN == 3) ? 0 : itemN; 
          item[itemN].x = x;
          item[itemN].y = y;
          item[itemN].imageN = int(random(3));
          item[itemN].life = 1;
          itemN++;
        }
        else if (colorCode == 1) //orange  
          player.score += 40;  
        else if (colorCode == 2) //yellow 
          player.score += 30; 
        else if (colorCode == 3) //green 
          player.score += 20;  
        else if (colorCode == 4) //blue 
          player.score += 10;
      }
      else if (sideHit()){
        ball.xDir = -ball.xDir;
        player.bonus += 1;
        player.score += 10 + player.bonus;
        blockN[stage]--;
        life = 0;
        if(colorCode == 0) {     //red
          player.score += 90;
          itemN = (itemN == 3) ? 0 : itemN; 
          item[itemN].x = x;
          item[itemN].y = y;
          item[itemN].imageN = int(random(3));
          item[itemN].life = 1;
          itemN++;
        }
        else if (colorCode == 1) //orange  
          player.score += 40;  
        else if (colorCode == 2) //yellow 
          player.score += 30; 
        else if (colorCode == 3) //green 
          player.score += 20;  
        else if (colorCode == 4) //blue 
          player.score += 10;
      }
      noStroke();
      if(colorCode == 0)        //red
        fill(255, 0, 0);
      else if (colorCode == 1) //orange  
        fill(255, 150, 50);  
      else if (colorCode == 2) //yellow 
        fill(255, 255, 0); 
      else if (colorCode == 3) //green 
        fill(0, 125, 0);  
      else if (colorCode == 4) //blue
        fill(135, 200, 250);
      else  fill(255);
      rectMode(RADIUS);
      rect(x, y, w, h);
    }
    if(blockN[stage] == 0)   
      if(stage == 2)
        endMessage(true);
      else  stage++;
    else if(player.life <= 0)
      endMessage(false);
  }
  boolean topDownHit(){
    if(ball.y + ball.r < y - h - area) //上
      return false;
    if(y + h + area < ball.y - ball.r) //下
      return false;
    if(ball.x < x - w) //左              
      return false;
    if(x + w < ball.x) //右              
      return false;
    return true;
  }
  boolean sideHit(){
    if(ball.y + ball.r < y - h - area) //上
      return false;
    if(y + h + area < ball.y - ball.r) //下
      return false;
    if(ball.x + ball.r < x - w - area) //左
      return false;
    if(x + w + area < ball.x - ball.r) //右
      return false;
    return true;
  }
}
