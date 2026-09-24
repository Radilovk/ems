package android.os; public class HandlerThread extends Thread { public HandlerThread(String n){super(n);} public Looper getLooper(){return null;} public boolean quit(){return true;} }
