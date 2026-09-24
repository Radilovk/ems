.class public final Lcom/isaigu/gymapp/ai/AiModel;
.super Ljava/lang/Object;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiModel$Goal;,
        Lcom/isaigu/gymapp/ai/AiModel$Mode;,
        Lcom/isaigu/gymapp/ai/AiModel$Plan;,
        Lcom/isaigu/gymapp/ai/AiModel$Phase;,
        Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;,
        Lcom/isaigu/gymapp/ai/AiModel$Profile;,
        Lcom/isaigu/gymapp/ai/AiModel$SessionInput;,
        Lcom/isaigu/gymapp/ai/AiModel$Screening;,
        Lcom/isaigu/gymapp/ai/AiModel$PauseMode;,
        Lcom/isaigu/gymapp/ai/AiModel$BlockMode;,
        Lcom/isaigu/gymapp/ai/AiModel$PhaseId;,
        Lcom/isaigu/gymapp/ai/AiModel$Operator;,
        Lcom/isaigu/gymapp/ai/AiModel$Fitness;,
        Lcom/isaigu/gymapp/ai/AiModel$Sex;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activePauseAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 78
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v1, :cond_9

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v1, :cond_a

    .line 81
    :cond_9
    :goto_9
    return v0

    :cond_a
    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-eq p1, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method
