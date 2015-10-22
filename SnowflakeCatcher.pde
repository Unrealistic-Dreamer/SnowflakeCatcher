Snowflake[]Flakes;

void setup()
{
  background (9,0,54);
  size (500,500);
  stroke(225);
  fill(225);
  ellipse(250, 400, 150, 150);
  ellipse(250, 300, 100, 100);
  rect (0,450,500,50);
  fill (0);
  ellipse(270,300, 20, 20);
  ellipse(230,300, 20, 20);

  Flakes = new Snowflake[100];

  
  for (int i=1; i< Flakes.length; i++)
    {
      Flakes[i] = new Snowflake();
    }
}


void draw()
{
  
    for (int i=1; i< Flakes.length; i++)
    {
      Flakes[i].move();
     
    }

}


void mouseDragged()
{
  //your code here
}


class Snowflake
{
  int myX, myY;
  boolean isMoving;
  //class member variable declarations
  
  public Snowflake()
    {
      myY = myY +(int)(Math.random()*30)+10;
      myX = myX +(int)(Math.random()*499)+1;
      fill (225);
      ellipse(myX, myY, 5, 5);
    }
  
  void show()
    {
      fill (225);
      ellipse(myX, myY, 5, 5);
    }
  
  void lookDown()
    {
    //your code here
    }
  
  void erase()
  {
    //your code here
  }
  
  void move()
  {
   if (myX <= 500)
   myX = myX- (int)(Math.random()*5)+1;
   else 
   myX = myX+ (int)(Math.random()*5)-1;
   if (myX >= 0)
   myX = myX = myX+ (int)(Math.random()*5)-1;
   else 
   myX = myX+ (int)(Math.random()*5)+1;

    if (myY <= 500)
        myY = myY- (int)(Math.random()*5)+1;
      else 
        myY = myY+ (int)(Math.random()*5)+2;
      if (myY >= 0)
        myY = myY = myY+ (int)(Math.random()*5)-1;
      else 
        myY = myY+ (int)(Math.random()*5)+1;
  }
  
  void wrap()
  {
    //your code here
  }
}


