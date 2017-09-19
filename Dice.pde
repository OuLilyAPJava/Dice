void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  for(int j = 25; j < 400; j += 70)
  {
    for(int i = 50; i < 450; i += 70)
    {
      Die first = new Die(i, j);
      first.show();
      first.roll();
    }
  }
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
    fill(0);
    textSize(20);
    text("Total:", 170, 470);
    fill(255);
  }
  void show()
  {
    rect(myX, myY, 50, 50, 10);
    if((int)(Math.random()*6)+1 == 1)
    {
      fill(0);
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    else if((int)(Math.random()*6)+1 == 2)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
    }
    else if((int)(Math.random()*6)+1 == 3)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
    }
    else if((int)(Math.random()*6)+1 == 4)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
    }
    else if((int)(Math.random()*6)+1 == 5)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
    }
    else
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 10, myY + 25, 5, 5);
      ellipse(myX + 40, myY + 25, 5, 5);
    }
    fill(255);
  }
}