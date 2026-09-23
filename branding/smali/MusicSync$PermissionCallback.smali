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

    .prologue
    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermission(Ljava/lang/String;IZ)V
    .registers 5

    .prologue
    .line 817
    if-eqz p3, :cond_6

    .line 818
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->startCapture()V

    .line 822
    :goto_5
    return-void

    .line 820
    :cond_6
    const v0, 0x7f0d010d

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicSyncHelper;->showError(I)V

    goto :goto_5
.end method
