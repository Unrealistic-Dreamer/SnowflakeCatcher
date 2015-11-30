Snowflake[]Flakes;
int snowFall, myX,myY;

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

  Flakes = new Snowflake[300];
  
  for (int i=1; i< Flakes.length; i++)
    {
      Flakes[i] = new Snowflake();                                                                                                                                                                                                                                                                                                                                                                                                                               
    }

}


void draw()
{
    for (int i=1; i< Flakes.length; i++)
    { 
       Flakes[i].erase();
        Flakes[i].lookDown();
         Flakes[i].move();
        Flakes[i].show();
        Flakes[i].wrap();
    }
}


void mouseDragged()
{
  fill(200,0,0);
  ellipse(mouseX,mouseY,8,8);
}


class Snowflake
{
  int myX, myY;
  boolean isMoving;
  
  public Snowflake()
    {
      myY = myY +(int)(Math.random()*-500)+10;
      myX = myX +(int)(Math.random()*499)+1;
      isMoving = true;
     
    }
  
  void show()
    {
      fill (225);
      ellipse(myX, myY, 5, 5);
    }
  
  void lookDown()
    {
      if(get(myX,myY+8) == color(200,0,0))
      {
        isMoving=false;
      }
    else
    {
      isMoving=true;
    } 
      if(myY>=500)
        { isMoving = false;}
    }
  
  void erase()
   {
      noStroke();
      fill(9,0,54);
      ellipse(myX,myY, 10, 10);
      isMoving=true;

   }
  
  void move()
  {
    if(isMoving==true)
    {myY=myY+2;}
  }
  
  void wrap()
  {
    if (isMoving ==false)
      {myY=0;}
  }
}


