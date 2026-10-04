.class public final Lcom/isaigu/gymapp/ai/ParamFormula$In;
.super Ljava/lang/Object;
.source "ParamFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ParamFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "In"
.end annotation


# instance fields
.field public age:Ljava/lang/Integer;

.field public fatPct:Ljava/lang/Double;

.field public fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

.field public goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

.field public heightCm:I

.field public muscleLow:Z

.field public offS:I

.field public sensitive:Z

.field public sessions:I

.field public sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

.field public weightKg:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
