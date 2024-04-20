boolean checkClickable(){
  for(Y = 0; Y < board.length; Y ++)
    for(X = 0; X < board.length; X ++)
      if(board[Y][X] == 0)
        if(checkSelectedXY())  
          return true;
  return false;
}
