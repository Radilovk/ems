.class final Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;
.super Ljava/lang/Object;
.source "XemsLocalAvatar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/widget/XemsLocalAvatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongCard"
.end annotation


# instance fields
.field final touch:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;

.field final v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;->touch:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;

    .line 583
    iput-object p2, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;->v:Landroid/view/View;

    .line 584
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;->touch:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->down:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;->touch:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->pending:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;

    if-ne v0, p0, :cond_1e

    .line 589
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;->touch:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->longDone:Z

    .line 591
    :try_start_11
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;->v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_17} :catch_1f

    .line 594
    :goto_17
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;->touch:Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$LongCard;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalAvatar$CardTouch;->open(Landroid/view/View;)V

    .line 596
    :cond_1e
    return-void

    .line 592
    :catch_1f
    move-exception v0

    goto :goto_17
.end method
