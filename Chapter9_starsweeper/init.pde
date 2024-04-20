void initGame(){
  int i, x, y;
  isEnd = false;  
  openN = 0; 
  flagN = 0;
  resetTime = millis();
  background(200);
  //配列の初期化
  for(y = 0; y < board.length; y++)
    for(x = 0; x < board.length; x++)
      board[y][x] = new Board();
    //線を書き9を配置
  stroke(0);
  for(i = 0; i < board.length; i++){
    line(i*50, 0, i*50, height);
    line(0, i*50, width, i*50);
    do {
      x = int(random(board.length));
      y = int(random(board.length));
    } while(board[y][x].num == 9);
    board[y][x].num = 9;
  }
  //周辺の9の数を計算
  for(y = 0; y < board.length; y++){
    for(x = 0; x < board.length; x++){
      if(board[y][x].num != 9){
        if(y > 0){ // 1行目以下
          if(board[y-1][x].num == 9) //上
            board[y][x].num ++; 
          if(x > 0)      
            if(board[y-1][x-1].num == 9) //左上   
              board[y][x].num ++; 
          if(x < board.length-1)  
            if(board[y-1][x+1].num == 9) //右上  
              board[y][x].num ++; 
        }
        if(y < board.length-1){ //8行目より上
          if(board[y+1][x].num == 9) //下 
            board[y][x].num ++; 
          if(x > 0)      
            if(board[y+1][x-1].num == 9) //左下  
              board[y][x].num ++; 
          if(x < board.length-1)  
            if(board[y+1][x+1].num == 9) //右下
              board[y][x].num ++; 
        }
        if(x > 0)      
          if(board[y][x-1].num == 9) //左
            board[y][x].num ++;
        if(x < board.length-1)  
          if(board[y][x+1].num == 9) //右
            board[y][x].num ++;
      }
    }
  }
}
