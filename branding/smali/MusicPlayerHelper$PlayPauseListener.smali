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

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 784
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isPlayerMode()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 785
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->togglePlaybackPause()V

    .line 786
    return-void

    .line 788
    :cond_10
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100()I

    move-result p1

    if-gez p1, :cond_24

    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlist:Ljava/util/ArrayList;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_24

    .line 789
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->currentIndex:I
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$102(I)I

    .line 791
    :cond_24
    const/4 p1, 0x1

    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->startCurrentTrack(Z)Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$300(Z)Z

    .line 792
    return-void
.end method
