void inicio(){
  
  background(0);
  pushMatrix();
  fill(255,0,0);
  textSize(300);
  text("Ball",300,300);
  fill(random(100,255));
  textSize(15);
  text("Enter para continuar",850,650);
  popMatrix();
  if(key == ENTER){    
    pant = 1;
  }
  
}

void instrucciones(){
  
  background(0);
  pushMatrix();
  fill(255,0,0);
  textSize(30);
  text("Instrucciones:",100,150);
  fill(255);
  textSize(20);
  text("Toma la esfera roja con tu cursor y guiala fuera del laberinto para ganar\n\n\nPero recuerda...\n\n\nSOLO CUENTAS CON 30s!",95,180);
  fill(random(100,255));
  textSize(15);
  text("Q para continuar",900,650);
  popMatrix();
  if(keyPressed){
  if(key == 'q' || key == 'Q'){    
    pant = 2;
  }
  }
  
}

void juego(){
  
  background(0);
    tiempo();
    for (fondo wall: f) {
      wall.display();
    }
    
      box2d.step();
      mouse.update(mouseX,mouseY);
      p.display();
      mouse.display();
      
    
    if(p.y <= 0){
      pant = 3;
    }
    if(m == 30){
      pant = 4;
    }
}

void ganar(){
  
  background(0);
  pushMatrix();
  fill(255);
  textSize(100);
  text("Ganaste!",300,300);
  fill(255);
  textSize(20);
  text("ESC para cerrar",300,500);
  popMatrix();
  
}

void perder(){
  
  background(0);
  pushMatrix();
  fill(255,0,0);
  textSize(100);
  text("Perdiste!",300,300);
  fill(255);
  textSize(20);
  text("ESC para cerrar",300,500);
  text("C para intentar de nuevo",300,540);
  popMatrix();
  
  if(key == 'c' || key == 'C'){
    pant = 2;
    m = 0;
    s = 0;
  }
  
}
