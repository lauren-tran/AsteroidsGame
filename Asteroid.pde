class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid(){
		rotSpeed = (int)(Math.random()*21-10);
		corners = 6;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -9;
		yCorners[0] = -6;
		xCorners[1] = 7;
		yCorners[1] = -8;
		xCorners[2] = 13;
		yCorners[2] = 0;
		xCorners[3] = 6;
		yCorners[3] = 10;
		xCorners[4] = -6;
		yCorners[4] = 8;
		xCorners[5] = -8;
		yCorners[5] = 0;
		myCenterX = (int)(Math.random()*501);
		myCenterY = (int)(Math.random()*501);
		myDirectionX = (int)(Math.random()*5-2);
		myDirectionY = (int)(Math.random()*5-2);
		myColor = 180;
	}
	public void setX(int x){myCenterX = x;}
  	public int getX(){return (int)myCenterX;}
  	public void setY(int y){myCenterY = y;}
  	public int getY(){return (int)myCenterY;}
  	public void setDirectionX(double x){myDirectionX = x;}
 	public double getDirectionX(){return myDirectionX;}
 	public void setDirectionY(double y){myDirectionY = y;}
 	public double getDirectionY(){return myDirectionY;}
  	public void setPointDirection(int degrees){myPointDirection = degrees;}
  	public double getPointDirection(){return myPointDirection;}
  	public void move(){
  		super.move();
  		turn(rotSpeed);
   		}
  }