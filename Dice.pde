void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  Die first = new Die(100, 100);
  first.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myY, myX;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    rect(myX, myY, 50, 50, 10);
    fill(0);
    if((int)(Math.random()*6)+1 == 1)
    {
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    else if((int)(Math.random()*6)+1 == 2)
    {
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
    }
    else if((int)(Math.random()*6)+1 == 3)
    {
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    else if((int)(Math.random()*6)+1 == 4)
    {
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    else if((int)(Math.random()*6)+1 == 5)
    {
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    else
    {
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    fill(255);
  }
}