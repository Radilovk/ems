.class public final Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;
.super Ljava/lang/Object;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CycleSpec"
.end annotation


# instance fields
.field public hz:I

.field public offS:I

.field public onS:I

.field public pauseHz:I

.field public pauseSigma:D

.field public pwUs:I

.field public sigma:D


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 132
    return-void
.end method

.method public constructor <init>(IIIID)V
    .registers 10

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 135
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    .line 136
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    .line 137
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    .line 138
    iput p4, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    .line 139
    iput-wide p5, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 140
    return-void
.end method


# virtual methods
.method public copy()Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;
    .registers 9

    .prologue
    .line 143
    new-instance v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iget v5, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    invoke-direct/range {v1 .. v7}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    .line 144
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    .line 145
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    .line 146
    return-object v1
.end method

.method public hasActivePause()Z
    .registers 5

    .prologue
    .line 150
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    if-lez v0, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_12

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isTetanic()Z
    .registers 3

    .prologue
    .line 154
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
