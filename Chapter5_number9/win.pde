void win(){
  if(inputAnsN == ansN){
    fill(255, 200);
    rect(0, 0, width, height);
    fill(0);  
    textSize(150);
    text("YOU WIN!", width/2, height/2-20);
    textSize(50);
    text("Click to restart", width/2, height/2+60);
    isEnd = true;
  }
}
