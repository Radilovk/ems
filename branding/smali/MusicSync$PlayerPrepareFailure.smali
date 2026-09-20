.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PlayerPrepareFailure;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayerPrepareFailure"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 551
    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->stopCaptureOnly()V
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$1000()V

    .line 552
    const v0, 0x7f0d0113

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->showError(I)V

    .line 553
    return-void
.end method
