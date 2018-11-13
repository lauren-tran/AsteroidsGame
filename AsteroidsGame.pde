Spaceship bob = new Spaceship();
Star [] stars;
public void setup() 
{
  size(500,500);
  stars = new Star[100];
  for (int i = 0; i < stars.length; i++)
  {
  	stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
  for(int i = 0; i < stars.length; i++)
  {
  	stars[i].show();
  }
  fill(255);
  textSize(20);
  text("myCenterX "+bob.getX(),20,30);
  text("myCenterY "+bob.getY(),20,50);
  text("myPointDirection "+bob.getPointDirection(),20,70);
  text("myDirectionX "+bob.getDirectionX(),20,90);
  text("myDirectionY "+bob.getDirectionY(),20,110);
}
public void keyPressed()
{
	if (key == 'a'){bob.turn(-15);}
	if (key == 'd'){bob.turn(15);}
	if (key == 'w'){bob.accelerate(1);}
	if (key == 's'){
		bob.setX((int)(Math.random()*500));
		bob.setY((int)(Math.random()*500));
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setPointDirection((int)(Math.random()*360));
	}
}
 /* When you are happy with appearance of the Spaceship, add a public void keyPressed() function in AsteroidsGame.pde
Write code in keyPressed that allows you to control the spaceship with the keyboard. You must include the ability to turn left, turn right, accelerate, and enter "hyperspace." 
Add code to the draw() in AsteroidsGame.pde to move() the Spaceship
Finish the Star class in Star.pde
Finally, add code to AsteroidsGame.pde that declares and initializes an array of instances of the Star class to create a number of stars in random positions
Note that for full credit, you MUST include instructions on how to operate your Spaceship in the index.html file
*/