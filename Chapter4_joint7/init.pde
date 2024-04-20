void initGame(){
  background(200);
  int i, x, y, a, b, tmp;
  ansN = board.length * board.length;
  inputAnsN = 0;
  isEnd = false; 
  //0行目に1〜5を入力
  for(i = 0; i < board.length; i++)
    board[0][i] = i + 1;
  //0行目をシャッフル
  for(i = 0; i < board.length; i++){
    a = int(random(board.length));
    b = int(random(board.length));
    tmp = board[0][a];
    board[0][a] = board[0][b];
    board[0][b] = tmp;
  }
  //1行目以降に1つずつずらしながらコピー
  for(i = 1; i < board.length; i++){
    arrayCopy(board[i-1], 1, board[i], 0, board.length-1);
    arrayCopy(board[i-1], 0, board[i], board.length-1, 1);
  }
  //列をシャッフル
  for(i = 0; i < board.length; i++){
    a = int(random(board.length));
    b = int(random(board.length));
    for(y = 0; y < board.length; y++){
      tmp = board[y][a];
      board[y][a] = board[y][b];
      board[y][b] = tmp;
    }
  }
  //行をシャッフル
  int[] tmpArray = new int[board.length];
  for(i = 0; i < board.length; i++){
    a = int(random(board.length));
    b = int(random(board.length));
    arrayCopy(board[a], tmpArray);
    arrayCopy(board[b], board[a]);
    arrayCopy(tmpArray, board[b]);
  }
  // 横線の表示
  stroke(0);  
  strokeWeight(1);
  for(y = 0; y < board.length; y++){
    for(x = 0; x < board.length-1; x++){
      if((board[y][x] - board[y][x+1] ==  1) ||
         (board[y][x] - board[y][x+1] == -1))  
        line(x*100+80, y*100+50, x*100+120, y*100+50);
    }
  }
  // 縦線の表示
  for(y = 0; y < board.length-1; y++){
    for(x = 0; x < board.length; x++){
      if((board[y][x] - board[y+1][x] ==  1) ||
         (board[y][x] - board[y+1][x] == -1))  
        line(x*100+50, y*100+80, x*100+50, y*100+120);
    }
  }
  // 四角形と値の表示
  textSize(30);
  textAlign(CENTER);
  for(y = 0; y < board.length; y++){
    for(x = 0; x < board.length; x++){
      fill(255);
      rect(x*100+20, y*100+20, 60, 60);
      if(int(random(board.length)) > 2){
        fill(0);
        text(board[y][x], x*100+50, y*100+60);
        board[y][x] *= 100;
        inputAnsN++;
      }
    }
  }
}
