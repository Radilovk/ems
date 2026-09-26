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
    .registers 8

    .line 51
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiEngine$State;->values()[Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/isaigu/gymapp/ai/AiEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v3, Lcom/isaigu/gymapp/ai/AiEngine$State;->REST:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v4, Lcom/isaigu/gymapp/ai/AiEngine$State;->CHECKPOINT:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    const/4 v3, 0x4

    :try_start_2f
    sget-object v4, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v5, Lcom/isaigu/gymapp/ai/AiEngine$State;->STIM_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v4

    :goto_3b
    const/4 v4, 0x5

    :try_start_3c
    sget-object v5, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->USER_PAUSE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v5

    :goto_48
    :try_start_48
    sget-object v5, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->RECOVERY:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v5

    :goto_55
    :try_start_55
    sget-object v5, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v5

    :goto_62
    :try_start_62
    sget-object v5, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiEngine$State:[I

    sget-object v6, Lcom/isaigu/gymapp/ai/AiEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AiEngine$State;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiEngine$State;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v5

    .line 42
    :goto_70
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->values()[Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    :try_start_79
    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->WARMUP:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-exception v5

    :goto_83
    :try_start_83
    sget-object v5, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->MAIN:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8e

    goto :goto_8f

    :catch_8e
    move-exception v5

    :goto_8f
    :try_start_8f
    sget-object v5, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$PhaseId:[I

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->METABOLIC:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_99} :catch_9a

    goto :goto_9b

    :catch_9a
    move-exception v5

    .line 22
    :goto_9b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    :try_start_a4
    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_ac} :catch_ad

    goto :goto_ae

    :catch_ad
    move-exception v1

    :goto_ae
    :try_start_ae
    sget-object v1, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_b8} :catch_b9

    goto :goto_ba

    :catch_b9
    move-exception v0

    :goto_ba
    :try_start_ba
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_c4} :catch_c5

    goto :goto_c6

    :catch_c5
    move-exception v0

    :goto_c6
    :try_start_c6
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v0

    :goto_d2
    :try_start_d2
    sget-object v0, Lcom/isaigu/gymapp/ai/AiText$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_dc} :catch_dd

    goto :goto_de

    :catch_dd
    move-exception v0

    :goto_de
    return-void
.end method
