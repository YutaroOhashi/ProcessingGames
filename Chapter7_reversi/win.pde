void win(){
  blackN = 0;   
  whiteN = 0;
  for(Y = 0; Y < board.length; Y++){
    for(X = 0; X < board.length; X++){
      if(board[Y][X] == 1)   blackN += 1;
      if(board[Y][X] == -1)  whiteN += 1;
    }
  }
  //画面下に石の数を表示
  fill(255);
  rect(0, 800, 800, 50);
  fill(125);
  textSize(20);  
  textAlign(LEFT);
  text("Player:" + blackN, 50, 840);
  text("AI:" + whiteN, 450, 840);
  //終了時メッセージを表示
  textAlign(CENTER);
  if ((blackN == 0 || whiteN == 0) || //どちらかが0
       (isAISkip && isPlayerSkip)  || //両者スキップ
       (whiteN + blackN) == 64){      //全セルが埋まる
    fill(255, 200);
    rect(0, 0, 800, 800);
    fill(0);  
    textSize(100);
    if(blackN > whiteN) 
      text("YOU WIN!", width/2, height/2-50);
    else if(blackN < whiteN)  
      text("YOU LOSE!", width/2, height/2-50);
    else  
      text("DRAW", width/2, height/2-50);
    textSize(50);
    text("Black:" + blackN + " White:" + whiteN, 
         width/2, height/2+20);
    text("Click to restart", width/2, height/2+80);
    isEnd = true;
  }
}
