.class final Lcom/isaigu/gymapp/ai/AiTrain$Step;
.super Ljava/lang/Object;
.source "AiTrain.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiTrain;
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
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Step;->which:I

    .line 1076
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 12

    .prologue
    .line 1080
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 1081
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Step;->which:I

    if-nez v1, :cond_1d

    .line 1082
    const/16 v1, 0xe

    const/16 v2, 0x5a

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 1088
    :goto_19
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiTrain;->changed()V

    .line 1089
    return-void

    .line 1083
    :cond_1d
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiTrain$Step;->which:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    .line 1084
    const/16 v1, 0x82

    const/16 v2, 0xdc

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    goto :goto_19

    .line 1086
    :cond_34
    const-wide/16 v2, 0x23

    const-wide/16 v4, 0xc8

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    goto :goto_19
.end method
