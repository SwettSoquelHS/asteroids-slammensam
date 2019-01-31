/* * * * * * * * * * * * * * * * * * * * * * *
 Class variable declarations here
 */
float direction;
float speed;
float x;
float y;

Spaceship player1;
Asteroid[] rocks;
//Star[] starField;


/*
  Track User keyboard input
 */

boolean ROTATE_LEFT;  //User is pressing <-
boolean ROTATE_RIGHT; //User is pressing ->
boolean MOVE_FORWARD; //User is pressing ^ arrow
boolean SPACE_BAR;    //User is pressing space bar

  
/* * * * * * * * * * * * * * * * * * * * * * *
  Initialize all of your variables and game state here
 */
public void setup() {
  size(1024, 576);
  x = width;
  y = height;
  
  speed = 2;
  direction = 270;
  
  //initialize your asteroid array and fill it
  rocks = new Asteroid[10];
  for(int i = 0; i < rocks.length; i++){
    rocks[i] = new Asteroid((int)(Math.random() * width),(int)(Math.random() * height),(int)(Math.random() * speed + 1),(int)(Math.random() * direction));
  }
  //initialize ship
  player1 = new Spaceship(x/2,y/2,speed,direction);
  //initialize starfield
}


/* * * * * * * * * * * * * * * * * * * * * * *
  Drawing work here
 */
public void draw() {
  //your code here
  background(0);
  
  
  //Draw Starfield first 
  //TODO: Part I
  
  //Check bullet collisions
  //TODO: Part III or IV - for not just leave this comment
  
  //TODO: Part II, Update each of the Asteroids internals
  
  //Check for asteroid collisions against other asteroids and alter course
   
   checkOnAsteroids();
        
  
  //TODO: Part III, for now keep this comment in place

  //Draw asteroids
  //TODO: Part II
  for(int i = 0; i < rocks.length; i++){
    rocks[i].update();
    rocks[i].show();
  }
  //Update spaceship
  //TODO: Part I
  player1.update();
  player1.show();
  
  if(ROTATE_LEFT) player1.direction -= 2.5;
  if(ROTATE_RIGHT) player1.direction += 2.5;
  if(MOVE_FORWARD){
    if(player1.speed < 5){
      player1.speed += 0.5;
    }
  }
  //Check for ship collision agaist asteroids
  //TODO: Part II or III

  //Draw spaceship & and its bullets
  //TODO: Part I, for now just render ship
  //TODO: Part IV - we will use a new feature in Java called an ArrayList, 
  //so for now we'll just leave this comment and come back to it in a bit. 
  
  //Update score
  //TODO: Keep track of a score and output the score at the top right
}



/* * * * * * * * * * * * * * * * * * * * * * *
  Record relevent key presses for our game
 */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = true;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    }
  }

  //32 is spacebar
  if (keyCode == 32) {  
    SPACE_BAR = true;
  }
}



/* * * * * * * * * * * * * * * * * * * * * * *
  Record relevant key releases for our game.
 */
void keyReleased() {  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    }
  }
  if (keyCode == 32) {
    SPACE_BAR = false;
  }
}

void checkOnAsteroids(){
  for(int i = 0; i < rocks.length; i++){
    Asteroid a1 = rocks[i];
    for(int j = 0; j < rocks.length; j++){
        Asteroid a2 = rocks[j];
        if(a1 != a2 && a1.collidingWith(a2)){
           a1.setDirection((float)(Math.random()*180 + 1));
        }
    }
  }
}
