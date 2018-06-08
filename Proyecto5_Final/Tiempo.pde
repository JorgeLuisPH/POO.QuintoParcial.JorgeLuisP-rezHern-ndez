int s = 0;
int m = 0;

void tiempo() {
  
  
  if(s <= 59){
    fill(255,0,0);
    noStroke();
    rect(0,0,120,60);
    textSize(20);
    fill(255);
    text(m+":"+s,10,20);
    s = s+1;
  }
  else{
    m = m+1;
    s = 0;
    fill(255,0,0);
    noStroke();
    rect(0, 0, 120, 60);
    textSize(20);
    fill(255);
    text(m+":"+s,10,20);
  }
   
}
