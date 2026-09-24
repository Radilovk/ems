.class final Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;
.super Ljava/lang/Object;
.source "MusicDial.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicDial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DialTouch"
.end annotation


# instance fields
.field private downRawX:F

.field private downRawY:F

.field private dx:F

.field private dy:F

.field private moved:Z

.field private seeking:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handle(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 256
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v4, v0

    .line 257
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float v3, v5, v3

    .line 258
    mul-float v5, v4, v4

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    .line 259
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_114

    .line 299
    iput-boolean v2, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    .line 300
    :cond_31
    :goto_31
    return v1

    .line 261
    :pswitch_32
    const v6, 0x3f333333    # 0.7f

    mul-float/2addr v0, v6

    cmpl-float v0, v5, v0

    if-lez v0, :cond_8e

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    if-lez v0, :cond_8e

    move v0, v1

    :goto_41
    iput-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    .line 262
    iput-boolean v2, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->moved:Z

    .line 263
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->downRawX:F

    .line 264
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->downRawY:F

    .line 265
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    if-nez v0, :cond_86

    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_86

    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 266
    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 267
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iput v2, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->dx:F

    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    iput v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->dy:F

    .line 270
    :cond_86
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    if-eqz v0, :cond_31

    .line 271
    invoke-direct {p0, v4, v3}, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seekTo(FF)V

    goto :goto_31

    :cond_8e
    move v0, v2

    .line 261
    goto :goto_41

    .line 275
    :pswitch_90
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    if-eqz v0, :cond_98

    .line 276
    invoke-direct {p0, v4, v3}, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seekTo(FF)V

    goto :goto_31

    .line 279
    :cond_98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->downRawX:F

    sub-float/2addr v0, v2

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->downRawY:F

    sub-float/2addr v2, v3

    .line 281
    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_c1

    .line 282
    iput-boolean v1, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->moved:Z

    .line 284
    :cond_c1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->moved:Z

    if-eqz v0, :cond_31

    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_31

    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 285
    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 286
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->dx:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 287
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->dy:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 288
    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_31

    .line 292
    :pswitch_102
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    if-nez v0, :cond_110

    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->moved:Z

    if-nez v0, :cond_110

    .line 293
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 294
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    .line 296
    :cond_110
    iput-boolean v2, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    goto/16 :goto_31

    .line 259
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_32
        :pswitch_102
        :pswitch_90
    .end packed-switch
.end method

.method private seekTo(FF)V
    .registers 11

    .prologue
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    .line 305
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v2

    .line 306
    if-gtz v2, :cond_c

    .line 316
    :goto_b
    return-void

    .line 309
    :cond_c
    float-to-double v0, p1

    neg-float v3, p2

    float-to-double v4, v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 310
    const-wide/16 v4, 0x0

    cmpg-double v3, v0, v4

    if-gez v3, :cond_1a

    .line 311
    add-double/2addr v0, v6

    .line 313
    :cond_1a
    div-double/2addr v0, v6

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 314
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekPlaybackTo(I)V

    .line 315
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V

    goto :goto_b
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 246
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->handle(Landroid/view/View;Landroid/view/MotionEvent;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 249
    :goto_4
    return v0

    .line 247
    :catch_5
    move-exception v0

    .line 248
    const-string v1, "MusicDial.touch"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    const/4 v0, 0x0

    goto :goto_4
.end method
