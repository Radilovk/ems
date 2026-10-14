.class final Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;
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
    name = "ChipTouch"
.end annotation


# instance fields
.field private final chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

.field private refused:Z

.field private sliding:Z

.field private start:I

.field private x0:F

.field private y0:F


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/ai/FocusBoard$Chip;)V
    .registers 2

    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1732
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    .line 1733
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/4 v7, -0x1

    const v2, 0x3f7851ec    # 0.97f

    const/4 v6, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 1737
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 1738
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_18e

    .line 1805
    :cond_1a
    :goto_1a
    return v5

    .line 1740
    :pswitch_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    .line 1741
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->y0:F

    .line 1742
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->level:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    .line 1743
    iput-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 1744
    iput-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->refused:Z

    .line 1745
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1a

    .line 1748
    :pswitch_47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    sub-float/2addr v1, v2

    .line 1749
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->y0:F

    sub-float/2addr v2, v3

    .line 1750
    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    if-nez v3, :cond_90

    iget-boolean v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->refused:Z

    if-nez v3, :cond_90

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v0, v3, v0

    if-lez v0, :cond_90

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_90

    .line 1751
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-nez v0, :cond_7d

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->shouldBlockManualControls()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 1752
    :cond_7d
    iput-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->refused:Z

    .line 1753
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v0, :cond_e9

    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d."

    const-string v1, "The muscle is off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8d
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V

    .line 1764
    :cond_90
    :goto_90
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    if-eqz v0, :cond_1a

    .line 1766
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1767
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->cap:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    add-int/lit8 v2, v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1768
    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    sub-float/2addr v3, v4

    div-float v0, v3, v0

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1769
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    if-eq v0, v1, :cond_1a

    .line 1770
    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_d1

    .line 1771
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1773
    :cond_d1
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iput v0, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1774
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->repaint()V

    .line 1775
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2600()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1776
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2600()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->invalidate()V

    goto/16 :goto_1a

    .line 1754
    :cond_e9
    const-string v0, "\u041c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0434\u044a\u0440\u0436\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435\u0433\u0430."

    const-string v1, "Music holds the strength now."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8d

    .line 1756
    :cond_f2
    iput-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 1757
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    .line 1758
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_107

    .line 1759
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1761
    :cond_107
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    goto :goto_90

    .line 1783
    :pswitch_10b
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1784
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    if-eqz v1, :cond_140

    .line 1785
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1786
    iput-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 1787
    if-ltz v0, :cond_137

    iget v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    if-eq v0, v1, :cond_137

    .line 1788
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->channel(II)V

    .line 1790
    :cond_137
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iput v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1791
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto/16 :goto_1a

    .line 1792
    :cond_140
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->refused:Z

    if-nez v1, :cond_1a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->y0:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1a

    .line 1793
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1794
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipClick(I)V

    goto/16 :goto_1a

    .line 1799
    :pswitch_16e
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1800
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iput v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1801
    iput-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 1802
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto/16 :goto_1a

    .line 1738
    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_10b
        :pswitch_47
        :pswitch_16e
    .end packed-switch
.end method
