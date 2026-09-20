.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$MinimizeListener;
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
    name = "MinimizeListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 763
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$402(Z)Z

    .line 764
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 765
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistVisible:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$602(Z)Z

    .line 767
    :cond_13
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyMinimizedState()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500()V

    .line 768
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyPlaylistVisibility()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$700()V

    .line 769
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$800()V

    .line 770
    return-void
.end method
