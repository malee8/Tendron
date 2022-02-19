Cluster c;
int bg1=255;
int bg2=255;
int bg3=255;
public void setup()
{
  size(500, 500);
  background(255);
  noLoop();
}

public void draw()
{
  background(bg1, bg2, bg3);
  c = new Cluster(50, 250, 250);
}
public void mousePressed()
{
  bg1=(int)(Math.random()*256);
  bg2=(int)(Math.random()*256);
  bg3=(int)(Math.random()*256);
  stroke(bg2, bg3, bg1);
  redraw();
}
