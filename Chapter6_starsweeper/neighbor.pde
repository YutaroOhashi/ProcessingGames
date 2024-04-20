void neighbor(){
  fill(255);
  if(Y > 0){ // 1行目以下
    if(board[Y-1][X] == 0){ //上
      rect(X*50, (Y-1)*50, 50, 50); 
      board[Y-1][X] = -1;
      openN++;
    }
    if(X > 0){
      if(board[Y-1][X-1] == 0){ //左上
        rect((X-1)*50, (Y-1)*50, 50, 50); 
        board[Y-1][X-1] = -1;
        openN++;
      }
    }
    if(X < board.length-1){ 
      if(board[Y-1][X+1] == 0){ //右上
        rect((X+1)*50, (Y-1)*50, 50, 50); 
        board[Y-1][X+1] = -1;
        openN++;
      }
    }
  }
  if(Y < board.length-1){ //8行目より上
    if(board[Y+1][X] == 0){ //下
      rect(X*50, (Y+1)*50, 50, 50); 
      board[Y+1][X] = -1;
      openN++;
    }
    if(X > 0){
      if(board[Y+1][X-1] == 0){ //左下
        rect((X-1)*50, (Y+1)*50, 50, 50); 
        board[Y+1][X-1] = -1;
        openN++;
      }
    }
    if(X < board.length-1){
      if(board[Y+1][X+1] == 0){ //右下
        rect((X+1)*50, (Y+1)*50, 50, 50); 
        board[Y+1][X+1] = -1;
        openN++;
      }
    }
  }
  if(X > 0){
    if(board[Y][X-1] == 0){ //左
      rect((X-1)*50, Y*50, 50, 50); 
      board[Y][X-1] = -1;
      openN++;
    }
  }
  if(X < board.length-1){
    if(board[Y][X+1] == 0){ //右
      rect((X+1)*50, Y*50, 50, 50); 
      board[Y][X+1] = -1;
      openN++;
    }
  }
}
