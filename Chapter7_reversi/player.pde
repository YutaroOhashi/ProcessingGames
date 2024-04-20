void player(){
  if(isEnd == false){
    isPlayerSkip = false;
    if(checkClickable() == false){
      isPlayerSkip = true;
      fill(255);
      rect (0,850,400, 50);
      fill(125);  
      textAlign(LEFT);
      text("スキップしました", 50, 875);
      win();
      turn++;  
    }
  }
}
