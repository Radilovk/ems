.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;
.super Ljava/lang/Object;
.source "BluetensMini.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Drag"
.end annotation


# instance fields
.field downX:F

.field downY:F

.field dragging:Z

.field final m:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

.field startX:I

.field startY:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;)V
    .registers 2

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->m:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    .line 219
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 224
    :try_start_2
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->m:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->m:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->d:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 225
    :goto_10
    if-nez v2, :cond_15

    .line 264
    :goto_12
    return v0

    .line 224
    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    .line 228
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_ea

    goto :goto_12

    .line 230
    :pswitch_1d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->downX:F

    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->downY:F

    .line 232
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->startX:I

    .line 233
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->startY:I

    .line 234
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->dragging:Z

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v3, 0x3f7851ec    # 0.97f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v3, 0x3f7851ec    # 0.97f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x50

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    move v0, v1

    .line 236
    goto :goto_12

    .line 238
    :pswitch_59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->downX:F

    sub-float/2addr v2, v3

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->downY:F

    sub-float/2addr v3, v4

    .line 240
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->dragging:Z

    if-nez v4, :cond_85

    float-to-double v4, v2

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_85

    .line 241
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->dragging:Z

    .line 243
    :cond_85
    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->dragging:Z

    if-eqz v4, :cond_96

    .line 244
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->m:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    iget v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->startX:I

    float-to-int v2, v2

    add-int/2addr v2, v5

    iget v5, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->startY:I

    float-to-int v3, v3

    add-int/2addr v3, v5

    invoke-virtual {v4, v2, v3}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->moved(II)V

    :cond_96
    move v0, v1

    .line 246
    goto/16 :goto_12

    .line 249
    :pswitch_99
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x78

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 250
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->dragging:Z

    if-eqz v2, :cond_be

    .line 251
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->m:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->dropped()V

    :goto_bb
    move v0, v1

    .line 255
    goto/16 :goto_12

    .line 253
    :cond_be
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini$Drag;->m:Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensMini;->page:Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensScreen$Page;->restore()V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c5} :catch_c6

    goto :goto_bb

    .line 262
    :catch_c6
    move-exception v1

    .line 263
    const-string v2, "BluetensMini.drag"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 257
    :pswitch_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x78

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_ce .. :try_end_e7} :catch_c6

    move v0, v1

    .line 258
    goto/16 :goto_12

    .line 228
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_99
        :pswitch_59
        :pswitch_ce
    .end packed-switch
.end method
