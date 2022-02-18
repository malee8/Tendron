class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments;
  private double myAngle, startX, startY, endX, endY;

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
    startX=(double)x;
    endX=(double)x;
    startY=(double)y;
    endY=(double)y;
  }
  public void show()
  {
    while (myNumSegments<4) {
      endX=startX+Math.cos(myAngle)*20;
      endY=startY+Math.sin(myAngle)*20;
      line((float)startX, (float)startY, (float)endX, (float)endY);
      System.out.println(startX);
      System.out.println(endX);
      System.out.println(startY);
      System.out.println(endY);
      startX=endX;
      startY=endY;
    }
  }
}
