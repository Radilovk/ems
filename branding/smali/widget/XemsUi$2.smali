.class Lcom/isaigu/gymapp/widget/XemsUi$2;
.super Ljava/lang/Object;
.source "XemsUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/XemsUi;->repeatOnHold(Landroid/view/View;Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field private final repeat:Ljava/lang/Runnable;

.field final synthetic val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnStep;

.field final synthetic val$dir:I


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$OnStep;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 384
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnStep;

    iput p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->val$dir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsUi$2$1;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/widget/XemsUi$2$1;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$2;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->repeat:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/widget/XemsUi$2;)I
    .registers 2

    .prologue
    .line 384
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I

    return v0
.end method

.method static synthetic access$008(Lcom/isaigu/gymapp/widget/XemsUi$2;)I
    .registers 3

    .prologue
    .line 384
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I

    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    const/4 v4, 0x1

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_62

    .line 413
    :goto_e
    :pswitch_e
    return v4

    .line 399
    :pswitch_f
    iput v3, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I

    .line 400
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x46

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 402
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnStep;

    iget v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->val$dir:I

    invoke-interface {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi$OnStep;->onStep(I)V

    .line 404
    # getter for: Lcom/isaigu/gymapp/widget/XemsUi;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsUi;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->repeat:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e

    .line 408
    :pswitch_3f
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 410
    # getter for: Lcom/isaigu/gymapp/widget/XemsUi;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsUi;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->repeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_e

    .line 397
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_f
        :pswitch_3f
        :pswitch_e
        :pswitch_3f
    .end packed-switch
.end method
