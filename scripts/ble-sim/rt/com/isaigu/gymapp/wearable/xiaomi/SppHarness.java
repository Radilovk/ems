package com.isaigu.gymapp.wearable.xiaomi;

import android.os.Handler;
import java.io.*;
import java.util.*;

/** Runs the real XiaomiBandSppClient against spp_band.py (stubbed android.*, simulated time). */
public class SppHarness implements XiaomiBandSppPort {
  static BufferedReader in; static PrintWriter out; static String dropped;
  static final List<byte[]> toBand = new ArrayList<byte[]>();
  static final List<byte[]> toPhone = new ArrayList<byte[]>();
  static final List<Integer> hrs = new ArrayList<Integer>();
  static final List<String> states = new ArrayList<String>();

  public void write(byte[] d) { toBand.add(d); }
  public void close() {}

  static void talk(String line) throws Exception {
    out.println(line); out.flush();
    String l;
    while (!(l = in.readLine()).equals(".")) {
      if (l.startsWith("B ")) toPhone.add(hex(l.substring(2)));
      else if (l.startsWith("L ")) System.out.println("    band: " + l.substring(2));
      else if (l.startsWith("X ")) { dropped = l.substring(2); System.out.println("  !! BAND DROPS LINK: " + dropped); }
    }
  }
  static byte[] hex(String s) { byte[] b = new byte[s.length() / 2]; for (int i = 0; i < b.length; i++) b[i] = (byte) Integer.parseInt(s.substring(2 * i, 2 * i + 2), 16); return b; }

  static void pump(XiaomiBandSppClient c, SppHarness port) throws Exception {
    while (dropped == null && (!toBand.isEmpty() || !toPhone.isEmpty())) {
      if (!toBand.isEmpty()) { talk("W " + XiaomiBandSppClient.hex(toBand.remove(0))); continue; }
      c.onPortBytes(port, toPhone.remove(0));
    }
  }

  public static void main(String[] a) throws Exception {
    Process p = new ProcessBuilder("python3", a[0], a[1]).redirectError(ProcessBuilder.Redirect.INHERIT).start();
    in = new BufferedReader(new InputStreamReader(p.getInputStream())); out = new PrintWriter(p.getOutputStream());
    SppHarness port = new SppHarness();
    XiaomiBand.select(new android.content.Context(), "D0:62:2C:26:49:60", XiaomiBand.SPP);
    XiaomiBandSppClient c = XiaomiBandSppClient.getInstance();
    c.setTestPort(port);
    c.setListener(new Listen());
    XiaomiBandRemote.setListener(new Remote(c));
    XiaomiBandAppLink.setListener(new App());
    c.connect(new android.content.Context(), "D0:62:2C:26:49:60", a[1]);
    c.startRealtime();
    for (long t = 0; t < 30000 && dropped == null; t += 250) {
      pump(c, port); Handler.advance(t); pump(c, port); talk("TICK"); pump(c, port);
      if (!keys.isEmpty() && install == null) {
        byte[] rpk = new byte[5000]; new Random(7).nextBytes(rpk);
        install = "started";
        XiaomiBandInstaller.install(rpk, "com.xems.band", 1, new Install());
      }
    }
    talk("SUMMARY");
    System.out.println("STATUS battery=" + XiaomiBandStatus.getBatteryPercent() + " worn=" + XiaomiBandStatus.isKnownWorn()
        + " notWorn=" + XiaomiBandStatus.isKnownNotWorn() + " fw=" + XiaomiBandStatus.getFirmware()
        + " model=" + XiaomiBandStatus.getModel() + " transport=" + c.getTransportName());
    System.out.println("KEYS " + keys);
    System.out.println("INSTALL " + install);
    System.out.println("RESULT dropped=" + dropped + " hr=" + hrs + " finalState=" + (states.isEmpty() ? "" : states.get(states.size() - 1)));
    p.destroy();
  }

  static String install;
  static final class Install implements XiaomiBandInstaller.Listener {
    public void onProgress(int pct, String state) {}
    public void onDone(boolean ok, String msg) { install = ok + " " + msg; System.out.println("  [install] " + install); }
  }
  static final class App implements XiaomiBandAppLink.Listener {
    public void onAppMessage(String json) {
      System.out.println("  [app] " + json);
      if (json.contains("hello")) XiaomiBandAppLink.send("{\"t\":\"state\",\"hr\":72,\"title\":\"Основна\"}");
    }
  }

  static final List<Integer> keys = new ArrayList<Integer>();
  static final class Remote implements XiaomiBandRemote.Listener {
    final XiaomiBandSppClient c;
    Remote(XiaomiBandSppClient c) { this.c = c; }
    public void onMusicRequest() { c.sendCommand(XiaomiBandRemote.musicInfo(true, false, 50, "128 bpm · Z3", "Основна · 4:20 · 86 kcal", 300, 1200)); }
    public void onMediaKey(int key, int volume) { keys.add(key); System.out.println("  [KEY] " + key); }
  }

  static final class Listen implements XiaomiBandBleClient.Listener {
    public void onState(String s) { states.add(s); System.out.println("  [state] " + s); }
    public void onHeartRate(int hr) { hrs.add(hr); System.out.println("  [HR] " + hr); }
    public void onConnected(boolean b) {}
  }
}
