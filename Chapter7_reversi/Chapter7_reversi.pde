int[][] board = new int[8][8];
boolean isEnd, isAISkip, isPlayerSkip;
int turn, X, Y, x, y, whiteN, blackN, bestN, bestX, bestY;
int[][] scoreTable = {{10, 0, 8, 5, 5, 8, 0,10},
                      { 0, 0, 1, 1, 1, 1, 0, 0},
                      { 8, 1, 5, 2, 2, 5, 1, 8},
                      { 5, 1, 2, 0, 0, 2, 1, 5},
                      { 5, 1, 2, 0, 0, 2, 1, 5},
                      { 8, 1, 5, 2, 2, 5, 1, 8},
                      { 0, 0, 1, 1, 1, 1, 0, 0},
                      {10, 0, 8, 5, 5, 8, 0,10}};
void setup(){
  PFont font = createFont("MS Gothic", 50);
  textFont(font);
  size(800, 900);
  frameRate(4);
  initGame();
}
void draw(){
  if(turn % 2 != 0)  AI();
  else  player();
}
