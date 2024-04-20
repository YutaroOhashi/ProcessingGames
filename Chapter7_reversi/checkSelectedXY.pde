boolean checkSelectedXY(){
  //上
  x = X;  y = Y;  whiteN = 0;  blackN = 0;
  for (y -= 1; y >= 0 && blackN == 0; y--){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -1)  whiteN++;
    if (board[y][x] ==  1)  blackN++;
  }
  if (whiteN * blackN > 0)  return true;
  //下
  x = X;  y = Y;  whiteN = 0;  blackN = 0;
  for (y += 1; y < board.length && blackN == 0; y++){ 
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -1)  whiteN++;
    if (board[y][x] ==  1)  blackN++;
  }
  if (whiteN * blackN > 0)  return true;
  //左
  x = X;  y = Y;  whiteN = 0;  blackN = 0;
  for (x -= 1; x >= 0 && blackN == 0; x--){ 
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -1)  whiteN++;
    if (board[y][x] ==  1)  blackN++;
  }
  if (whiteN * blackN > 0)  return true;
  //右
  x = X;  y = Y;  whiteN = 0;  blackN = 0;
  for (x += 1; x < board.length && blackN == 0; x++){ 
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -1)  whiteN++;
    if (board[y][x] ==  1)  blackN++;
  }
  if (whiteN * blackN > 0)  return true;
    //右上
  x = X;  y = Y;  whiteN = 0;  blackN = 0; 
  for (x += 1, y -= 1; x < board.length && 
       y >= 0 && blackN == 0; x++, y--){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -1)  whiteN++;
    if (board[y][x] ==  1)  blackN++;
   }
  if (whiteN * blackN > 0)  return true;
  //左上
  x = X;  y = Y;  whiteN = 0;  blackN = 0; 
  for (x -= 1, y -= 1; x >= 0 && y >= 0 && 
       blackN == 0; x--, y--){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -1)  whiteN++;
    if (board[y][x] ==  1)  blackN++;
  }
  if (whiteN * blackN > 0)  return true;
  //右下
  x = X;  y = Y;  whiteN = 0;  blackN = 0; 
  for (x += 1, y += 1; x < board.length && 
       y < board.length && blackN == 0; x++, y++){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -1)  whiteN++;
    if (board[y][x] ==  1)  blackN++;
  }
  if (whiteN * blackN > 0)  return true;
  // 左下
  x = X;  y = Y;  whiteN = 0;  blackN = 0; 
  for (x -= 1, y += 1; x >= 0 && y < board.length && 
       blackN == 0; x--, y++){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -1)  whiteN++;
    if (board[y][x] ==  1)  blackN++;
  }
  if (whiteN * blackN > 0)  return true;
  
  return false;
}
