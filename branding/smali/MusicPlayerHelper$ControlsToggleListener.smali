.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$ControlsToggleListener;
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
    name = "ControlsToggleListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1060
    # getter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    # setter for: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->controlsExpanded:Z
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$502(Z)Z

    .line 1061
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->applyExpandedState()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600()V

    .line 1062
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->resizeOverlayWindow()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$700()V

    .line 1063
    return-void
.end method
