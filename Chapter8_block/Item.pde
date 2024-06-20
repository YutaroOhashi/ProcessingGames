class Item{
  int x, y, size, life, imageN;
  PImage[] img = new PImage[3];
  Item(){
    size = 40;
    life = 0;
    img[0] = loadImage("heart.png");
    img[1] = loadImage("bomb.png");
    img[2] = loadImage("coin.png");
  }
  void display(){
    if(life == 1){
      y ++;
      imageMode(CENTER);
      image(img[imageN], x, y, size, size);
      if(itemHit()){
        if(imageN == 0)  player.life++;
        if(imageN == 1)  player.life--;
        else             player.score += 100;
        life = 0;
      }
    }
  }
  boolean itemHit(){
    if(y + size / 2 < player.y - player.h) //上 
      return false;
    if(player.y + player.h < y - size / 2) //下 
      return false; 
    if(x + size / 2 < player.x - player.w) //左 
      return false; 
    if(player.x + player.w < x - size / 2) //右 
      return false; 
    return true;
  }
}
