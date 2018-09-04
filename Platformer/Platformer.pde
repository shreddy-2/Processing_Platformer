PVector pos = new PVector(200, 200);
PVector vel = new PVector(0,0);
PVector acc_gravity = new PVector(0, 0.05);
PVector acc_jump = new PVector(0,-2);
boolean canjump = false;
boolean jumped = false;

void setup(){
  size(400,400);
}

void draw(){
  background(200);
  
  if(pos.y < 396){
    vel.add(acc_gravity);
    canjump = false;
    if(jumped == true) jumped = false;
  }else{
    vel.mult(0); 
    canjump = true;
  }
  
  if(canjump = true && jumped == true){
    vel.add(acc_jump);
  }
  
  pos.add(vel);
  
  stroke(0);
  fill(0);
  ellipse(pos.x, pos.y, 4,4);
}

void keyPressed(){
  if(key == 'w' && jumped == false){
    jumped = true;
  }
}
