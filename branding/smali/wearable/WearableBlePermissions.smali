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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 5

    .line 36
    if-nez p0, :cond_3

    .line 37
    return-void

    .line 39
    :cond_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    if-eqz p1, :cond_e

    .line 41
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 43
    :cond_e
    return-void

    .line 45
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1b

    .line 46
    if-eqz p1, :cond_1a

    .line 47
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 49
    :cond_1a
    return-void

    .line 51
    :cond_1b
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 52
    const/16 v1, 0x5752

    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;

    invoke-direct {v2, p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 54
    return-void
.end method

.method public static hasAllBlePermissions(Landroid/content/Context;)Z
    .registers 5

    .line 21
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 22
    return v0

    .line 24
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-ge v1, v2, :cond_c

    .line 25
    return v3

    .line 27
    :cond_c
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1e

    .line 28
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 27
    :goto_1f
    return v0
.end method

.method public static hasConnectPermission(Landroid/content/Context;)Z
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
