.class public final Lcom/isaigu/gymapp/ai/AiRamp;
.super Ljava/lang/Object;
.source "AiRamp.java"


# static fields
.field public static final MAX_MS:I = 0x7d0

.field private static volatile aiActive:Z

.field private static volatile rampDownMs:I

.field private static volatile rampUpMs:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    .line 34
    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    .line 35
    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    .line 36
    return-void
.end method

.method private static encode(I)I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method static fit(III)[I
    .locals 8

    .prologue
    const/16 v2, 0x7d0

    const/4 v3, 0x0

    .line 91
    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 92
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 93
    if-lez p2, :cond_1

    mul-int/lit16 v2, p2, 0x3e8

    .line 94
    :goto_0
    if-lez v2, :cond_0

    add-int v4, v1, v0

    if-le v4, v2, :cond_0

    .line 95
    int-to-double v4, v2

    add-int v2, v1, v0

    int-to-double v6, v2

    div-double/2addr v4, v6

    .line 96
    int-to-double v6, v1

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 97
    int-to-double v6, v0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 99
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2

    :cond_1
    move v2, v3

    .line 93
    goto :goto_0
.end method

.method public static inputByte()I
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inputByte(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .locals 3

    .prologue
    .line 48
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 49
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByte()I

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByteMs(III)I

    move-result v0

    goto :goto_0
.end method

.method public static inputByteMs(III)I
    .locals 2

    .prologue
    .line 62
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByte()I

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRamp;->fit(III)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    goto :goto_0
.end method

.method public static outputByte()I
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static outputByte(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .locals 3

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 56
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByte()I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByteMs(III)I

    move-result v0

    goto :goto_0
.end method

.method public static outputByteMs(III)I
    .locals 2

    .prologue
    .line 69
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByte()I

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRamp;->fit(III)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    goto :goto_0
.end method

.method public static rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .locals 4

    .prologue
    const/16 v3, 0x7d0

    const/4 v1, 0x2

    .line 80
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_0

    .line 81
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

    .line 86
    :goto_0
    return-object v0

    .line 83
    :cond_0
    if-nez p0, :cond_1

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 86
    :cond_1
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRamp;->fit(III)[I

    move-result-object v0

    goto :goto_0

    .line 84
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static set(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    .line 28
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    .line 29
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    .line 30
    return-void
.end method
