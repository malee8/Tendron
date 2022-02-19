public class Cluster
{
  public final static int NUM_STEMS = 7;
  public Cluster(int len, int x, int y)
  {
    for (int i=0; i<NUM_STEMS; i++) {
      Tendril bob=new Tendril(len, Math.random()*TWO_PI, x, y);
      bob.show();
    }
  }
}
