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

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;->onGranted:Ljava/lang/Runnable;

    .line 160
    return-void
.end method


# virtual methods
.method public onRequestPermission(Ljava/lang/String;IZ)V
    .registers 5

    .prologue
    .line 164
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_9

    .line 166
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->logPermissionState(Landroid/content/Context;)V

    .line 168
    :cond_9
    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 169
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;->onGranted:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;->onGranted:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 177
    :cond_1a
    :goto_1a
    return-void

    .line 174
    :cond_1b
    if-nez p3, :cond_1a

    .line 175
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    goto :goto_1a
.end method
