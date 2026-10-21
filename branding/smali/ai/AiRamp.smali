.class public final Lcom/isaigu/gymapp/ai/AiRamp;
.super Ljava/lang/Object;
.source "AiRamp.java"


# static fields
.field public static final MAX_MS:I = 0xbb8

.field private static volatile aiActive:Z

.field private static volatile rampDownMs:I

.field private static volatile rampUpMs:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static active()Z
    .registers 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    return v0
.end method

.method public static clear()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    .line 37
    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    .line 38
    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    .line 39
    return-void
.end method

.method static fit(III)[I
    .registers 8

    .prologue
    const/16 v2, 0xbb8

    const/4 v3, 0x0

    .line 60
    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 61
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    if-lez p2, :cond_30

    mul-int/lit16 v2, p2, 0x3e8

    .line 63
    :goto_17
    if-lez v2, :cond_27

    add-int v4, v1, v0

    if-le v4, v2, :cond_27

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 65
    sub-int v0, v2, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 67
    :cond_27
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2

    :cond_30
    move v2, v3

    .line 62
    goto :goto_17
.end method

.method public static rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 5

    .prologue
    const/16 v3, 0xbb8

    const/4 v1, 0x2

    .line 46
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_1c

    .line 47
    new-array v0, v1, [I

    const/4 v1, 0x0

    sget v2, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    .line 52
    :goto_1b
    return-object v0

    .line 49
    :cond_1c
    if-nez p0, :cond_24

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_30

    goto :goto_1b

    .line 52
    :cond_24
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRamp;->fit(III)[I

    move-result-object v0

    goto :goto_1b

    .line 50
    nop

    :array_30
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static set(II)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    .line 26
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    .line 27
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    .line 28
    return-void
.end method
