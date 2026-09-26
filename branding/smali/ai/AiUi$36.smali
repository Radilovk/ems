.class synthetic Lcom/isaigu/gymapp/ai/AiUi$36;
.super Ljava/lang/Object;
.source "AiUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/AiUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

.field static final synthetic $SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 2001
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

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
    sget-object v2, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

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
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    :try_start_2e
    sget-object v3, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v3

    .line 175
    :goto_3b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->values()[Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    :try_start_44
    sget-object v4, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception v1

    :goto_4e
    :try_start_4e
    sget-object v1, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    sget-object v3, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v0

    :goto_5a
    :try_start_5a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$36;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v0

    :goto_66
    return-void
.end method
