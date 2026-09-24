.class public final Lcom/isaigu/gymapp/ai/AiRamp;
.super Ljava/lang/Object;
.source "AiRamp.java"


# static fields
.field private static volatile rampDownMs:I

.field private static volatile rampUpMs:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    .line 21
    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    .line 22
    return-void
.end method

.method private static encode(I)I
    .registers 3

    .prologue
    .line 33
    if-gtz p0, :cond_4

    .line 34
    const/4 v0, 0x0

    .line 36
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

.method public static inputByte()I
    .registers 1

    .prologue
    .line 25
    sget v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    return v0
.end method

.method public static outputByte()I
    .registers 1

    .prologue
    .line 29
    sget v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRamp;->encode(I)I

    move-result v0

    return v0
.end method

.method public static set(II)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampUpMs:I

    .line 16
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/ai/AiRamp;->rampDownMs:I

    .line 17
    return-void
.end method
