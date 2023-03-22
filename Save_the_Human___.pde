float [] x,y,v,x2,y2,x3,y3,x4,y4;
void setup(){
  size(1000,800);
  x = new float[11];
  y = new float[11];
  v = new float[10];
  x2 = new float[10];
  y2 = new float[10];
  x3 = new float[10];
  y3 = new float[10];
  x4 = new float[10];
  y4 = new float[10];
  
  for(int i=0;i<9; i++){
    x[i] = random(50,950);
    y[i] = 0; //위에서 떨어지는 눈덩이
    v[i] = random(2,7); // 속도
    x2[i] = random(50,950);
    y2[i] = 850; // 아래서 올라오는 눈덩이
    x3[i] = -50; 
    y3[i] = random(50,750); // 왼쪽에서 오는 눈덩이
    x4[i] = 1050;
    y4[i] = random(50,750); // 오른쪽에서 오는 눈덩이
  }
}
String str0 = "Save the Human!";
String str1 = "Level 1"; // 단계별로 표시할 것.
String str2 = "Level 2";
String str3 = "Level 3";
String str4 = "Level 4";
String strN = "Next Stage!";
String strF = "You did Save the Human!";

int count=0;
void draw(){
  background(255,255,0);
  
  if (count >5){ //시작문구 출력
    fill(255,0,0);
    textSize(100);
    text(str0, 130, 400);
    fill(0);
  }
  if (count>120){ //시작문구 제거
    fill(255,255,0);
    square(-5,-5, 1100);
    fill(0);    
  }
  
  if (count>720){ // Level 1 끝나고 Next Stage 문구 출력
    fill(255,0,0);
    textSize(100);
    text(strN, 300, 400);
    fill(0);
  }
  
  if (count>839){ // Next Stage 문구 제거
    fill(255,255,0);
    square(-5,-5,1100);
    fill(0);
  }
  
  if (count>1340){ // Level 2 끝나고 Next Stage 문구 출력
    fill(255,0,0);
    textSize(100);
    text(strN, 300, 400);
    fill(0);
  }
  
  if (count>1459){ // Next Stage 문구 제거
    fill(255,255,0);
    square(-5,-5,1100);
    fill(0);
  }
  
  if (count>1960){ // Level 3 끝나고 Next Stage 문구 출력
    fill(255,0,0);
    textSize(100);
    text(strN, 300, 400);
    fill(0);
  }
  
  if (count>2079){ // Next Stage 문구 제거
    fill(255,255,0);
    square(-5,-5,1100);
    fill(0);
  }
  
  if (count>2879){ // You did Save the Human! 문구 출력
    fill(255,0,0);
    textSize(75);
    text(strF, 150, 400);
    fill(0);
  }
  
  if (count>3100){  // 게임 종료
    exit();
  }
  
  for(int i=0;i<9; i++){ 
    if (count>120 && count<720){  // 1 단계 시작
    fill(255,0,0);
    textSize(70);
    text(str1, 30, 55);
    fill(0);
    fill(255);
      y[i] +=v[i];
      snow(x[i], y[i]);
      if(y[i]>height)
      {y[i] = 0;}
    x[10]=mouseX;
    y[10]=mouseY;
       fill(0);
    human(x[10],y[10]);
       fill(255);
    }
    float dx = x[i]-x[10];
    float dy = y[i]-y[10];
    float d = sqrt(dx*dx+dy*dy);
    
  if(d<30) {
  fill(250,120,120);
  textSize(150);
  text("Lose!",200,300);
  delay(400);
  { exit();}
} 
}
  
    for(int i=0;i<9; i++){ 
    if (count>840 && count<1340){  // 2 단계 시작
    fill(255,0,0);
    textSize(70);
    text(str2, 30, 55);
    fill(0);
      fill(255);
      y[i] +=v[i];
      snow(x[i], y[i]);
      if(y[i]>height)
      {y[i] = 0;}
    x[10]=mouseX;
    y[10]=mouseY;
    fill(0);
    human(x[10],y[10]);
    fill(255);
     snow(x2[i],y2[i]);
     y2[i] -=v[i];
     if(y2[i]<0) {y2[i] = 800;}
    }
    float dx = x[i]-x[10];
    float dy = y[i]-y[10];
    float d = sqrt(dx*dx+dy*dy);
    float dx2 = x2[i]-x[10];
    float dy2 = y2[i]-y[10];
    float d2 = sqrt(dx2*dx2+dy2*dy2);
    
  if(d<30) {
  fill(250,120,120);
  textSize(150);
  text("Lose!",200,300);
  delay(400);
  { exit();}
} 
  else if (d2<30){
  fill(250,120,120);
  textSize(150);
  text("Lose!",200,300);
  delay(400);
  { exit();}
}
  }
    
    for(int i=0;i<9; i++){ 
    if (count>1460 && count<1960){  // 3 단계 시작
    fill(255,0,0);
    textSize(70);
    text(str3, 30, 55);
    fill(0);
      fill(255);
      y[i] +=0.5*v[i];
      snow(x[i], y[i]);
      if(y[i]>height)
      {y[i] = 0;}
    x[10]=mouseX;
    y[10]=mouseY;
    fill(0);
    human(x[10],y[10]);
    fill(255);
     snow(x2[i],y2[i]);
     y2[i] -=0.5*v[i];
     if(y2[i]<0) {y2[i] = 800;}
     
     snow(x3[i],y3[i]);
     x3[i] +=2*v[i];
   
    if(x3[i]>1050) {x3[i] = 0;}
    float dx = x[i]-x[10];
    float dy = y[i]-y[10];
    float d = sqrt(dx*dx+dy*dy);
    float dx2 = x2[i]-x[10];
    float dy2 = y2[i]-y[10];
    float d2 = sqrt(dx2*dx2+dy2*dy2);
    float dx3 = x3[i]-x[10];
    float dy3 = y3[i]-y[10];
    float d3 = sqrt(dx3*dx3+dy3*dy3);
    
  if(d<30) {
  fill(250,120,120);
  textSize(150);
  text("Lose!",200,300);
  delay(400);
  { exit();}
} 
  else if (d2<30){
  fill(250,120,120);
  textSize(150);
  text("Lose!",200,300);
  delay(400);
  { exit();}
}
  else if (d3<30){
  fill(250,120,120);
  textSize(150);
  text("Lose!",200,300);
  delay(400);
  { exit();}
} 

  }
    }
    
    for(int i=0;i<9; i++){ 
    if (count>2080 && count<2880){  // 4 단계 시작
    fill(255,0,0);
    textSize(70);
    text(str4, 30, 55);
    fill(0);
    fill(255);
      y[i] +=0.5*v[i];
      snow(x[i], y[i]);
      if(y[i]>height)
      {y[i] = 0;}
    x[10]=mouseX;
    y[10]=mouseY;
    fill(0);
    human(x[10],y[10]);
    fill(255);
     snow(x2[i],y2[i]);
     y2[i] -=0.5*v[i];
     if(y2[i]<0) {y2[i] = 800;}
     snow(x3[i],y3[i]);
     x3[i] +=v[i];
    if(x3[i]>1050) {x3[i] = 0;}
         snow(x4[i],y4[i]);
         x4[i] -=2*v[i];
    if(x4[i]<0) {x4[i] = 800;}
    
    float dx = x[i]-x[10];
    float dy = y[i]-y[10];
    float d = sqrt(dx*dx+dy*dy);
    float dx2 = x2[i]-x[10];
    float dy2 = y2[i]-y[10];
    float d2 = sqrt(dx2*dx2+dy2*dy2);
    float dx3 = x3[i]-x[10];
    float dy3 = y3[i]-y[10];
    float d3 = sqrt(dx3*dx3+dy3*dy3);
    float dx4 = x4[i]-x[10];
    float dy4 = y4[i]-y[10];
    float d4 = sqrt(dx4*dx4+dy4*dy4); // 각 눈덩이와 만난다면 끝난다
    
  if(d<30) {
  fill(250,120,120);
  textSize(150);
  text("Lose!",200,300);
  delay(400);
  { exit();}
} 
  else if (d2<30){
  fill(250,120,120);
  textSize(150);
  text("Lose!",200,300);
  delay(400);
  { exit();}
}
  else if (d3<30){
  fill(250,120,120);
  textSize(150);
  text("Lose!",200,300);
  delay(400);
  { exit();}
} 
  else if (d4<30){
  fill(250,120,120);
  textSize(150);
  text("Lose!",200,300);
  delay(400);
  { exit();}
}
  }
    } 
count++;
}
