.class final Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;
.super Ljava/lang/Object;
.source "XemsLocalAvatar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalAvatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CardTouch"
.end annotation


# instance fields
.field private down:Z

.field private final item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field private final wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 3

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 391
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 392
    return-void
.end method

.method private open(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 421
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 422
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->activity(Landroid/content/Context;)Landroid/app/Activity;
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->access$100(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 423
    if-eqz v0, :cond_1d

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1d

    .line 424
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->showCard(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 426
    :cond_1d
    return-void

    .line 421
    :cond_1e
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    goto :goto_6

    :cond_27
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 397
    :try_start_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 398
    if-nez v2, :cond_19

    .line 399
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->onPhoto(Landroid/view/View;FF)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    .line 400
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    .line 416
    :cond_18
    :goto_18
    return v0

    .line 402
    :cond_19
    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    if-eqz v3, :cond_18

    .line 405
    if-ne v2, v1, :cond_35

    .line 406
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    .line 407
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->onPhoto(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 408
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->open(Landroid/view/View;)V

    :cond_33
    :goto_33
    move v0, v1

    .line 413
    goto :goto_18

    .line 410
    :cond_35
    const/4 v3, 0x3

    if-ne v2, v3, :cond_33

    .line 411
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3b} :catch_3c

    goto :goto_33

    .line 414
    :catch_3c
    move-exception v1

    .line 415
    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    goto :goto_18
.end method
