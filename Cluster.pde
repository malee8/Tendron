public class Cluster
{
  public final static int NUM_STEMS = 7;
  public Cluster(int len, int x, int y)
  {
    Tendril bob=new Tendril(len,Math.random()*TWO_PI,x,y);
    bob.show();
  }
}
