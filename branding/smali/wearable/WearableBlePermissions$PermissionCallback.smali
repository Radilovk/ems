.class final Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;
.super Ljava/lang/Object;
.source "WearableBlePermissions.java"

# interfaces
.implements Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableBlePermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionCallback"
.end annotation


# instance fields
.field private final onGranted:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;->onGranted:Ljava/lang/Runnable;

    .line 160
    return-void
.end method


# virtual methods
.method public onRequestPermission(Ljava/lang/String;IZ)V
    .registers 4

    .line 164
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object p1

    .line 165
    if-eqz p1, :cond_9

    .line 166
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->logPermissionState(Landroid/content/Context;)V

    .line 168
    :cond_9
    if-eqz p1, :cond_19

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 169
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;->onGranted:Ljava/lang/Runnable;

    if-eqz p1, :cond_18

    .line 170
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 172
    :cond_18
    return-void

    .line 174
    :cond_19
    if-nez p3, :cond_1e

    .line 175
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    .line 177
    :cond_1e
    return-void
.end method
