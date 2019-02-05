class Bullet extends Mover{
  private int live;
  Bullet(float x, float y){
    super(x,y);
    live = 100;
    
  }
  Bullet(float x, float y, float speed, float direction){
    super(x,y,speed,direction);
  }
  
  void show(){
    pushMatrix();
    translate(x,y);
    if(live > 0){
    quad(-5,10 , 5,10 , 5,-10 , -5,-10);
    }
    popMatrix();
  }
  void update(){
    super.update();
    //live =- 1;
  }
  boolean isAlive(){
    if(live <= 0){
      return false;
    }
    return true;
  }
}
