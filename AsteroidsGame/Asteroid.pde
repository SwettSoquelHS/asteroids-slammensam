/*
  Asteroid class
    Should extend Mover class and implement show.
    
    Initially, your asteroid may just be a simple circle or square
    but the final program should use "beginShap(), vertex(), and endShape()"
    to render the asteroid.
*/
class Asteroid extends Mover{
  Asteroid(float x, float y){
    super(x,y);
  }
  Asteroid(float x, float y, float speed, float direction) {
    super(x,y,speed,direction);
  }
  void show(){
    float[] xCoords = {-18,-12,0,6,18,30,10,6,0,-12};
    float[] yCoords = {12,-6,-18,-12,-18,6,18,24,10,18}; 
    pushMatrix();
    translate(x,y);
    
    beginShape();
    vertex(xCoords[0],yCoords[0]);
    vertex(xCoords[1],yCoords[1]);
    vertex(xCoords[2],yCoords[2]);
    vertex(xCoords[3],yCoords[3]);
    vertex(xCoords[4],yCoords[4]);
    vertex(xCoords[5],yCoords[5]);
    vertex(xCoords[6],yCoords[6]);
    vertex(xCoords[7],yCoords[7]);
    vertex(xCoords[8],yCoords[8]);
    vertex(xCoords[9],yCoords[9]);
    
    endShape();
    
    popMatrix();
  }
  void update(){
    x = x + speed*(float)Math.cos(radians(direction));
    y = y + speed*(float)Math.sin(radians(direction));
    if(x > width){
      x = 0;  
    }
    if(y > height){
      y = 0;
    }
    if(x < 0){
      x = width;
    }
    if(y < 0){
      y = height;  
    }
  }
}
