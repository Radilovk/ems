.class final Lcom/isaigu/gymapp/ai/FocusBoard$ModeMenuClick;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ModeMenuClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 791
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 792
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_17

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->modePop:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 793
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->closeModeMenu()V

    .line 797
    :goto_16
    return-void

    .line 796
    :cond_17
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->openModeMenu(Landroid/view/View;)V
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1000(Landroid/view/View;)V

    goto :goto_16
.end method
