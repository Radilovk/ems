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
.field down:Z

.field private final item:Lcom/isaigu/gymapp/train/model/TrainItem;

.field longDone:Z

.field pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;

.field private final wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;)V
    .registers 3

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 627
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 628
    return-void
.end method

.method private cancelLong(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;

    if-eqz v0, :cond_c

    .line 680
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;

    .line 683
    :cond_c
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 633
    :try_start_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 634
    if-nez v2, :cond_38

    .line 635
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->onPhoto(Landroid/view/View;FF)Z

    move-result v1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    .line 636
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->longDone:Z

    .line 637
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->cancelLong(Landroid/view/View;)V

    .line 638
    iget-boolean v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz v1, :cond_35

    .line 639
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;-><init>(Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;Landroid/view/View;)V

    iput-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;

    .line 640
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 642
    :cond_35
    iget-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    .line 674
    :cond_37
    :goto_37
    return v0

    .line 644
    :cond_38
    iget-boolean v3, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    if-eqz v3, :cond_37

    .line 647
    const/4 v3, 0x2

    if-ne v2, v3, :cond_52

    .line 648
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->onPhoto(Landroid/view/View;FF)Z

    move-result v2

    if-nez v2, :cond_50

    .line 649
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->cancelLong(Landroid/view/View;)V

    :cond_50
    :goto_50
    move v0, v1

    .line 671
    goto :goto_37

    .line 651
    :cond_52
    if-ne v2, v1, :cond_8e

    .line 652
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    .line 653
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->cancelLong(Landroid/view/View;)V

    .line 654
    iget-boolean v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->longDone:Z

    if-nez v2, :cond_50

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->onPhoto(Landroid/view/View;FF)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 655
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-eqz v2, :cond_86

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->trainees()I

    move-result v2

    if-le v2, v1, :cond_86

    .line 657
    iget-object v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->togglePick(Lcom/isaigu/gymapp/train/model/TrainItem;)Z

    move-result v2

    .line 658
    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->showPick(Landroid/view/View;Z)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7f} :catch_8a

    .line 660
    const/4 v0, 0x1

    :try_start_80
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_50

    .line 661
    :catch_84
    move-exception v0

    goto :goto_50

    .line 664
    :cond_86
    :try_start_86
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->open(Landroid/view/View;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_50

    .line 672
    :catch_8a
    move-exception v1

    .line 673
    iput-boolean v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    goto :goto_37

    .line 667
    :cond_8e
    const/4 v3, 0x3

    if-ne v2, v3, :cond_50

    .line 668
    const/4 v2, 0x0

    :try_start_92
    iput-boolean v2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    .line 669
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->cancelLong(Landroid/view/View;)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_97} :catch_8a

    goto :goto_50
.end method

.method open(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 686
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->wrapper:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 687
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->activity(Landroid/content/Context;)Landroid/app/Activity;
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->access$100(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    .line 688
    if-eqz v0, :cond_1d

    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1d

    .line 689
    iget-object v2, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainProgram:Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar;->showCard(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 691
    :cond_1d
    return-void

    .line 686
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
