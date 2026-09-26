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
    .registers 3

    .line 424
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnStep;

    iput p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->val$dir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance p1, Lcom/isaigu/gymapp/widget/XemsUi$2$1;

    invoke-direct {p1, p0}, Lcom/isaigu/gymapp/widget/XemsUi$2$1;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$2;)V

    iput-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->repeat:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/widget/XemsUi$2;)I
    .registers 1

    .line 424
    iget p0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I

    return p0
.end method

.method static synthetic access$008(Lcom/isaigu/gymapp/widget/XemsUi$2;)I
    .registers 3

    .line 424
    iget v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I

    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_32

    if-eq p2, v1, :cond_e

    const/4 v2, 0x3

    if-eq p2, v2, :cond_e

    .line 453
    return v1

    .line 448
    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x78

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 450
    # getter for: Lcom/isaigu/gymapp/widget/XemsUi;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsUi;->access$100()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->repeat:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 451
    return v1

    .line 439
    :cond_32
    iput v0, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->count:I

    .line 440
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v2, 0x46

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 442
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 443
    iget-object p1, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->val$cb:Lcom/isaigu/gymapp/widget/XemsUi$OnStep;

    iget p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->val$dir:I

    invoke-interface {p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi$OnStep;->onStep(I)V

    .line 444
    # getter for: Lcom/isaigu/gymapp/widget/XemsUi;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsUi;->access$100()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/isaigu/gymapp/widget/XemsUi$2;->repeat:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1a4

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 445
    return v1
.end method
