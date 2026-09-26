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

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handle(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v1, v0

    .line 269
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v3, v2

    .line 270
    mul-float v2, v1, v1

    mul-float v4, v3, v3

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 271
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_ba

    if-eq v4, v6, :cond_a9

    const/4 v0, 0x2

    if-eq v4, v0, :cond_33

    .line 311
    iput-boolean v5, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    .line 312
    return v6

    .line 287
    :cond_33
    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    if-eqz v0, :cond_3b

    .line 288
    invoke-direct {p0, v1, v3}, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seekTo(FF)V

    .line 289
    return v6

    .line 291
    :cond_3b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->downRawX:F

    sub-float/2addr v0, v1

    .line 292
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->downRawY:F

    sub-float/2addr v1, v2

    .line 293
    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result p1

    mul-int v1, v1, p1

    int-to-float p1, v1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_69

    .line 294
    iput-boolean v6, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->moved:Z

    .line 296
    :cond_69
    iget-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->moved:Z

    if-eqz p1, :cond_a8

    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_a8

    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_a8

    .line 297
    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 298
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->dx:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->dy:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 300
    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 302
    :cond_a8
    return v6

    .line 304
    :cond_a9
    iget-boolean p2, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    if-nez p2, :cond_b7

    iget-boolean p2, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->moved:Z

    if-nez p2, :cond_b7

    .line 305
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 306
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->togglePlayPause()V

    .line 308
    :cond_b7
    iput-boolean v5, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    .line 309
    return v6

    .line 273
    :cond_ba
    const p1, 0x3f333333    # 0.7f

    mul-float v0, v0, p1

    cmpl-float p1, v2, v0

    if-lez p1, :cond_cb

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result p1

    if-lez p1, :cond_cb

    const/4 p1, 0x1

    goto :goto_cc

    :cond_cb
    const/4 p1, 0x0

    :goto_cc
    iput-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    .line 274
    iput-boolean v5, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->moved:Z

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->downRawX:F

    .line 276
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->downRawY:F

    .line 277
    iget-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    if-nez p1, :cond_110

    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_110

    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_110

    .line 278
    # getter for: Lcom/isaigu/gymapp/dialog/MusicDial;->dialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->access$000()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 279
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->dx:F

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->dy:F

    .line 282
    :cond_110
    iget-boolean p1, p0, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seeking:Z

    if-eqz p1, :cond_117

    .line 283
    invoke-direct {p0, v1, v3}, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->seekTo(FF)V

    .line 285
    :cond_117
    return v6
.end method

.method private seekTo(FF)V
    .registers 9

    .line 317
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->getPlaybackDurationMs()I

    move-result v0

    .line 318
    if-gtz v0, :cond_7

    .line 319
    return-void

    .line 321
    :cond_7
    float-to-double v1, p1

    neg-float p1, p2

    float-to-double p1, p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    .line 322
    const-wide/16 v1, 0x0

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-double v5, p1, v1

    if-gez v5, :cond_1a

    .line 323
    add-double/2addr p1, v3

    .line 325
    :cond_1a
    div-double/2addr p1, v3

    int-to-double v0, v0

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 326
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->seekPlaybackTo(I)V

    .line 327
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicDial;->refresh()V

    .line 328
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 258
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/dialog/MusicDial$DialTouch;->handle(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p1

    .line 259
    :catchall_5
    move-exception p1

    .line 260
    const-string p2, "MusicDial.touch"

    invoke-static {p2, p1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    const/4 p1, 0x0

    return p1
.end method
