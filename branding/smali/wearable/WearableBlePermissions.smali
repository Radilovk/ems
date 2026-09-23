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


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    .line 29
    if-nez p0, :cond_3

    .line 30
    return-void

    .line 32
    :cond_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    if-eqz p1, :cond_e

    .line 34
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 36
    :cond_e
    return-void

    .line 38
    :cond_f
    const/16 v0, 0x5752

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;ILcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;)V

    .line 40
    return-void
.end method

.method public static hasConnectPermission(Landroid/content/Context;)Z
    .registers 5

    .line 18
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 19
    return v0

    .line 21
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-ge v1, v2, :cond_c

    .line 22
    return v3

    .line 24
    :cond_c
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method
