Spaceship bob = new Spaceship();
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
Star [] stars;
public void setup() 
{
  size(500,500);
  stars = new Star[100];
  for (int i = 0; i < stars.length; i++)
  {
  	stars[i] = new Star();
  }
  for (int i = 0; i < 20; i++)
  {
    rocks.add(new Asteroid());
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
  for(int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
    int d = (int)(dist(bob.getX(), bob.getY(), rocks.get(i).getX(), rocks.get(i).getY()));
    if(d < 10)
      rocks.remove(i);
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