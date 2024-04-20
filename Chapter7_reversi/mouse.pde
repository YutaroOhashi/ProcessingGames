void mousePressed(){
  if(isEnd)  
    initGame();
  else {
    if(turn % 2 == 0){
      X = mouseX / 100;
      Y = mouseY / 100;
      if(Y < board.length) {
        if(board[Y][X] == 0 && checkSelectedXY()){
          flip(X, Y, 1);
          win();
          turn++;
        }
      }
    }
  }
}
