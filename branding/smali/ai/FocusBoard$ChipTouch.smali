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
    .line 1600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1601
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    .line 1602
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

    .line 1606
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 1607
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_18a

    .line 1672
    :cond_1a
    :goto_1a
    return v5

    .line 1609
    :pswitch_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    .line 1610
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->y0:F

    .line 1611
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->level:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    .line 1612
    iput-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 1613
    iput-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->refused:Z

    .line 1614
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

    .line 1617
    :pswitch_47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    sub-float/2addr v1, v2

    .line 1618
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->y0:F

    sub-float/2addr v2, v3

    .line 1619
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

    .line 1620
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-nez v0, :cond_7d

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->shouldBlockManualControls()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 1621
    :cond_7d
    iput-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->refused:Z

    .line 1622
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v0, :cond_e5

    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d."

    const-string v1, "The muscle is off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8d
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$400(Ljava/lang/String;)V

    .line 1633
    :cond_90
    :goto_90
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    if-eqz v0, :cond_1a

    .line 1634
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1635
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->cap:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    sub-float/2addr v3, v4

    div-float v0, v3, v0

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1636
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    if-eq v0, v1, :cond_1a

    .line 1637
    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_cd

    .line 1638
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1640
    :cond_cd
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iput v0, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1641
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->repaint()V

    .line 1642
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2300()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1643
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$2300()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->invalidate()V

    goto/16 :goto_1a

    .line 1623
    :cond_e5
    const-string v0, "\u041c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0434\u044a\u0440\u0436\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435\u0433\u0430."

    const-string v1, "Music holds the strength now."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8d

    .line 1625
    :cond_ee
    iput-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 1626
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    .line 1627
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_103

    .line 1628
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1630
    :cond_103
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    goto :goto_90

    .line 1650
    :pswitch_107
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

    .line 1651
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    if-eqz v1, :cond_13c

    .line 1652
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1653
    iput-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 1654
    if-ltz v0, :cond_133

    iget v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    if-eq v0, v1, :cond_133

    .line 1655
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->channel(II)V

    .line 1657
    :cond_133
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iput v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1658
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto/16 :goto_1a

    .line 1659
    :cond_13c
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

    .line 1660
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 1661
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipClick(I)V

    goto/16 :goto_1a

    .line 1666
    :pswitch_16a
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

    .line 1667
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iput v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 1668
    iput-boolean v6, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 1669
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto/16 :goto_1a

    .line 1607
    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_107
        :pswitch_47
        :pswitch_16a
    .end packed-switch
.end method
