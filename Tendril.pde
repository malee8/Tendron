class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments=len;
    myAngle=theta;
    myX=x;
    myY=y;
  }
  public void show()
  {
    if(myNumSegments>10){
      stroke(50,5,250);
    }
    else if(myNumSegments>=5){
      stroke(5,200,50);
    }
    else{
      stroke(200,50,5);
    }
    int startX=myX;
    int endX=myX;
    int startY=myY;
    int endY=myY;
    for (int i=0; i<myNumSegments; i++) {
      myAngle=myAngle+(double)((int)(Math.random()*5)-2)/10;
      endX=startX+(int)(Math.cos(myAngle)*SEG_LENGTH);
      endY=startY+(int)(Math.sin(myAngle)*SEG_LENGTH);
      line(startX, startY, endX, endY);
      startX=endX;
      startY=endY;
    }
    if (myNumSegments>=3) {
      new Cluster(myNumSegments/3, endX, endY);
    }
  }
}
