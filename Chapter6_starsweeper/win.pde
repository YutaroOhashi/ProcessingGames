void win(){
  if(openN == 90 && flagN == 10){
    fill(255, 200);
    rect(0, 0, width, height);
    fill(0);
    textSize(60);
    textAlign(CENTER);
    text("YOU WIN!", width/2, height/2);
    textSize(30);
    text("Click to restart", width/2, height/2 + 50);
    text(time / 1000 + " seconds", width/2, height/2 + 100);
    isEnd = true;
  }
}
