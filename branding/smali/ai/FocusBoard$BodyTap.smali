.class final Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;
.super Ljava/lang/Object;
.source "FocusBoard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BodyTap"
.end annotation


# instance fields
.field private x0:F

.field private y0:F


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    .prologue
    const v5, 0x3f87ae14    # 1.06f

    const/4 v6, 0x1

    .line 1855
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1856
    if-nez v0, :cond_17

    .line 1857
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;->x0:F

    .line 1858
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;->y0:F

    .line 1878
    :cond_16
    :goto_16
    return v6

    .line 1861
    :cond_17
    if-ne v0, v6, :cond_16

    .line 1862
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 1863
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;->x0:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_16

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$BodyTap;->y0:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_16

    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2700()Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1866
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->body:Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2700()Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;->zoneAt(FFF)I

    move-result v0

    .line 1867
    if-ltz v0, :cond_16

    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    .line 1868
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1869
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->chips:[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2800()[Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    move-result-object v1

    aget-object v1, v1, v0

    .line 1870
    if-eqz v1, :cond_96

    .line 1871
    iget-object v2, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x5a

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/ai/FocusBoard$Unpop;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->view:Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/ai/FocusBoard$Unpop;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1872
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1874
    :cond_96
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipClick(I)V

    goto/16 :goto_16
.end method
