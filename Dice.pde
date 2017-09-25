void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  int totalNum = 0;
  for (int j = 25; j < 400; j += 70)
  {
    for (int i = 50; i < 450; i += 70)
    {
      Die first = new Die(i, j);
      first.roll();
      first.show();
      if(first.one == true)
      {
         totalNum ++;
      }
    }
    System.out.println(totalNum);
  }
  fill(0);
  textSize(20);
  text("Total:", 170, 470);
  fill(255);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myY, myX;
  boolean one;
  boolean two;
  boolean three;
  boolean four;
  boolean five;
  boolean six;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();//initialize roll
  }
  void roll()
  {
    if((int)(Math.random()*6)+1 == 1)
    {
      one = true;
    }else if((int)(Math.random()*6)+1 == 2)
    {
      two = true;
    }else if((int)(Math.random()*6)+1 == 3)
    {
      three = true;
    }else if((int)(Math.random()*6)+1 == 4)
    {
      four = true;
    }else if((int)(Math.random()*6)+1 == 5)
    {
      five = true;
    }else
    {
      six = true;
    }
  }
  void show()
  {
    rect(myX, myY, 50, 50, 10);
    if(one == true)
    {
      fill(0);
      ellipse(myX + 25, myY + 25, 5, 5);
    } else if(two == true)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
    } else if(three == true)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
    } else if(four == true)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
    } else if(five == true)
    {
      fill(0);
      ellipse(myX + 10, myY + 10, 5, 5);
      ellipse(myX + 40, myY + 40, 5, 5);
      ellipse(myX + 10, myY + 40, 5, 5);
      ellipse(myX + 40, myY + 10, 5, 5);
      ellipse(myX + 25, myY + 25, 5, 5);
    } else
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