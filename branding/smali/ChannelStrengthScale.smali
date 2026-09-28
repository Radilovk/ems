.class public final Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;
.super Ljava/lang/Object;
.source "ChannelStrengthScale.java"


# static fields
.field private static final ARMS_CHANNEL_INDEX:I = 0x4

.field private static final ARMS_DIV_HIGH:F = 10.0f

.field private static final ARMS_DIV_LOW:F = 5.0f

.field private static final ARMS_PW_HIGH:I = 0x190

.field private static final ARMS_PW_LOW:I = 0x96

.field private static final BAL_REF_PW:I = 0x177

.field private static final CHRONAXIE:[F

.field private static currentPulseWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_e

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    .line 37
    const/16 v0, 0x190

    sput v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    return-void

    .line 34
    :array_e
    .array-data 4
        0x43c80000    # 400.0f
        0x44124000    # 585.0f
        0x43f28000    # 485.0f
        0x4400c000    # 515.0f
        0x0
        0x43d70000    # 430.0f
        0x43eb0000    # 470.0f
        0x44110000    # 580.0f
        0x44200000    # 640.0f
        0x4400c000    # 515.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static armsDivider(I)F
    .registers 5

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 95
    add-int/lit16 v1, p0, -0x96

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    .line 96
    cmpg-float v2, v1, v0

    if-gez v2, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public static armsFactor()F
    .registers 1

    .prologue
    .line 78
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F

    move-result v0

    return v0
.end method

.method public static armsFactor(I)F
    .registers 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 84
    :try_start_2
    const-string v1, "arms_full"

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicense;->hasFeature(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_b

    move-result v1

    if-eqz v1, :cond_c

    .line 90
    :goto_a
    return v0

    .line 88
    :catch_b
    move-exception v1

    .line 90
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsDivider(I)F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_a
.end method

.method public static balance(II)F
    .registers 8

    .prologue
    const/4 v5, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 59
    if-ltz p0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    array-length v0, v0

    if-ge p0, v0, :cond_f

    if-eq p0, v5, :cond_f

    if-gtz p1, :cond_11

    :cond_f
    move v0, v3

    .line 68
    :goto_10
    return v0

    .line 63
    :cond_11
    const/4 v0, 0x0

    move v1, v2

    :goto_13
    sget-object v4, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    array-length v4, v4

    if-ge v0, v4, :cond_29

    .line 64
    if-eq v0, v5, :cond_26

    .line 65
    sget-object v4, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    aget v4, v4, v0

    invoke-static {v4, p1}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->gain(FI)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 63
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 68
    :cond_29
    cmpl-float v0, v1, v2

    if-lez v0, :cond_37

    sget-object v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    aget v0, v0, p0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->gain(FI)F

    move-result v0

    div-float/2addr v0, v1

    goto :goto_10

    :cond_37
    move v0, v3

    goto :goto_10
.end method

.method private static gain(FI)F
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 73
    int-to-float v0, p1

    div-float v0, p0, v0

    add-float/2addr v0, v2

    const v1, 0x43bb8000    # 375.0f

    div-float v1, p0, v1

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public static scaleOutput(IF)F
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x4

    if-ne p0, v0, :cond_b

    .line 49
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F

    move-result v0

    mul-float/2addr v0, p1

    .line 51
    :goto_a
    return v0

    :cond_b
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->balance(II)F

    move-result v0

    mul-float/2addr v0, p1

    goto :goto_a
.end method

.method public static setPulseWidth(I)V
    .registers 1

    .prologue
    .line 44
    sput p0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    .line 45
    return-void
.end method
