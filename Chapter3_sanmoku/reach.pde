int reach(){
  int reachN;
  //AIのリーチ
  for(y = 0; y < 3; y++){  //3行を探索
    reachN = board[y][0] * board[y][1] * board[y][2];
    if(reachN == 9)
      for(x = 0; x < 3; x++)
        if(board[y][x] == 1)
          return x * 10 + y;
  }
  for(x = 0; x < 3; x++){  //3列を探索
    reachN = board[0][x] * board[1][x] * board[2][x];
    if(reachN == 9)
      for(y = 0; y < 3; y++)
        if(board[y][x] == 1)
          return x * 10 + y;
  }
  if(board[0][0] * board[1][1] * board[2][2] == 9) //斜め
    for(int i = 0; i < 3; i++)
      if(board[i][i] == 1)
        return i * 10 + i;
  if(board[2][0] * board[1][1] * board[0][2] == 9) //斜め
    for(int i = 0; i < 3; i++)
      if(board[i][2-i] == 1)
        return (2 - i) * 10 + i;
    //プレイヤーのリーチ
  for(y = 0; y < 3; y++){  //3行を探索
    reachN = board[y][0] * board[y][1] * board[y][2];
    if(reachN == 4)
      for(x = 0; x < 3; x++)
        if(board[y][x] == 1)
          return x * 10 + y;
  }
  for(x = 0; x < 3; x++){  //3列を探索
    reachN = board[0][x] * board[1][x] * board[2][x];
    if(reachN == 4)
      for(y = 0; y < 3; y++)
        if(board[y][x] == 1)
          return x * 10 + y;
  }
  if(board[0][0] * board[1][1] * board[2][2] == 4) //斜め
    for(int i = 0; i < 3; i++)
      if(board[i][i] == 1)
        return i * 10 + i;
  if(board[2][0] * board[1][1] * board[0][2] == 4) //斜め
    for(int i = 0; i < 3; i++)
      if(board[i][2-i] == 1)
        return (2 - i) * 10 + i;
  return 100;
}
