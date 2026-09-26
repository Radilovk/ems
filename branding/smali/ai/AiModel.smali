.class public final Lcom/isaigu/gymapp/ai/AiModel;
.super Ljava/lang/Object;
.source "AiModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
        Lcom/isaigu/gymapp/ai/AiModel$Sex;,
        Lcom/isaigu/gymapp/ai/AiModel$Mode;,
        Lcom/isaigu/gymapp/ai/AiModel$Goal;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activePauseAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z
    .registers 2

    .line 38
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z
    .registers 4

    .line 78
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const/4 v1, 0x1

    if-eq p0, v0, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_a

    goto :goto_11

    .line 81
    :cond_a
    sget-object p0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne p1, p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1

    .line 79
    :cond_11
    :goto_11
    return v1
.end method
