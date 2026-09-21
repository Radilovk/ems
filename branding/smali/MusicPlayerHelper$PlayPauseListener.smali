.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlayPauseListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlayPauseListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1042
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerPreparing()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1043
    return-void

    .line 1045
    :cond_7
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1046
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 1047
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->updatePlayPauseLabel()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100()V

    .line 1048
    return-void

    .line 1050
    :cond_1a
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200()I

    move-result p1

    if-gez p1, :cond_2e

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$300()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 1051
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$202(I)I

    .line 1053
    :cond_2e
    const/4 p1, 0x1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400(Z)Z

    .line 1054
    return-void
.end method
