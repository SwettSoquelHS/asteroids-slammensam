  /*
  Spaceship class
    Should extend Mover class and implement show.
    You may add additional methods to this class, for example "rotate" and "accelerate" 
    might be useful.
*/
class Spaceship extends Mover{
  Bullet myBullet;
  Spaceship(float x, float y){
    super(x,y);

  }
  Spaceship(float x, float y, float speed, float direction){
    super(x, y, speed, direction);
    
  }
  void fire(){
    if(myBullet != null && !myBullet.isAlive()){
      myBullet = new Bullet(x,y,speed+15 ,direction);
    }
  }
  
  void show(){
    pushMatrix();
    translate(x,y);
    noStroke();
    rotate(radians(direction));
    fill(124);
  
  //main body
    quad(-17.5,-7.5 , -17.5,7.5, 17.5,7.5 , 17.5,-7.5);
    triangle(17.5,-7.5 , 35,0 , 17.5,7.5);
  
  //wings
    quad(-15.5,-7.5 , -14,-17 , -8,-17 , -6,-7.5);
    quad(-5,-7.5 , -3,-24, 5,-24 , 13,-7.5);
    quad(-15.5,7.5 , -14,17 , -8,17 , -6,7.5);
    quad(-5,7.5 , -3,24, 5,24 , 13,7.5);
    popMatrix();
  }
  void update(){    
    if(myBullet != null){
      myBullet.update();
      myBullet.show();
    }
      
    
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
