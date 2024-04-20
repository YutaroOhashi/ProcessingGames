int[] box = {0, 0, 0};
int num;
void setup(){
  size(500, 300);
  frameRate(8);
  strokeWeight(2);
  textAlign(CENTER);
}
void draw(){
  background(200);
  //四角形を表示
  fill(255);
  rect(100, 100, 100, 100);
  rect(200, 100, 100, 100);
  rect(300, 100, 100, 100);
  //数を表示
  fill(0);
  textSize(50);
  if (box[0] == 0){ //左の四角形
    num = int(random(7)) + 1;
    text(num, 150, 160);
    if(keyPressed && keyCode == LEFT)
      box[0] = num;
  }
  else  text(box[0], 150, 160);
  
  if (box[1] == 0){ //中央の四角形
    num = int(random(7)) + 1;
    text(num, 250, 160);
    if(keyPressed && keyCode == DOWN)
      box[1] = num;
  }
  else  text(box[1], 250, 160);
  
  if (box[2] == 0){ //左の四角形
    num = int(random(7)) + 1;
    text(num, 350, 160);
    if(keyPressed && keyCode == RIGHT)
      box[2] = num;
  }
  else  text(box[2], 350, 160);
  
  if(box[2] != 0) //終了判定
    if(box[0] == box[1] && box[1] == box[2])
      text("YOU WIN!", width/2, 75);
  else  if(box[0] * box[1] * box[2] != 0)
    text("YOU LOSE!", width/2, 75);
    
  //画面下の表示
  textSize(20);
  text("'←' to stop", 150, 230);
  text("'↓' to stop", 250, 230);
  text("'→' to stop", 350, 230);
}

void mousePressed(){
  box[0] = 0;
  box[1] = 0;
  box[2] = 0;
}
