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

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;->onGranted:Ljava/lang/Runnable;

    .line 91
    return-void
.end method


# virtual methods
.method public onRequestPermission(Ljava/lang/String;IZ)V
    .registers 4

    .line 95
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object p1

    .line 96
    if-eqz p1, :cond_14

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 97
    iget-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableBlePermissions$PermissionCallback;->onGranted:Ljava/lang/Runnable;

    if-eqz p1, :cond_13

    .line 98
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 100
    :cond_13
    return-void

    .line 102
    :cond_14
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showBluetoothPermissionDenied()V

    .line 103
    return-void
.end method
