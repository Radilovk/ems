.class synthetic Lcom/isaigu/gymapp/ai/AiUi$32;
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
    .registers 3

    .prologue
    .line 1908
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    :try_start_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_6c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_6a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_68

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_66

    .line 174
    :goto_35
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->values()[Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    :try_start_3e
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->REST_HR:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_64

    :goto_49
    :try_start_49
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->PLAN:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_62

    :goto_54
    :try_start_54
    sget-object v0, Lcom/isaigu/gymapp/ai/AiUi$32;->$SwitchMap$com$isaigu$gymapp$ai$AiSession$Stage:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->CALIB:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiSession$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_60

    :goto_5f
    return-void

    :catch_60
    move-exception v0

    goto :goto_5f

    :catch_62
    move-exception v0

    goto :goto_54

    :catch_64
    move-exception v0

    goto :goto_49

    .line 1908
    :catch_66
    move-exception v0

    goto :goto_35

    :catch_68
    move-exception v0

    goto :goto_2a

    :catch_6a
    move-exception v0

    goto :goto_1f

    :catch_6c
    move-exception v0

    goto :goto_14
.end method
