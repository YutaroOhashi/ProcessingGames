void mousePressed(){
  if(isEnd)  
    initGame();
  else{
    X = mouseX / 50;  
    Y = mouseY / 50;
    textSize(20);
    textAlign(CENTER);
    if(mouseButton == LEFT){
      if(board[Y][X] == 0){
        fill(255);
        rect(X*50, Y*50, 50, 50);
        board[Y][X] = -1;
        openN++;
        neighbor();
      }
      else if(board[Y][X] > 0 && board[Y][X] < board.length-1){
        fill(255);
        rect(X*50, Y*50, 50, 50);
        fill(0);
        text(board[Y][X], X*50+25, Y*50+30);
        board[Y][X] = -board[Y][X];
        openN++;
      }
      else if(board[Y][X] == 9){
        fill(255, 200);
        rect(0, 0, width, height);
        fill(0);
        text("★", X*50+25, Y*50+30);
        textSize(60);
        text("GAME OVER", width/2, height/2);
        textSize(30);
        text("Click to restart", width/2, height/2 + 50);
        text(time / 1000 + " seconds", width/2, height/2+100);
        isEnd = true;
      }
    }
    if(mouseButton == RIGHT){
      if(board[Y][X] >= 0){ //0以上の時
        if(board[Y][X] == 0){ //0の時
          board[Y][X] = 100;
          drawFlag(X, Y);
        }
        else if(board[Y][X] < 9){ //1~8の時
          board[Y][X] *= 10;
          drawFlag(X, Y);
        }
        else if(board[Y][X] == 9){ //9の時
          board[Y][X] *= 10;
          drawFlag(X, Y);
          flagN++;
        }
        else if(board[Y][X] < 90){ //10~80の時
          board[Y][X] /= 10;
          fill(200);
          rect(X*50, Y*50, 50, 50);
        }
        else if(board[Y][X] == 90){ //90の時
          board[Y][X] /= 10;
          fill(200);
          rect(X*50, Y*50, 50, 50);
          flagN--;
        }
        else{ //100の時
          board[Y][X] = 0;
          fill(200);
          rect(X*50, Y*50, 50, 50);
        }
      }
    }
    win();
  }
}
