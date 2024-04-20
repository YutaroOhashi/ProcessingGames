void AI(){
  if(isEnd == false){
    isAISkip = false;
    bestN = -1;
    bestX = 0;
    bestY = 0;
    for (Y = 0; Y < board.length; Y++){
      for (X = 0; X < board.length; X++){
        if(board[Y][X]==0){
          // 上
          x = X; y = Y; whiteN = 0;  blackN = 0;
          for (y -= 1; y >= 0 && whiteN == 0; y--){
            if (board[y][x] ==  0)  break;
            if (board[y][x] == -1)  whiteN++;
            if (board[y][x] ==  1)  blackN++;
          }
          if (blackN * whiteN > 0){
            if(bestN < scoreTable[Y][X]){
              bestN = scoreTable[Y][X];
              bestX = X;
              bestY = Y;
            }
          }
          //下
          x = X; y = Y; whiteN = 0;  blackN = 0;  
          for (y += 1; y < board.length && whiteN == 0; y++){
            if (board[y][x] ==  0)  break;
            if (board[y][x] == -1)  whiteN++;
            if (board[y][x] ==  1)  blackN++;
          }
          if (blackN * whiteN > 0){
            if(bestN < scoreTable[Y][X]){
              bestN = scoreTable[Y][X];
              bestX = X;
              bestY = Y;
            }
          }
          //左
          x = X; y = Y; whiteN = 0;  blackN = 0;  
          for (x -= 1; x >= 0 && whiteN == 0; x--){
            if (board[y][x] ==  0)  break;
            if (board[y][x] == -1)  whiteN++;
            if (board[y][x] ==  1)  blackN++;
          }
          if (blackN * whiteN > 0){
            if(bestN < scoreTable[Y][X]){
              bestN = scoreTable[Y][X];
              bestX = X;
              bestY = Y;
            }
          }
          //右
          x = X; y = Y; whiteN = 0;  blackN = 0;  
          for (x += 1; x < board.length && whiteN == 0; x++){
            if (board[y][x] ==  0)  break;
            if (board[y][x] == -1)  whiteN++;
            if (board[y][x] ==  1)  blackN++;
          }
          if (blackN * whiteN > 0){
            if(bestN < scoreTable[Y][X]){
              bestN = scoreTable[Y][X];
              bestX = X;
              bestY = Y;
            }
          }
          //左上
          x = X; y = Y; whiteN = 0;  blackN = 0;  
          for (x -= 1, y -= 1; x >= 0 && y >= 0 && 
               whiteN == 0; x--, y--){
            if (board[y][x] ==  0)  break;
            if (board[y][x] == -1)  whiteN++;
            if (board[y][x] ==  1)  blackN++;
          }
          if (blackN * whiteN > 0){
            if(bestN < scoreTable[Y][X]){
              bestN = scoreTable[Y][X];
              bestX = X;
              bestY = Y;
            }
          }
          //右上
          x = X; y = Y; whiteN = 0;  blackN = 0;  
          for (x += 1, y -= 1; x < board.length && 
               y >= 0 && whiteN==0; x++, y--){
            if (board[y][x] ==  0)  break;
            if (board[y][x] == -1)  whiteN++;
            if (board[y][x] ==  1)  blackN++;
          }
          if (blackN * whiteN > 0){
            if(bestN < scoreTable[Y][X]){
              bestN = scoreTable[Y][X];
              bestX = X;
              bestY = Y;
            }
          }
          //左下
          x = X; y = Y; whiteN = 0;  blackN = 0;  
          for (x -= 1, y += 1; x >= 0 && y < board.length && 
               whiteN == 0; x--, y++){
            if (board[y][x] ==  0)  break;
            if (board[y][x] == -1)  whiteN++;
            if (board[y][x] ==  1)  blackN++;
          }
            if (blackN * whiteN > 0){
            if(bestN < scoreTable[Y][X]){
              bestN = scoreTable[Y][X];
              bestX = X;
              bestY = Y;
            }
          }
          //右下
          x = X; y = Y; whiteN = 0;  blackN = 0;  
          for (x += 1, y += 1; x < board.length && 
               y < board.length && whiteN==0; x++, y++){
            if (board[y][x] ==  0)  break;
            if (board[y][x] == -1)  whiteN++;
            if (board[y][x] ==  1)  blackN++;
          }
            if (blackN * whiteN > 0){
            if(bestN < scoreTable[Y][X]){
              bestN = scoreTable[Y][X];
              bestX = X;
              bestY = Y;
            }
          }
        }
      }
    }
    if(bestN < 0){
      isAISkip = true;
      fill(255);
      noStroke();
      rect(400, 850, 400, 50);
      fill(125);
      textSize(20);
      textAlign(LEFT);
      text("スキップしました", 450, 875);
    }
    else
      flip(bestX, bestY, -1);
    win();
    turn++;
  }
}
