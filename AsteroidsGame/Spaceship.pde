  /*
  Spaceship class
    Should extend Mover class and implement show.
    You may add additional methods to this class, for example "rotate" and "accelerate" 
    might be useful.
*/
class Spaceship extends Mover{
  Spaceship(float x, float y){
    super(x,y);
  }
  Spaceship(float x, float y, float speed, float direction){
    super(x, y, speed, direction);
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
}
