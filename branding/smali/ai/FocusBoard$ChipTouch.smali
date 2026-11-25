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
    .line 2300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2301
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    .line 2302
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/4 v7, -0x1

    const v2, 0x3f7851ec    # 0.97f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2306
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    .line 2307
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_1c8

    .line 2384
    :cond_1a
    :goto_1a
    return v4

    .line 2309
    :pswitch_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    .line 2310
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->y0:F

    .line 2311
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->level:I

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    .line 2312
    iput-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 2313
    iput-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->refused:Z

    .line 2314
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

    .line 2317
    :pswitch_47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    sub-float/2addr v1, v2

    .line 2318
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->y0:F

    sub-float/2addr v2, v3

    .line 2319
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

    .line 2320
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-nez v0, :cond_7d

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSyncBridge;->shouldBlockManualControls()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 2321
    :cond_7d
    iput-boolean v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->refused:Z

    .line 2322
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->off:Z

    if-eqz v0, :cond_e7

    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u044a\u0442 \u0435 \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d."

    const-string v1, "The muscle is off."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8d
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->hint(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$600(Ljava/lang/String;)V

    .line 2343
    :cond_90
    :goto_90
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    if-eqz v0, :cond_1a

    .line 2345
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2346
    const/16 v1, 0x14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    sub-float/2addr v2, v3

    div-float v0, v2, v0

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2347
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->cap:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2348
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    if-eq v0, v1, :cond_1a

    .line 2349
    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_cf

    .line 2350
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2352
    :cond_cf
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iput v0, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 2353
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->repaint()V

    .line 2354
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$3300()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2355
    # getter for: Lcom/isaigu/gymapp/ai/FocusBoard;->leaders:Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$3300()Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/FocusBoard$Leaders;->invalidate()V

    goto/16 :goto_1a

    .line 2323
    :cond_e7
    const-string v0, "\u041c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0434\u044a\u0440\u0436\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435\u0433\u0430."

    const-string v1, "Music holds the strength now."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8d

    .line 2325
    :cond_f0
    iput-boolean v4, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 2326
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->x0:F

    .line 2327
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    if-nez v0, :cond_12c

    .line 2330
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipClick(I)V

    .line 2331
    # invokes: Lcom/isaigu/gymapp/ai/FocusBoard;->current()Lcom/isaigu/gymapp/train/model/TrainItem;
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->access$900()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 2332
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->levels(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v0

    .line 2333
    if-eqz v0, :cond_13e

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    array-length v2, v0

    if-ge v1, v2, :cond_13e

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    aget v0, v0, v1

    :goto_120
    iput v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    .line 2334
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iput-boolean v4, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->sel:Z

    .line 2335
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    iput v1, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->tint:I

    .line 2337
    :cond_12c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_139

    .line 2338
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2340
    :cond_139
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    goto/16 :goto_90

    .line 2333
    :cond_13e
    iget v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    goto :goto_120

    .line 2362
    :pswitch_141
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2363
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    if-eqz v1, :cond_179

    .line 2364
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 2365
    iput-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 2366
    if-ltz v0, :cond_170

    iget v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    if-eq v0, v1, :cond_170

    .line 2367
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v1, v1, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->start:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->channel(II)V

    .line 2369
    :cond_170
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iput v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 2370
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto/16 :goto_1a

    .line 2371
    :cond_179
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

    .line 2372
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 2373
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iget v0, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->k:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/FocusBoard;->chipClick(I)V

    goto/16 :goto_1a

    .line 2378
    :pswitch_1a7
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2379
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->chip:Lcom/isaigu/gymapp/ai/FocusBoard$Chip;

    iput v7, v0, Lcom/isaigu/gymapp/ai/FocusBoard$Chip;->dragValue:I

    .line 2380
    iput-boolean v5, p0, Lcom/isaigu/gymapp/ai/FocusBoard$ChipTouch;->sliding:Z

    .line 2381
    invoke-static {}, Lcom/isaigu/gymapp/ai/FocusBoard;->refresh()V

    goto/16 :goto_1a

    .line 2307
    nop

    :pswitch_data_1c8
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_141
        :pswitch_47
        :pswitch_1a7
    .end packed-switch
.end method
