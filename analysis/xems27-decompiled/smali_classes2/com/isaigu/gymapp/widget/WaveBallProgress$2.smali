.class Lcom/isaigu/gymapp/widget/WaveBallProgress$2;
.super Ljava/lang/Object;
.source "WaveBallProgress.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/WaveBallProgress;->startProgress(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/WaveBallProgress;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/WaveBallProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/WaveBallProgress;

    .line 158
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress$2;->this$0:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress$2;->this$0:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->access$000(Lcom/isaigu/gymapp/widget/WaveBallProgress;)I

    move-result v1

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress$2;->this$0:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->access$100(Lcom/isaigu/gymapp/widget/WaveBallProgress;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->access$002(Lcom/isaigu/gymapp/widget/WaveBallProgress;I)I

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress$2;->this$0:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/WaveBallProgress;->invalidate()V

    .line 164
    return-void
.end method
