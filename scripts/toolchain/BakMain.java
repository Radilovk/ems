// Built by scripts/setup-android-toolchain.sh when bitbucket refuses the baksmali download.
import com.android.tools.smali.baksmali.Baksmali;
import com.android.tools.smali.baksmali.BaksmaliOptions;
import com.android.tools.smali.dexlib2.DexFileFactory;
import com.android.tools.smali.dexlib2.Opcodes;
import com.android.tools.smali.dexlib2.iface.DexFile;
import java.io.File;
/** baksmali "d <dex> -o <dir>" on top of the baksmali library bundled in apktool.jar. */
public class BakMain {
    public static void main(String[] a) throws Exception {
        String dex = null, out = "out";
        for (int i = 0; i < a.length; i++) {
            if (a[i].equals("-o")) out = a[++i];
            else if (!a[i].equals("d") && !a[i].equals("disassemble")) dex = a[i];
        }
        DexFile f = com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile.fromInputStream(Opcodes.getDefault(), new java.io.BufferedInputStream(new java.io.FileInputStream(dex)));
        BaksmaliOptions o = new BaksmaliOptions();
        if (!Baksmali.disassembleDexFile(f, new File(out), 1, o)) System.exit(1);
    }
}
