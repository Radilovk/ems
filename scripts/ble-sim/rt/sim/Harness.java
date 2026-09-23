package sim;
import android.bluetooth.*; import android.os.Handler; import java.io.*; import java.util.*;
import com.isaigu.gymapp.wearable.xiaomi.XiaomiBandBleClient;
public class Harness {
  static BufferedReader in; static PrintWriter out; static String dropped=null; static List<Integer> hrs=new ArrayList<Integer>(); static List<String> states=new ArrayList<String>();
  static final List<String[]> NOTES=new ArrayList<String[]>();
  static void talk(String line) throws Exception {
    out.println(line); out.flush();
    String l;
    while(!(l=in.readLine()).equals(".")){
      if(l.startsWith("L ")) System.out.println("    band: "+l.substring(2));
      else if(l.startsWith("X ")) { dropped=l.substring(2); System.out.println("  !! BAND DROPS LINK: "+dropped); }
      else if(l.startsWith("N ")) NOTES.add(l.split(" "));
    }
  }
  static byte[] hex(String s){ byte[] b=new byte[s.length()/2]; for(int i=0;i<b.length;i++) b[i]=(byte)Integer.parseInt(s.substring(2*i,2*i+2),16); return b;}
  static String hexs(byte[] b){ StringBuilder sb=new StringBuilder(); for(byte x:b) sb.append(String.format("%02x",x&0xff)); return sb.toString();}
  static void pump() throws Exception {
    BluetoothGatt g=BluetoothDevice.LAST;
    while(dropped==null && (!BluetoothGatt.EV.isEmpty() || !NOTES.isEmpty())){
      if(!BluetoothGatt.EV.isEmpty()){
        Object[] e=BluetoothGatt.EV.remove(0); String k=(String)e[0];
        if(k.equals("connected")) g.cb.onConnectionStateChange(g,0,2);
        else if(k.equals("mtu")) g.cb.onMtuChanged(g,247,0);
        else if(k.equals("discovered")) g.cb.onServicesDiscovered(g,0);
        else if(k.equals("desc")) g.cb.onDescriptorWrite(g,(BluetoothGattDescriptor)e[1],0);
        else if(k.equals("write")) { BluetoothGattCharacteristic c=(BluetoothGattCharacteristic)e[1]; byte[] v=(byte[])e[2]; System.out.println("  phone -> "+c.label()+" "+hexs(v)); g.cb.onCharacteristicWrite(g,c,0); talk("W "+c.label()+" "+hexs(v)); }
        continue;
      }
      String[] n=NOTES.remove(0);
      BluetoothGattCharacteristic c=g.svc.m.get("000000"+n[1]+"-0000-1000-8000-00805f9b34fb"); c.setValue(hex(n[2])); System.out.println("  band -> "+n[1]+" "+n[2]); g.cb.onCharacteristicChanged(g,c);
    }
  }
  public static void main(String[] a) throws Exception {
    Process p=new ProcessBuilder("python3", a[0], a[1]).redirectError(ProcessBuilder.Redirect.INHERIT).start();
    in=new BufferedReader(new InputStreamReader(p.getInputStream())); out=new PrintWriter(p.getOutputStream());
    boolean noMtuCb = a.length>2 && a[2].equals("nomtu");
    XiaomiBandBleClient c=XiaomiBandBleClient.getInstance();
    c.setListener(new XiaomiBandBleClient.Listener(){ public void onState(String s){ states.add(s); System.out.println("  [state] "+s);} public void onHeartRate(int hr){ hrs.add(hr); System.out.println("  [HR] "+hr);} public void onConnected(boolean b){} });
    c.connect(new android.content.Context(),"D0:62:2C:26:49:60",a[1]);
    if(noMtuCb) BluetoothDevice.LAST.mtuCallback=false;
    c.startRealtime();
    for(long t=0;t<30000 && dropped==null;t+=250){ pump(); Handler.advance(t); pump(); talk("TICK"); }
    talk("SUMMARY");
    System.out.println("RESULT dropped="+dropped+" hr="+hrs+" finalState="+(states.isEmpty()?"":states.get(states.size()-1)));
    p.destroy();
  }
}
