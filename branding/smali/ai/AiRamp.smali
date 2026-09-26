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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 1

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    .line 34
    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    .line 35
    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    .line 36
    return-void
.end method

.method private static encode(I)I
    .registers 1

    .line 104
    const/4 p0, 0x0

    return p0
.end method

.method static fit(III)[I
    .registers 9

    .line 91
    const/16 v0, 0xbb8

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 92
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 93
    if-lez p2, :cond_18

    mul-int/lit16 p2, p2, 0x3e8

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    .line 94
    :goto_19
    if-lez p2, :cond_32

    add-int v0, p0, p1

    if-le v0, p2, :cond_32

    .line 95
    int-to-double v2, p2

    int-to-double v4, v0

    div-double/2addr v2, v4

    .line 96
    int-to-double v4, p0

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p0, v4

    .line 97
    int-to-double p1, p1

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 99
    :cond_32
    const/4 p2, 0x2

    new-array p2, p2, [I

    aput p0, p2, v1

    const/4 p0, 0x1

    aput p1, p2, p0

    return-object p2
.end method

.method public static inputByte()I
    .registers 1

    .line 40
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static inputByte(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 3

    .line 48
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-nez v0, :cond_12

    if-nez p0, :cond_7

    goto :goto_12

    .line 51
    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget p0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByteMs(III)I

    move-result p0

    return p0

    .line 49
    :cond_12
    :goto_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByte()I

    move-result p0

    return p0
.end method

.method public static inputByteMs(III)I
    .registers 4

    .line 62
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_9

    .line 63
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->inputByte()I

    move-result p0

    return p0

    .line 65
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRamp;->fit(III)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result p0

    return p0
.end method

.method public static outputByte()I
    .registers 1

    .line 44
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_b

    sget v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static outputByte(Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 3

    .line 55
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-nez v0, :cond_12

    if-nez p0, :cond_7

    goto :goto_12

    .line 58
    :cond_7
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget p0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByteMs(III)I

    move-result p0

    return p0

    .line 56
    :cond_12
    :goto_12
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByte()I

    move-result p0

    return p0
.end method

.method public static outputByteMs(III)I
    .registers 4

    .line 69
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    if-eqz v0, :cond_9

    .line 70
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiRamp;->outputByte()I

    move-result p0

    return p0

    .line 72
    :cond_9
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRamp;->fit(III)[I

    move-result-object p0

    const/4 p1, 0x1

    aget p0, p0, p1

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result p0

    return p0
.end method

.method public static rampMs(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I
    .registers 4

    .line 80
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1c

    .line 81
    new-array p0, v1, [I

    const/4 v0, 0x0

    sget v1, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    const/16 v2, 0xbb8

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, p0, v0

    const/4 v0, 0x1

    sget v1, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, p0, v0

    return-object p0

    .line 83
    :cond_1c
    if-nez p0, :cond_24

    .line 84
    new-array p0, v1, [I

    fill-array-data p0, :array_30

    return-object p0

    .line 86
    :cond_24
    iget v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->inputRamp:I

    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->outputRamp:I

    iget p0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    invoke-static {v0, v1, p0}, Lcom/isaigu/gymapp/ai/AiRamp;->fit(III)[I

    move-result-object p0

    return-object p0

    nop

    :array_30
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static set(II)V
    .registers 3

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiRamp;->aiActive:Z

    .line 28
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    .line 29
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    .line 30
    return-void
.end method
