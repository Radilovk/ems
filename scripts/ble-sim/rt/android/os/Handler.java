package android.os;
public class Handler {
  public static final java.util.List<Object[]> Q = new java.util.ArrayList<Object[]>();
  public static long now = 0;
  public Handler(){} public Handler(Looper l){}
  public boolean post(Runnable r){ return postDelayed(r,0);} 
  public boolean postDelayed(Runnable r,long d){ Q.add(new Object[]{now+d, r}); return true; }
  public void removeCallbacks(Runnable r){ for (java.util.Iterator<Object[]> it=Q.iterator(); it.hasNext();) if (it.next()[1]==r) it.remove(); }
  /** run everything due up to t */
  public static void advance(long t){ while(true){ Object[] best=null; for(Object[] e:Q) if(((Long)e[0])<=t && (best==null||((Long)e[0])<(Long)best[0])) best=e; if(best==null) break; Q.remove(best); now=(Long)best[0]; ((Runnable)best[1]).run(); } now=t; }
}
