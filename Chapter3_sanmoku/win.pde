void win(){
  textSize(100);
  fill(0);
  textAlign(CENTER, CENTER);
  if (board[0][0] * board[1][1] * board[2][2] == 8
   || board[0][2] * board[1][1] * board[2][0] == 8
   || board[0][0] * board[0][1] * board[0][2] == 8
   || board[1][0] * board[1][1] * board[1][2] == 8
   || board[2][0] * board[2][1] * board[2][2] == 8
   || board[0][0] * board[1][0] * board[2][0] == 8
   || board[0][1] * board[1][1] * board[2][1] == 8
   || board[0][2] * board[1][2] * board[2][2] == 8) {
    text("YOU WIN!", width/2, height/2);
    noLoop();
  }
  else if (board[0][0] * board[1][1] * board[2][2] == 27
   || board[0][2] * board[1][1] * board[2][0] == 27
   || board[0][0] * board[0][1] * board[0][2] == 27
   || board[1][0] * board[1][1] * board[1][2] == 27
   || board[2][0] * board[2][1] * board[2][2] == 27
   || board[0][0] * board[1][0] * board[2][0] == 27
   || board[0][1] * board[1][1] * board[2][1] == 27
   || board[0][2] * board[1][2] * board[2][2] == 27) {
    text("YOU LOSE!", width/2, height/2);
    noLoop();
  }
  else if (turn == 8) {
    text("DRAW!", width/2, height/2);
    noLoop();
  }
}
