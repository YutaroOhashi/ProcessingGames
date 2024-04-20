void mousePressed(){
  if(isEnd)
    initGame();
  else {
    X = mouseX/100;  
    Y = mouseY/100;
    if(board[Y][X] < 100){
      noFill();  
      strokeWeight(5);
      stroke(255);
      rect(pX*100+10, pY*100+10, 80, 80);
      stroke(125);
      rect(X*100+10, Y*100+10, 80, 80);
      pX = X;  
      pY = Y;
    }
  }
}
