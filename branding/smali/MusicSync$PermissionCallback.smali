.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PermissionCallback;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermission(Ljava/lang/String;IZ)V
    .registers 4

    .line 396
    if-eqz p3, :cond_d

    .line 397
    # getter for: Lcom/isaigu/gymapp/train/utils/MusicSync;->hostActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$100()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->attachManager(Landroid/app/Activity;)Z

    .line 398
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    goto :goto_13

    .line 400
    :cond_d
    const p1, 0x7f0d010d

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 402
    :goto_13
    return-void
.end method
