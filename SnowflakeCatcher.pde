int progress;
void setup()
{
  background (9,0,54);
  size (500,500);
}


void draw()
{
  if (framecount%5==0)
    progress++;
  rect (500,500,0,progress);
}


void mouseDragged()
{
  //your code here
}


class Snowflake
{
  //class member variable declarations
  
  Snowflake()
  {
    int myY;
    myY= y;
    y=0;
    myY = myY +(int)(Math.random()*30)+10;
  fill(238,238,255);  //class member variable initializations

  }
  
  void show()
  {
    //your code here
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
    //your code here
  }
  
  void wrap()
  {
    //your code here
  }
}


