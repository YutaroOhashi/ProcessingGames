void AI(){
  int reachXY;
  reachXY = reach();
  if(reachXY == 100){
    do{
      x = int(random(3));
      y = int(random(3));
    } while(board[y][x] != 1);
  }
  else {
    x = reachXY / 10;
    y = reachXY % 10;
  }
  line(x*200, y*200, x*200+200, y*200+200);
  line(x*200, y*200+200, x*200+200, y*200);
  board[y][x] = 3;
  win();
  turn++;
}
