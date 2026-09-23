package android.bluetooth;
public class BluetoothGatt { public static final int GATT_SUCCESS=0, CONNECTION_PRIORITY_HIGH=1;
 public static final java.util.List<Object[]> EV = new java.util.ArrayList<Object[]>();
 public BluetoothGattCallback cb; public final BluetoothGattService svc=new BluetoothGattService(); public boolean closed; public boolean mtuCallback=true;
 public BluetoothGatt(){ for(String c:new String[]{"51","52","53","55"}){ String u="000000"+c+"-0000-1000-8000-00805f9b34fb"; svc.m.put(u,new BluetoothGattCharacteristic(u)); } }
 public void disconnect(){ EV.add(new Object[]{"disconnect"}); } public void close(){ closed=true; }
 public boolean requestConnectionPriority(int p){return true;}
 public boolean requestMtu(int m){ if(mtuCallback) EV.add(new Object[]{"mtu"}); return true;}
 public boolean discoverServices(){ EV.add(new Object[]{"discovered"}); return true;}
 public BluetoothGattService getService(java.util.UUID u){ return u.toString().startsWith("0000fe95")?svc:null; }
 public boolean writeCharacteristic(BluetoothGattCharacteristic c){ EV.add(new Object[]{"write", c, c.getValue().clone()}); return true; }
 public boolean setCharacteristicNotification(BluetoothGattCharacteristic c, boolean b){return true;}
 public boolean writeDescriptor(BluetoothGattDescriptor d){ EV.add(new Object[]{"desc", d}); return true;} }
