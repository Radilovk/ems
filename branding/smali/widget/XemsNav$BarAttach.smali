.class final Lcom/isaigu/gymapp/widget/XemsNav$BarAttach;
.super Ljava/lang/Object;
.source "XemsNav.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BarAttach"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 551
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->startTicking()V
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$500()V

    .line 552
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 556
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->stopTicking()V
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$600()V

    .line 557
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$700()Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1a

    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$700()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 559
    :try_start_13
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$700()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 563
    :cond_1a
    :goto_1a
    return-void

    .line 560
    :catch_1b
    move-exception v0

    goto :goto_1a
.end method
