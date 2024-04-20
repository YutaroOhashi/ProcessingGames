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
      rect(pX*100+25, pY*100+25, 50, 50);
      stroke(125);
      rect(X*100+25, Y*100+25, 50, 50);
      pX = X;  
      pY = Y;
    }
  }
}
