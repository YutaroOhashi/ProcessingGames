void initGame(){
  background(255);
  int i, x, y, a, b, tmp, areaN, arean;
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
  //1行目以降にコピー
  int targetI;
  for(y = 1; y < board.length; y++){
    targetI = y % 3 * 3 + y / 3;
    arrayCopy(board[0], targetI, board[y], 
              0, board.length - targetI);
    arrayCopy(board[0], 0, board[y], 
              board.length - targetI, targetI);
  }
  // 列のシャッフル
  for(i = 0; i < board.length; i++){
    areaN = int(random(3));
    a = int(random(3));
    b = int(random(3));
    a += areaN * 3;
    b += areaN * 3;
    for(y = 0; y < board.length; y++){
      tmp = board[y][a];
      board[y][a] = board[y][b];
      board[y][b] = tmp;
    }
  }
  // 行のシャッフル 
  int[] tmpArray = new int[board.length];
  for(i = 0; i < board.length; i++){
    areaN = int(random(3));
    a = int(random(3));
    b = int(random(3));
    a += areaN * 3;
    b += areaN * 3;
    arrayCopy(board[a], tmpArray);
    arrayCopy(board[b], board[a]);
    arrayCopy(tmpArray, board[b]);
  }
    // 数と枠を表示
  fill(0);  
  textSize(50);  
  textAlign(CENTER);  
  stroke(0);  
  for(y = 0; y < board.length; y++){
    if (y % 3 == 0)  
      strokeWeight(5);
    else 
      strokeWeight(1);
    line(0, y*100, width, y*100); //横線
    line(y*100, 0, y*100, height); //縦線
    for(x = 0; x < board.length; x++){
      if(int(random(5)) > 2){
        text(board[y][x], x*100+50, y*100+60);
        board[y][x] *= 100;
        inputAnsN++;
      }
    }
  }
  strokeWeight(5);
  line(0, height, width, height); //最後の横線
  line(width, 0, width, height); //最後の縦線
}
