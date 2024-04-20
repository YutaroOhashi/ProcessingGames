Ball ball;
Player player;
Block[][][] block;
Item[] item;
int stage, area, x, y, itemN;
int[] blockN = new int[3];
boolean isEnd;
void setup(){
  size(600, 500);
  initGame();
}
void draw(){
  background(0);
  ball.move();
  player.move();
  for (y = 0; y < 10; y ++)
    for (x = 0; x < 10; x ++)
      block[stage][y][x].display();
  for(Item i : item)
    i.display();
  fill(255);
  textAlign(LEFT);
  textSize(15);
  text("life:" + player.life, 20, 20);
  text("score:" + player.score, 100, 20);
}
