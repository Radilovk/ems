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
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 1

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
    .registers 3

    .prologue
    .line 89
    if-gtz p0, :cond_4

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_3
    return v0

    :cond_4
    const/16 v0, 0xff

    add-int/lit8 v1, p0, 0x9

    div-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3
.end method

.method static fit(III)[I
    .registers 11

    .prologue
    const/16 v2, 0x7d0

    const/4 v3, 0x0

    .line 77
    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 78
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 79
    if-lez p2, :cond_39

    mul-int/lit16 v2, p2, 0x3e8

    .line 80
    :goto_17
    if-lez v2, :cond_30

    add-int v4, v1, v0

    if-le v4, v2, :cond_30

    .line 81
    int-to-double v4, v2

    add-int v2, v1, v0

    int-to-double v6, v2

    div-double/2addr v4, v6

    .line 82
    int-to-double v6, v1

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 83
    int-to-double v6, v0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 85
    :cond_30
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2

    :cond_39
    move v2, v3

    .line 79
    goto :goto_17
.end method

.method public static inputByte()I
    .registers 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static inputByte(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 4

    .prologue
    .line 48
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_b

    .line 49
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByte()I

    move-result v0

    .line 51
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByteMs(III)I

    move-result v0

    goto :goto_a
.end method

.method public static inputByteMs(III)I
    .registers 5

    .prologue
    .line 62
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_9

    .line 63
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByte()I

    move-result v0

    .line 65
    :goto_8
    return v0

    :cond_9
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRamp;->fit(III)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    goto :goto_8
.end method

.method public static outputByte()I
    .registers 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static outputByte(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 4

    .prologue
    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-nez v0, :cond_6

    if-nez p0, :cond_b

    .line 56
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByte()I

    move-result v0

    .line 58
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByteMs(III)I

    move-result v0

    goto :goto_a
.end method

.method public static outputByteMs(III)I
    .registers 5

    .prologue
    .line 69
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_9

    .line 70
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByte()I

    move-result v0

    .line 72
    :goto_8
    return v0

    :cond_9
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRamp;->fit(III)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    goto :goto_8
.end method

.method public static set(II)V
    .registers 4

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
