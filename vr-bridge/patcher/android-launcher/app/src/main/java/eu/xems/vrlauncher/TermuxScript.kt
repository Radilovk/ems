package eu.xems.vrlauncher

import android.annotation.SuppressLint

/** What the launcher asks Termux to do; each run remembers its task so the answer is read the right way. */
enum class Task { PATCH, CHECK, FIND, GAMES, SETUP, CATALOG, INSTALL, STORAGE, VRCHECK, DOWNLOADS, INSTALLFILE }

/**
 * argv for each task. Everything runs from Termux's $HOME with absolute paths, so a missing ~/ems shows up as
 * bash's exit 127 ("not set up") instead of Termux refusing a missing workdir. Pure — unit-tested.
 */
@SuppressLint("SdCardPath") // Termux's fixed install paths, not ours
object TermuxScript {
    const val HOME = "/data/data/com.termux/files/home"
    const val BASH = "/data/data/com.termux/files/usr/bin/bash"
    const val RUN = "$HOME/ems/vr-bridge/patcher/android-launcher/termux/termux-run.sh"
    /** Asset name of termux/termux-setup.sh inside the APK. */
    const val SETUP_ASSET = "termux-setup.sh"

    fun check() = arrayOf(RUN, "check")
    fun find(tabletIp: String) = arrayOf(RUN, "find", tabletIp)
    fun games(questSerial: String) = arrayOf(RUN, "games", questSerial)

    fun catalog() = arrayOf(RUN, "catalog")
    fun vrcheck(questSerial: String) = arrayOf(RUN, "vrcheck", questSerial)
    fun downloads() = arrayOf(RUN, "downloads")

    fun installFile(questSerial: String, apk: String, tabletIp: String?): Array<String> =
        if (tabletIp != null) arrayOf(RUN, "installfile", questSerial, apk, tabletIp) else arrayOf(RUN, "installfile", questSerial, apk)

    fun install(questSerial: String, id: String, tabletIp: String?): Array<String> =
        if (tabletIp != null) arrayOf(RUN, "install", questSerial, id, tabletIp) else arrayOf(RUN, "install", questSerial, id)

    /** Termux's own one-time "allow access to files" dialog (Downloads for page games). */
    fun storage() = arrayOf("/data/data/com.termux/files/usr/bin/termux-setup-storage")

    fun patch(r: PatchRequest): Array<String> =
        if (r.tabletIp != null) arrayOf(RUN, "patch", r.questSerial, r.targetPackage, r.tabletIp)
        else arrayOf(RUN, "patch", r.questSerial, r.targetPackage)

    /** The setup script travels inside the argv: `bash -c <script> xems-setup`. */
    fun setup(script: String) = arrayOf("-c", script, "xems-setup")

    /** Short form for the status card. */
    fun display(args: Array<String>): String =
        if (args.firstOrNull() == "-c") "termux-setup.sh"
        else args.joinToString(" ").replace(RUN, "termux-run.sh")
}
