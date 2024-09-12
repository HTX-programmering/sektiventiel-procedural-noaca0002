//Author: Tommy Thorsted Bonnichsen & Noah Struck Carstensen

int skinColor = #d2b48c;
int eyeColor = #FFC0CB;
int noseColor = #d2b48c;
int mouthColor = #FFFF00;
int hatColor = #000000;
int suitColor = #FFFF00;

int interval = 500;
boolean isSwitching = false;
boolean redState = true;

void setup(){
  size(4000, 6000); //Definere et vindue
}


void draw(){
  
if(redState){
   noseColor = #FF0000; 
}
else{
   noseColor = skinColor;
}
 
if(!isSwitching){
  isSwitching = true;
  resetRedstate();
}
 
 for(int x = 0; x <10; x++)
   for(int y = 0; y <10; y++)
     Man(-200 + (400 * (x +1)), -400 +(600 * (y +1)));
     
  
}

void resetRedstate(){
  delay(interval);
  isSwitching = false;
  redState = !redState;
}

void Man(float posX, float posY){
  body(posX, posY + 200);
  Face(posX,  posY);
  Hat(posX, posY-200);
}

void body(float posX, float posY){
  fill(suitColor);
  line(posX + 150, posY, posX + 200, posY);
  line(posX - 150, posY, posX - 200, posY);

  line(posX+40, posY+80, posX+40, posY+100);
  line(posX-40, posY+80, posX-40, posY+100);
  
  
  ellipse(posX, posY, 300, 180);
}

void Face(float posX, float posY){
  fill(skinColor);
  ellipse(posX, posY, 200, 220);
  Eyes(posX, posY - 50);
  Nose(posX, posY);
  Mouth(posX, posY + 40);
}

void Eyes(float posX, float posY){
  fill(eyeColor);
  square(posX - 45, posY, 30);
  square(posX + 15, posY, 30);
}
void Nose(float posX, float posY){
  fill(noseColor);
  circle(posX, posY, 30);
}

void Mouth(float posX, float posY){
  fill(mouthColor);
  arc(posX, posY, 100, 100, 0, PI, CHORD);  

}


void Hat(float posX, float posY){
  fill(hatColor);
  rect(posX-75, posY, 150, 120);
   
  fill(hatColor);
  rect(posX-150, posY+120, 300, 10);

}
