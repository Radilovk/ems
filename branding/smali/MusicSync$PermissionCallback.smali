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

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermission(Ljava/lang/String;IZ)V
    .registers 4

    .line 634
    if-eqz p3, :cond_6

    .line 635
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    goto :goto_c

    .line 637
    :cond_6
    const p1, 0x7f0d010d

    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    .line 639
    :goto_c
    return-void
.end method
