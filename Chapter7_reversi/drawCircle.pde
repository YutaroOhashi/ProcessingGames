void drawCircle(int cX, int cY, int colorN){
  if(colorN == 1)  fill(0);
  else             fill(255);
  noStroke();
  circle(cX*100+50, cY*100+50, 80);
  board[cY][cX] = colorN;
}
