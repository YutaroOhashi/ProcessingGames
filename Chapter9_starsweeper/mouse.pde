void mousePressed(){
  if(isEnd)  
    initGame();
  else{
    X = mouseX / 50;  
    Y = mouseY / 50;
    textSize(20);
    textAlign(CENTER);
    if(mouseButton == LEFT && board[Y][X].state == "closed"){
      if(board[Y][X].num == 0){
        fill(255);
        rect(X*50, Y*50, 50, 50);
        board[Y][X].state = "open";
        openN++;
        neighbor(); 
      }
      else if(board[Y][X].num < 9){
        fill(255);
        rect(X*50, Y*50, 50, 50);
        fill(0);
        text(board[Y][X].num, X*50+25, Y*50+30);
        board[Y][X].state = "open";
        openN++;
      }
      else if(board[Y][X].num == 9){
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
    else if(mouseButton == RIGHT){
      if(board[Y][X].state == "flagged"){ //旗がある時
        fill(200);
        rect(X*50, Y*50, 50, 50);
        board[Y][X].state = "closed";
        if(board[Y][X].num == 9)  
          flagN--;
      }
      else if(board[Y][X].state == "closed"){ //開いていない時
        drawFlag(X, Y);
        board[Y][X].state = "flagged";
        if(board[Y][X].num == 9)  
          flagN++;
      }
    }
    win();
  }
}
