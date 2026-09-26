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

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 127
    return-void
.end method

.method public constructor <init>(IIIID)V
    .registers 9

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 130
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    .line 131
    iput p2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    .line 132
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    .line 133
    iput p4, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    .line 134
    iput-wide p5, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    .line 135
    return-void
.end method


# virtual methods
.method public copy()Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;
    .registers 9

    .line 138
    new-instance v7, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pwUs:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    iget v4, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    iget-wide v5, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->sigma:D

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;-><init>(IIIID)V

    .line 139
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    iput v0, v7, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    .line 140
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    iput-wide v0, v7, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    .line 141
    return-object v7
.end method

.method public hasActivePause()Z
    .registers 6

    .line 145
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseHz:I

    if-lez v0, :cond_12

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->pauseSigma:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_12

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    if-lez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isTetanic()Z
    .registers 3

    .line 149
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
