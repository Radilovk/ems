.class public final Lcom/isaigu/gymapp/wearable/WearableBlePermissions;
.super Ljava/lang/Object;
.source "WearableBlePermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;
    }
.end annotation


# static fields
.field static final PERMISSION_REQUEST:I = 0x5752

.field private static final PERM_CONNECT:Ljava/lang/String; = "android.permission.BLUETOOTH_CONNECT"

.field private static final PERM_SCAN:Ljava/lang/String; = "android.permission.BLUETOOTH_SCAN"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 5

    .line 51
    if-nez p0, :cond_6

    .line 52
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    .line 53
    return-void

    .line 55
    :cond_6
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 56
    if-eqz p1, :cond_11

    .line 57
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 59
    :cond_11
    return-void

    .line 61
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1e

    .line 62
    if-eqz p1, :cond_1d

    .line 63
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 65
    :cond_1d
    return-void

    .line 67
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayForPermissions()V

    .line 68
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 69
    const/16 v1, 0x5752

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;

    invoke-direct {v2, p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 71
    return-void
.end method

.method public static hasAllBlePermissions(Landroid/content/Context;)Z
    .registers 5

    .line 24
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 25
    return v0

    .line 27
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-ge v1, v2, :cond_c

    .line 28
    return v3

    .line 30
    :cond_c
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1e

    .line 31
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 30
    :goto_1f
    return v0
.end method

.method public static hasConnectPermission(Landroid/content/Context;)Z
    .registers 1

    .line 35
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static openAppSettings(Landroid/app/Activity;)V
    .registers 4

    .line 74
    if-nez p0, :cond_3

    .line 75
    return-void

    .line 78
    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 80
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2f

    .line 83
    goto :goto_30

    .line 82
    :catchall_2f
    move-exception p0

    .line 84
    :goto_30
    return-void
.end method

.method public static requestAtStartup(Landroid/app/Activity;)V
    .registers 4

    .line 40
    if-eqz p0, :cond_1f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_9

    goto :goto_1f

    .line 43
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 44
    return-void

    .line 46
    :cond_10
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 47
    const/16 v1, 0x5752

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 48
    return-void

    .line 41
    :cond_1f
    :goto_1f
    return-void
.end method
