int X, Y, pX, pY, ansN, inputAnsN, cellN = 5;
int[][] board = new int[cellN][cellN]; 
boolean isEnd;
void setup(){
  size(500, 500);
  PFont font = createFont("Osaka", 30);
  textFont(font);
  initGame();
}
void draw(){
}
