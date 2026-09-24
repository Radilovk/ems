.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;
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
    name = "PanelToggleListener"
.end annotation


# instance fields
.field private final settings:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 1690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1691
    iput-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;->settings:Z

    .line 1692
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1696
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;->settings:Z

    if-eqz v2, :cond_18

    .line 1697
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$700()Z

    move-result v2

    if-nez v2, :cond_16

    :goto_c
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$702(Z)Z

    .line 1701
    :goto_f
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$900()V

    .line 1702
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1000()V

    .line 1703
    return-void

    :cond_16
    move v0, v1

    .line 1697
    goto :goto_c

    .line 1699
    :cond_18
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$800()Z

    move-result v2

    if-nez v2, :cond_22

    :goto_1e
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$802(Z)Z

    goto :goto_f

    :cond_22
    move v0, v1

    goto :goto_1e
.end method
