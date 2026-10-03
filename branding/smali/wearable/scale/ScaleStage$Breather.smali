.class final Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breather;
.super Ljava/lang/Object;
.source "ScaleStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Breather"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleStage;)V
    .registers 2

    .prologue
    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 742
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breather;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    .line 743
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 747
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3c449ba6    # 0.012f

    invoke-static {}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->now()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x3ff6666666666666L    # 1.4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 748
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breather;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 749
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breather;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->hero:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 750
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage$Breather;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->main:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 751
    return-void
.end method
