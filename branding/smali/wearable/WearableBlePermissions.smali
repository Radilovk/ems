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

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 75
    if-nez p0, :cond_6

    .line 76
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    .line 93
    :cond_5
    :goto_5
    return-void

    .line 79
    :cond_6
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 80
    if-eqz p1, :cond_5

    .line 81
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 85
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1e

    .line 86
    if-eqz p1, :cond_5

    .line 87
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 91
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->dismissOverlayForPermissions()V

    .line 92
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->requestBlePermissions(Landroid/app/Activity;Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    goto :goto_5
.end method

.method public static gateGattOrNotify(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 127
    if-nez p0, :cond_4

    .line 139
    :goto_3
    return v0

    .line 130
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 131
    const/4 v0, 0x1

    goto :goto_3

    .line 133
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_17

    .line 135
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 137
    :cond_17
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    goto :goto_3
.end method

.method public static hasAllBlePermissions(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_6

    move v0, v1

    .line 32
    :cond_5
    :goto_5
    return v0

    .line 29
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_5

    .line 32
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    .line 33
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    :cond_1c
    move v0, v1

    goto :goto_5
.end method

.method public static hasConnectPermission(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static logPermissionState(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    if-nez p0, :cond_5

    .line 49
    :goto_4
    return-void

    .line 41
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-ge v0, v3, :cond_13

    .line 42
    const-string v0, "perm"

    const-string v1, "API<31 legacy BT"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 45
    :cond_13
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_47

    move v0, v1

    .line 46
    :goto_1c
    const-string v3, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_49

    .line 47
    :goto_24
    const-string v2, "perm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CONNECT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " SCAN="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_47
    move v0, v2

    .line 45
    goto :goto_1c

    :cond_49
    move v1, v2

    .line 46
    goto :goto_24
.end method

.method private static missingPermissions(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 113
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_12
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    .line 116
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    move v1, v0

    :goto_27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 120
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 119
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    .line 122
    :cond_39
    return-object v3
.end method

.method public static openAppSettings(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 143
    if-nez p0, :cond_3

    .line 153
    :goto_2
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

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_30} :catch_31

    goto :goto_2

    .line 151
    :catch_31
    move-exception v0

    goto :goto_2
.end method

.method public static requestAtStartup(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->requestAtStartupImpl(Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 62
    :goto_3
    return-void

    .line 59
    :catch_4
    move-exception v0

    .line 60
    const-string v1, "WearableBlePermissions.requestAtStartup"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static requestAtStartupImpl(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 65
    if-eqz p0, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_9

    .line 72
    :cond_8
    :goto_8
    return-void

    .line 68
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 71
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->requestBlePermissions(Landroid/app/Activity;Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    goto :goto_8
.end method

.method private static requestBlePermissions(Landroid/app/Activity;Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V
    .registers 5

    .prologue
    const/16 v2, 0x5752

    .line 97
    if-eqz p0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_b

    .line 108
    :cond_a
    :goto_a
    return-void

    .line 100
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->missingPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    array-length v1, v0

    if-nez v1, :cond_1b

    .line 102
    if-eqz p1, :cond_a

    .line 103
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v2, v1}, Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;->onRequestPermission(Ljava/lang/String;IZ)V

    goto :goto_a

    .line 107
    :cond_1b
    invoke-static {p0, v0, v2, p1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    goto :goto_a
.end method
