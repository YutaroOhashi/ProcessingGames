int num, itemN = 5;
String[] lunch = new String[itemN];
void setup(){
  size(200, 200);
  PFont font = createFont("MS Gothic", 50);
  textFont(font);
  frameRate(12);
  lunch[0] = "ラーメン";
  lunch[1] = "中華";
  lunch[2] = "カツ丼";
  lunch[3] = "そば";
  lunch[4] = "デパ地下";
  textSize(30);
  textAlign(CENTER);
}
void draw(){
  background(0);
  num = int(random(5));
  text(lunch[num], width/2, height/2);
}
void mousePressed(){
  noLoop();
}
