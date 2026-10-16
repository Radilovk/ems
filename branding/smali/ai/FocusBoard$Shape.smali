.class final Lcom/isaigu/gymapp/ai/FocusBoard$Shape;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Shape"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    .prologue
    .line 980
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1200()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    sub-int v0, p4, p2

    if-lez v0, :cond_1a

    sub-int v0, p5, p3

    sub-int v1, p4, p2

    if-le v0, v1, :cond_1b

    const/4 v0, 0x1

    :goto_11
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1300()Z

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 981
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 983
    :cond_1a
    return-void

    .line 980
    :cond_1b
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public run()V
    .registers 3

    .prologue
    .line 988
    :try_start_0
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1200()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2d

    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->framePortrait()Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1400()Z

    move-result v0

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->builtPortrait:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1300()Z

    move-result v1

    if-eq v0, v1, :cond_2d

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1500()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 989
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->frame:Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1500()Landroid/widget/FrameLayout;

    move-result-object v0

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1200()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 990
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->board:Landroid/view/View;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1202(Landroid/view/View;)Landroid/view/View;

    .line 991
    const-string v0, ""

    # setter for: Lcom/isaigu/gymapp/ai/FocusBoard;->clientsKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$1602(Ljava/lang/String;)Ljava/lang/String;

    .line 992
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->tick()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 997
    :cond_2d
    :goto_2d
    return-void

    .line 994
    :catch_2e
    move-exception v0

    .line 995
    const-string v1, "FocusBoard.shape"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method
