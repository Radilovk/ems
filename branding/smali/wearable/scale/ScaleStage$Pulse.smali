.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Pulse;
.super Ljava/lang/Object;
.source "ScaleStage.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pulse"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;)V
    .registers 2

    .prologue
    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Pulse;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    .line 820
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 824
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Pulse;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->pulse:F

    .line 825
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Pulse;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$StepsBar;->invalidate()V

    .line 826
    return-void
.end method
