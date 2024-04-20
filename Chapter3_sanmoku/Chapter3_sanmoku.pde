int[][] board = {{1,1,1},{1,1,1},{1,1,1}};
int x, y, turn;
void setup(){
  size(600, 600);
  strokeWeight(2);
  line(0, height/3, width, height/3);
  line(0, height*2/3, width, height*2/3);
  line(width/3, 0, width/3, height);
  line(width*2/3, 0, width*2/3, height);
  turn = 0;
}
void draw(){
  if(turn % 2 != 0)
    AI();
}
