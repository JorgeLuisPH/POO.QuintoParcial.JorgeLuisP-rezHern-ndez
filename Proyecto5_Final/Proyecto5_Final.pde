import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.dynamics.contacts.*;

Box2DProcessing box2d;
control mouse;

personaje p;
personaje p1;
personaje p2;
ArrayList<fondo> f;
ArrayList<fondo> l;

int pant = 0;
int dib = 0;
boolean per;

void setup(){
  
  size(1100,700);
  smooth();
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0,-10);
  
  mouse = new control();
  
  p = new personaje(10,height,#FF0303);
  p1 = new personaje(10,height,#0326FF);
  p2 = new personaje(10,height,#03FF11);
  
  l = new ArrayList();
  l.add(new fondo(-10,-800,10,3000));
  l.add(new fondo(1110,-800,10,3000));
  
  f = new ArrayList();
  f.add(new fondo(262,0,525,10));
  f.add(new fondo(838,0,525,10));
  f.add(new fondo(600,700,1200,10));
  for(int i = 0; i < 225; i++){
    f.add(new fondo(random(25, width),random(25, height/1.2),10,random(10,40)));
  }
  
  for(int j = 0; j< 25; j++){
  f.add(new fondo(random(width),random(50,height-50),random(150,400),10));
  }
  
  
  for (fondo w: l) {
      w.display();
    }
  
}

void mouseReleased() {
  mouse.destroy();
}

void mousePressed() {
  if (p.contains(mouseX, mouseY)) {
    mouse.bind(mouseX,mouseY,p);
  }
  if (p1.contains(mouseX, mouseY)) {
    mouse.bind(mouseX,mouseY,p1);
  }
  if (p2.contains(mouseX, mouseY)) {
    mouse.bind(mouseX,mouseY,p2);
  }
}

void draw(){
  
  
  
  switch(pant){
    
    case 0:
    inicio();
    break;
    
    case 1:
    instrucciones();
    break;
       
    case 2:
    juego();
    break;
    
    case 3:
    ganar();
    break;
    
    case 4:
    perder();
    break;
      
  }
  
}
