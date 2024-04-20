void initGame(){
  ball = new Ball();
  player = new Player();
  block = new Block[3][10][10];
  item = new Item[3];
  area = 5;
  isEnd = false;
  blockN[0] = 0;
  blockN[1] = 0;
  blockN[2] = 0;
  for (int i = 0; i < item.length; i++)
    item[i] = new Item();
  for (stage = 0; stage < 3; stage++){
    for (y = 0; y < 10; y++){
      for(x = 0; x < 10; x++){
        block[stage][y][x] = new Block();
        block[stage][y][x].x = 70 + x * 50;
        block[stage][y][x].y = 50 + y * 20;
        if(stage == 0)  
          if((y + x) % 2 == 0){  
            block[stage][y][x].life = 1;
            blockN[stage]++;
          }
        if(stage == 1)  
          if(y % 2 == 0){
            block[stage][y][x].life = 1;
            blockN[stage]++;
          }
        if(stage == 2){
          block[stage][y][x].life = 1;
          blockN[stage]++;
        }
      }
    }
  }
  stage = 0;
}
