class Star{
	private int myX, myY;
	public Star(){
  		myX = (int)(Math.random()*500);
  		myY = (int)(Math.random()*500);
  	}
  	public void show(){
  		ellipse(myX, myY, 1, 1);
  	}
  }
