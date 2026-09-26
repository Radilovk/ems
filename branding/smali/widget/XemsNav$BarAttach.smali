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

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 604
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->startTicking()V
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$500()V

    .line 605
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 609
    # invokes: Lcom/isaigu/gymapp/widget/XemsNav;->stopTicking()V
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$600()V

    .line 610
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$700()Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_1c

    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$700()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 612
    :try_start_13
    # getter for: Lcom/isaigu/gymapp/widget/XemsNav;->menu:Landroid/widget/PopupWindow;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->access$700()Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    .line 614
    goto :goto_1c

    .line 613
    :catchall_1b
    move-exception p1

    .line 616
    :cond_1c
    :goto_1c
    return-void
.end method
