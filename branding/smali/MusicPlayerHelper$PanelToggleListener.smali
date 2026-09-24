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
    .line 1861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1862
    iput-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;->settings:Z

    .line 1863
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1867
    iget-boolean v2, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;->settings:Z

    if-eqz v2, :cond_18

    .line 1868
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100()Z

    move-result v2

    if-nez v2, :cond_16

    :goto_c
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$102(Z)Z

    .line 1872
    :goto_f
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$300()V

    .line 1873
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400()V

    .line 1874
    return-void

    :cond_16
    move v0, v1

    .line 1868
    goto :goto_c

    .line 1870
    :cond_18
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200()Z

    move-result v2

    if-nez v2, :cond_22

    :goto_1e
    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$202(Z)Z

    goto :goto_f

    :cond_22
    move v0, v1

    goto :goto_1e
.end method
