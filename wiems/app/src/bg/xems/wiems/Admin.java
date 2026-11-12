package bg.xems.wiems;

/**
 * Device-owner hook (v1.24, owner: "the update must apply by itself"): once the tablet is set up with
 * `adb shell dpm set-device-owner bg.xems.wiems/.Admin` (docs/xems-wiems-app.md v1.24), Android lets this app install
 * its own updates with no "Инсталирай" tap. It needs no policies; without that set-up nothing changes.
 */
public final class Admin extends android.app.admin.DeviceAdminReceiver {
}
