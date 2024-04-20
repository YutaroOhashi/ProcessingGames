void keyPressed(){
  if(board[Y][X] < 100){
    fill(255);
    noStroke();
    rect(X*100+30, Y*100+30, 40, 40);
    fill(0);  
    textSize(30);  
    textAlign(CENTER);
    text(key, X*100+50, Y*100+60);
    if(board[Y][X] > board.length){
      if(keyCode - 48 != board[Y][X]/10){
        board[Y][X] /= 10;
        inputAnsN --;
      }
    }
    else if(keyCode - 48 == board[Y][X]){
        board[Y][X] *= 10;
        inputAnsN ++;
    }
    win();
  }
}
