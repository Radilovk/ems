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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    .line 75
    if-nez p0, :cond_6

    .line 76
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    .line 77
    return-void

    .line 79
    :cond_6
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 80
    if-eqz p1, :cond_11

    .line 81
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 83
    :cond_11
    return-void

    .line 85
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1e

    .line 86
    if-eqz p1, :cond_1d

    .line 87
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_1d
    return-void

    .line 91
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayForPermissions()V

    .line 92
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->requestBlePermissions(Landroid/app/Activity;Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 93
    return-void
.end method

.method public static gateGattOrNotify(Landroid/content/Context;)Z
    .registers 3

    .line 127
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 128
    return v0

    .line 130
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 131
    const/4 p0, 0x1

    return p0

    .line 133
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object p0

    .line 134
    if-eqz p0, :cond_17

    .line 135
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_1a

    .line 137
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    .line 139
    :goto_1a
    return v0
.end method

.method public static hasAllBlePermissions(Landroid/content/Context;)Z
    .registers 5

    .line 26
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 27
    return v0

    .line 29
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-ge v1, v2, :cond_c

    .line 30
    return v3

    .line 32
    :cond_c
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1e

    .line 33
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 32
    :goto_1f
    return v0
.end method

.method public static hasConnectPermission(Landroid/content/Context;)Z
    .registers 1

    .line 52
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static logPermissionState(Landroid/content/Context;)V
    .registers 6

    .line 38
    if-nez p0, :cond_3

    .line 39
    return-void

    .line 41
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, "perm"

    if-ge v0, v1, :cond_11

    .line 42
    const-string p0, "API<31 legacy BT"

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 45
    :cond_11
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 46
    :goto_1e
    const-string v4, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 47
    :goto_28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECT="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " SCAN="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private static missingPermissions(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_10
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1b

    .line 116
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 119
    const/4 v1, 0x0

    :goto_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p0, v1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 122
    :cond_33
    return-object p0
.end method

.method public static openAppSettings(Landroid/app/Activity;)V
    .registers 4

    .line 143
    if-nez p0, :cond_3

    .line 144
    return-void

    .line 147
    :cond_3
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
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

    .line 149
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2f

    .line 152
    goto :goto_30

    .line 151
    :catchall_2f
    move-exception p0

    .line 153
    :goto_30
    return-void
.end method

.method public static requestAtStartup(Landroid/app/Activity;)V
    .registers 2

    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->requestAtStartupImpl(Landroid/app/Activity;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 61
    goto :goto_a

    .line 59
    :catchall_4
    move-exception p0

    .line 60
    const-string v0, "WearableBlePermissions.requestAtStartup"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :goto_a
    return-void
.end method

.method private static requestAtStartupImpl(Landroid/app/Activity;)V
    .registers 3

    .line 65
    if-eqz p0, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_9

    goto :goto_15

    .line 68
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 69
    return-void

    .line 71
    :cond_10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->requestBlePermissions(Landroid/app/Activity;Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 72
    return-void

    .line 66
    :cond_15
    :goto_15
    return-void
.end method

.method private static requestBlePermissions(Landroid/app/Activity;Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V
    .registers 5

    .line 97
    if-eqz p0, :cond_1f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_9

    goto :goto_1f

    .line 100
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->missingPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    array-length v1, v0

    const/16 v2, 0x5752

    if-nez v1, :cond_1b

    .line 102
    if-eqz p1, :cond_1a

    .line 103
    const/4 p0, 0x1

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-interface {p1, v0, v2, p0}, Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;->onRequestPermission(Ljava/lang/String;IZ)V

    .line 105
    :cond_1a
    return-void

    .line 107
    :cond_1b
    invoke-static {p0, v0, v2, p1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 108
    return-void

    .line 98
    :cond_1f
    :goto_1f
    return-void
.end method
