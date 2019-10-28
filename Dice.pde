void setup()
{
	size(512, 512);
	noLoop();
}
void draw()
{
	background(200);
	for(int y = 30; y < 500; y+=100)
	{
	for (int x = 30; x < 500 ; x+=100)
		{
			Die bob = new Die(x,y);
			bob.show();
			bob.roll();
			}
		}
	}
void mousePressed()
{
	redraw();
}
class Die 
{
	int myX, myY, rollNum;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		rollNum = (int)(Math.random() * 6 + 1);
	}
	void roll()
	{	
		if(rollNum == 1)
		{
			fill(0);
			ellipse(myX+25, myY+25, 10, 10);
		}
		if(rollNum == 2)
		{
			fill(0);
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
		}
		if(rollNum == 3)
		{
			fill(0);
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
		}
		if(rollNum == 4)
		{
			fill(0);
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+15, myY+35, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
			ellipse(myX+35, myY+15, 10, 10);
		}
		if(rollNum == 5)
		{
			fill(0);
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+15, myY+35, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
			ellipse(myX+35, myY+15, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
		}
		if(rollNum == 6)
		{
			fill(0);
			ellipse(myX+15, myY+10, 10, 10);
			ellipse(myX+15, myY+25, 10, 10);
			ellipse(myX+15, myY+40, 10, 10);
			ellipse(myX+35, myY+10, 10, 10);
			ellipse(myX+35, myY+25, 10, 10);
			ellipse(myX+35, myY+40, 10, 10);
		}

	}
	void show()
	{
		fill(255);
		rect(myX, myY, 50, 50);
	}
}
