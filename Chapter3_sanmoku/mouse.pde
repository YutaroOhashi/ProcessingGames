void mousePressed(){
  x = mouseX / 200;
  y = mouseY / 200;
  fill(255);
  circle(x*200+100, y*200+100, 150);
  board[y][x] = 2;
  win();
  turn ++;
}
