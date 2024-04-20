void endMessage(boolean isWin){
  textAlign(CENTER);
  textSize(80);
  fill(255);
  if(isWin)
    text("GAME CLEAR!", width/2, height/2-50);
  else
    text("GAME OVER!", width/2, height/2-50);
  textSize(40);
  text("Click to restart", width/2, 300);
  isEnd = true;
}
