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

    .line 1907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1908
    iput-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;->settings:Z

    .line 1909
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1913
    iget-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$PanelToggleListener;->settings:Z

    if-eqz p1, :cond_e

    .line 1914
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$100()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->settingsExpanded:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$102(Z)Z

    goto :goto_17

    .line 1916
    :cond_e
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$200()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->playlistExpanded:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$202(Z)Z

    .line 1918
    :goto_17
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$300()V

    .line 1919
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$400()V

    .line 1920
    return-void
.end method
