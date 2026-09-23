.class synthetic Lcom/isaigu/gymapp/ai/AiText$1;
.super Ljava/lang/Object;
.source "AiText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

.field static final synthetic $SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

.field static final synthetic $SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiEngine$State;->values()[Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    :try_start_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_e3

    :goto_14
    :try_start_14
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_e0

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_dd

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_da

    :goto_35
    :try_start_35
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_d7

    :goto_40
    :try_start_40
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_d4

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_d2

    :goto_56
    :try_start_56
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_d0

    .line 42
    :goto_62
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->values()[Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    :try_start_6b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_76} :catch_ce

    :goto_76
    :try_start_76
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_81} :catch_cc

    :goto_81
    :try_start_81
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8c} :catch_ca

    .line 22
    :goto_8c
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    :try_start_95
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_a0} :catch_c8

    :goto_a0
    :try_start_a0
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_ab} :catch_c6

    :goto_ab
    :try_start_ab
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b6} :catch_c4

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c1} :catch_c2

    :goto_c1
    return-void

    :catch_c2
    move-exception v0

    goto :goto_c1

    :catch_c4
    move-exception v0

    goto :goto_b6

    :catch_c6
    move-exception v0

    goto :goto_ab

    :catch_c8
    move-exception v0

    goto :goto_a0

    .line 42
    :catch_ca
    move-exception v0

    goto :goto_8c

    :catch_cc
    move-exception v0

    goto :goto_81

    :catch_ce
    move-exception v0

    goto :goto_76

    .line 51
    :catch_d0
    move-exception v0

    goto :goto_62

    :catch_d2
    move-exception v0

    goto :goto_56

    :catch_d4
    move-exception v0

    goto/16 :goto_4b

    :catch_d7
    move-exception v0

    goto/16 :goto_40

    :catch_da
    move-exception v0

    goto/16 :goto_35

    :catch_dd
    move-exception v0

    goto/16 :goto_2a

    :catch_e0
    move-exception v0

    goto/16 :goto_1f

    :catch_e3
    move-exception v0

    goto/16 :goto_14
.end method
