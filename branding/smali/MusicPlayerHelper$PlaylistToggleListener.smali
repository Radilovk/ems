.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PlaylistToggleListener;
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
    name = "PlaylistToggleListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 725
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 726
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->minimized:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$402(Z)Z

    .line 727
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyMinimizedState()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500()V

    .line 729
    :cond_d
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistVisible:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistVisible:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$602(Z)Z

    .line 730
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyPlaylistVisibility()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$700()V

    .line 731
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$800()V

    .line 732
    return-void
.end method
