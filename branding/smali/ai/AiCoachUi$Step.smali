.class final Lcom/isaigu/gymapp/ai/AiCoachUi$Step;
.super Ljava/lang/Object;
.source "AiCoachUi.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiCoachUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Step"
.end annotation


# instance fields
.field final which:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Step;->which:I

    .line 462
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 12

    .prologue
    .line 466
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v1

    .line 467
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Step;->which:I

    if-nez v0, :cond_1d

    .line 468
    const/16 v0, 0xe

    const/16 v2, 0x5a

    iget v3, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    .line 474
    :goto_19
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->rerender()V

    .line 475
    return-void

    .line 469
    :cond_1d
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiCoachUi$Step;->which:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3b

    .line 470
    const/16 v2, 0x82

    const/16 v3, 0xdc

    iget v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    if-lez v0, :cond_38

    iget v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    :goto_2c
    add-int/2addr v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    goto :goto_19

    :cond_38
    const/16 v0, 0xaa

    goto :goto_2c

    .line 472
    :cond_3b
    const-wide/16 v2, 0x23

    const-wide/16 v4, 0xc8

    iget-wide v6, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    goto :goto_19
.end method
