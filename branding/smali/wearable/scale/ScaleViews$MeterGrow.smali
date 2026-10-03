.class final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MeterGrow;
.super Ljava/lang/Object;
.source "ScaleViews.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MeterGrow"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;)V
    .registers 2

    .prologue
    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MeterGrow;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    .line 1049
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 1053
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MeterGrow;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->grow:F

    .line 1054
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$MeterGrow;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$BandMeter;->invalidate()V

    .line 1055
    return-void
.end method
