void flip(int fX, int fY, int colorN){
  int i, betN, endN;
  drawCircle(fX, fY, colorN);
  if (colorN == 1)  fill(0);
  else              fill(255);
  //上
  x = fX;  y = fY;  betN = 0;  endN = 0;  
  for (y -= 1; y >= 0 && endN == 0; y--){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -colorN)  betN++;
    if (board[y][x] ==  colorN)  endN++;
  }
  if (betN * endN > 0)
    for(i = 1; i <= betN; i ++)
      drawCircle(fX, fY-i, colorN);
  //下
  x = fX;  y = fY;  betN = 0;  endN = 0;  
  for (y += 1; y < board.length && endN == 0; y++){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -colorN)  betN++;
    if (board[y][x] ==  colorN)  endN++;
  }
  if (betN * endN > 0)
    for(i = 1; i <= betN; i ++)
      drawCircle(fX, fY+i, colorN);
  //右
  x = fX;  y = fY;  betN = 0;  endN = 0;  
  for (x += 1; x < board.length && endN == 0; x++){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -colorN)  betN++;
    if (board[y][x] ==  colorN)  endN++;
  }
  if (betN * endN > 0)
    for(i = 1; i <= betN; i ++)
      drawCircle(fX+i, fY, colorN);
  //左
  x = fX;  y = fY;  betN = 0;  endN = 0;  
  for (x -= 1; x >= 0 && endN == 0; x--){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -colorN)  betN++;
    if (board[y][x] ==  colorN)  endN++;
  }
  if (betN * endN > 0)
    for(i = 1; i <= betN; i ++)
      drawCircle(fX-i, fY, colorN);
  //左上
  x = fX;  y = fY;  betN = 0;  endN = 0;  
  for (x -= 1, y -= 1; x >= 0 && y >= 0 && 
       endN == 0; x--, y--){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -colorN)  betN++;
    if (board[y][x] ==  colorN)  endN++;
  }
  if (betN * endN > 0)
    for(i = 1; i <= betN; i ++)
      drawCircle(fX-i, fY-i, colorN);
  //右上
  x = fX;  y = fY;  betN = 0;  endN = 0;  
  for (x += 1, y -= 1; x < board.length && 
       y >= 0 && endN == 0; x++, y--){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -colorN)  betN++;
    if (board[y][x] ==  colorN)  endN++;
  }
  if (betN * endN > 0)
    for(i = 1; i <= betN; i ++)
      drawCircle(fX+i, fY-i, colorN);
  //左下
  x = fX;  y = fY;  betN = 0;  endN = 0;  
  for (x -= 1, y += 1; x >= 0 && 
       y < board.length && endN == 0; x--, y++){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -colorN)  betN++;
    if (board[y][x] ==  colorN)  endN++;
  }
  if (betN * endN > 0)
    for(i = 1; i <= betN; i ++)
      drawCircle(fX-i, fY+i, colorN);
  //右下
  x = fX;  y = fY;  betN = 0;  endN = 0;  
  for (x += 1, y += 1; x < board.length && 
       y < board.length && endN == 0; x++, y++){
    if (board[y][x] ==  0)  break;
    if (board[y][x] == -colorN)  betN++;
    if (board[y][x] ==  colorN)  endN++;
  }
  if (betN * endN > 0)
    for(i = 1; i <= betN; i ++)
      drawCircle(fX+i, fY+i, colorN);
  
  fill(255);
  noStroke();
  if(colorN == 1)  rect(0, 850, 400, 50);
  else             rect(400, 850, 400, 50);
  fill(125);
  textAlign(LEFT);  
  textSize(20);
  text("X: " + X + ", " + "Y: " + Y + "に置きました", 
       -colorN*200 + 250, 875);
}
