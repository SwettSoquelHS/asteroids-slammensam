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
    
  }
  void update(){
    super.update();
    live -= 1;
  }
  
}
