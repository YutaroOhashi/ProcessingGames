class Ball{
  float x, y, dia, r, xDir, yDir, dis;
  Ball(){
    x = width / 2;
    y = height / 3 * 2;
    dia = 10;
    xDir = 0;
    yDir = random(2, 4);
    r = dia / 2;
  }
  void move(){
    if (width < x + r) {  //右壁衝突
      xDir = -xDir;
      x = width - ball.r;
    }
    else if (x - r < 0) {  //左壁衝突
      xDir = -xDir;
      x = ball.r;
    }
    else if (y - r < 0) {  //天井衝突
      yDir = -yDir; 
      y = ball.r;
    }
    else if (racketHit()){  //ラケット衝突 
      yDir = -yDir; 
      dis = ball.x - player.x; 
      xDir = dis / 6;
      player.bonus = -1;
    }
    else if (y > height + 100) {  //ボールを落とす
      xDir = 0;
      yDir = random(2, 4);
      x = width / 2;
      y = height / 3 * 2;
      player.life --;
    }
    x += xDir; 
    y += yDir;
    fill(255);
    circle(x, y, dia);
  }
  boolean racketHit(){
    if(y + r < player.y - player.h - area) //上
      return false; 
    if(player.y < y + r) //下
      return false; 
    if(x + r < player.x - player.w - area) //左
      return false;
    if(player.x + player.w + area < x - r) //右
      return false;
    return true;
  }
}
