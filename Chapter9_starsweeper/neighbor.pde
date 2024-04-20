void neighbor(){
  fill(255);
  if(Y > 0){ // 1行目以下
    if(board[Y-1][X].num == 0 && 
       board[Y-1][X].state == "closed"){ //上
      rect(X*50, (Y-1)*50, 50, 50); 
      board[Y-1][X].state = "open";
      openN++;
    }
    if(X > 0){
      if(board[Y-1][X-1].num == 0 && 
         board[Y-1][X-1].state == "closed"){ //左上
        rect((X-1)*50, (Y-1)*50, 50, 50); 
        board[Y-1][X-1].state = "open";
        openN++;
      }
    }
    if(X < board.length-1){ 
      if(board[Y-1][X+1].num == 0 && 
         board[Y-1][X+1].state == "closed"){ //右上
        rect((X+1)*50, (Y-1)*50, 50, 50); 
        board[Y-1][X+1].state = "open";
        openN++;
      }
    }
  }
  if(Y < board.length-1){ //8行目より上
    if(board[Y+1][X].num == 0 && 
       board[Y+1][X].state == "closed"){ //下
      rect(X*50, (Y+1)*50, 50, 50); 
      board[Y+1][X].state = "open";
      openN++;
    }
    if(X > 0){
      if(board[Y+1][X-1].num == 0 && 
         board[Y+1][X-1].state == "closed"){ //左下
        rect((X-1)*50, (Y+1)*50, 50, 50); 
        board[Y+1][X-1].state = "open";
        openN++;
      }
    }
    if(X < board.length-1){
      if(board[Y+1][X+1].num == 0 && 
         board[Y+1][X+1].state == "closed"){ //右下
        rect((X+1)*50, (Y+1)*50, 50, 50); 
        board[Y+1][X+1].state = "open";
        openN++;
      }
    }
  }
  if(X > 0){
    if(board[Y][X-1].num == 0 && 
       board[Y][X-1].state == "closed"){ //左
      rect((X-1)*50, Y*50, 50, 50); 
      board[Y][X-1].state = "open";
      openN++;
    }
  }
  if(X < board.length-1){
    if(board[Y][X+1].num == 0 && 
       board[Y][X+1].state == "closed"){ //右
      rect((X+1)*50, Y*50, 50, 50); 
      board[Y][X+1].state = "open";
      openN++;
    }
  }
}
