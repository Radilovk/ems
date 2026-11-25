package com.xems.bhspy;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

import java.util.List;

/**
 * The Binder of the look-alike Player service: decodes every transaction of IBhapticsService by hand (no AIDL
 * tool needed, nothing of the vendor's SDK inside), logs it, answers it.
 */
final class SpyBinder extends Binder {
    private final Context ctx;

    SpyBinder(Context c) {
        ctx = c;
        attachInterface(null, Sig.DESCRIPTOR);
    }

    private String caller() {
        try {
            String[] p = ctx.getPackageManager().getPackagesForUid(Binder.getCallingUid());
            return p == null || p.length == 0 ? "uid" + Binder.getCallingUid() : p[0];
        } catch (RuntimeException e) {
            return "uid" + Binder.getCallingUid();
        }
    }

    @Override
    protected boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
        if (code == IBinder.INTERFACE_TRANSACTION) {
            if (reply != null) reply.writeString(Sig.DESCRIPTOR);
            return true;
        }
        int index = code - IBinder.FIRST_CALL_TRANSACTION;
        if (index < 0 || index >= Sig.count()) return super.onTransact(code, data, reply, flags);
        data.enforceInterface(Sig.DESCRIPTOR);
        Object[] args = Sig.decode(index, new ParcelReader(data));
        Object ret = Spy.get(ctx).onCall(caller(), index, args);
        if (reply != null && (flags & IBinder.FLAG_ONEWAY) == 0) {
            reply.writeNoException();
            switch (Sig.ret(index)) {
                case 'Z': reply.writeInt(((Boolean) ret).booleanValue() ? 1 : 0); break;
                case 'I': reply.writeInt(((Integer) ret).intValue()); break;
                case 'L': reply.writeStringList((List<String>) ret); break;
                case 'b': reply.writeByteArray((byte[]) ret); break;
                default: break;
            }
        }
        return true;
    }

    private static final class ParcelReader implements Sig.Reader {
        private final Parcel p;

        ParcelReader(Parcel p) {
            this.p = p;
        }

        public String readString() {
            return p.readString();
        }

        public int readInt() {
            return p.readInt();
        }

        public float readFloat() {
            return p.readFloat();
        }

        public byte[] createByteArray() {
            return p.createByteArray();
        }

        public int[] createIntArray() {
            return p.createIntArray();
        }

        public float[] createFloatArray() {
            return p.createFloatArray();
        }
    }
}
