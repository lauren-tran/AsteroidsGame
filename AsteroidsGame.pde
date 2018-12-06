Spaceship bob = new Spaceship();
Asteroid [] meteor;
Star [] stars;
public void setup() 
{
  size(500,500);
  stars = new Star[100];
  for (int i = 0; i < stars.length; i++)
  {
  	stars[i] = new Star();
  }
  meteor = new Asteroid[20];
  for (int i = 0; i < meteor.length; i++)
  {
    meteor[i] = new Asteroid();
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
  for(int i = 0; i < meteor.length; i++)
  {
    meteor[i].show();
    meteor[i].move();
  }
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