void initGame(){
  isEnd = false;  
  isAISkip = false;  
  isPlayerSkip = false;
  turn = 0;
  fill(0, 125, 0); //緑色
  rect(0, 0, width, height); //背景
  stroke(0);
  strokeWeight(1);
  for(int y = 0; y < board.length; y++){
    line(0, y*100, width, y*100);
    line(y*100, 0, y*100, height);
    for(int x = 0; x < board.length; x++)
      board[y][x] = 0; //boardを0で初期化
  }
  board[3][3] = 1;  //(3,3)を黒
  board[4][4] = 1;  //(4,4)を黒
  board[3][4] = -1; //(3,4)を白
  board[4][3] = -1; //(4,3)を白
  fill(0);
  noStroke();
  circle(350, 350, 80);
  circle(450, 450, 80);
  fill(255);
  circle(350, 450, 80);
  circle(450, 350, 80);
  rect(0, 800, width, 100); //画面下の白画面
}
