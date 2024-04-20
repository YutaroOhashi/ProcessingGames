Board[][] board = new Board[10][10];
int X, Y, openN, flagN, time, resetTime;
boolean isEnd;
void setup(){
  size(500, 500);
  PFont font = createFont("Osaka", 30);
  textFont(font);
  initGame();
}
void draw(){
  time = millis() - resetTime;
}
