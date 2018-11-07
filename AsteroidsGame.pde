Spaceship bob = new Spaceship();
public void setup() 
{
  size(500,500);
}
public void draw() 
{
  bob.show();
}
public void keyPressed()
{
	if (key == 'a'){};
	if (key == 's'){};
	if (key == 'w'){};
	if (key == 'd'){};
	//hyperspace
	if (key == 'b'){bob.setDirectionX(0);}
}
 /* When you are happy with appearance of the Spaceship, add a public void keyPressed() function in AsteroidsGame.pde
Write code in keyPressed that allows you to control the spaceship with the keyboard. You must include the ability to turn left, turn right, accelerate, and enter "hyperspace." 
Add code to the draw() in AsteroidsGame.pde to move() the Spaceship
Finish the Star class in Star.pde
Finally, add code to AsteroidsGame.pde that declares and initializes an array of instances of the Star class to create a number of stars in random positions
Note that for full credit, you MUST include instructions on how to operate your Spaceship in the index.html file