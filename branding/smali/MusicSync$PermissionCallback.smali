.class Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermission(Ljava/lang/String;IZ)V
    .locals 1

    if-eqz p3, :cond_denied

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$400()V

    return-void

    :cond_denied
    const v0, 0x7f0d010d

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    return-void
.end method
