.class Lcom/isaigu/gymapp/widget/WaveBallProgress$1;
.super Ljava/lang/Object;
.source "WaveBallProgress.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 140
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/WaveBallProgress$1;->this$0:Lcom/isaigu/gymapp/widget/WaveBallProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 152
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 148
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 156
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 143
    return-void
.end method
