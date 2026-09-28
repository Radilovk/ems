.class public final Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;
.super Ljava/lang/Object;
.source "ChannelStrengthScale.java"


# static fields
.field private static final ARMS_CHANNEL_INDEX:I = 0x4

.field private static final ARMS_DIV_HIGH:F = 10.0f

.field private static final ARMS_DIV_LOW:F = 5.0f

.field private static final ARMS_PW_HIGH:I = 0x190

.field private static final ARMS_PW_LOW:I = 0x96

.field private static currentPulseWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/16 v0, 0x190

    sput v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static armsDivider(I)F
    .registers 5

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 57
    add-int/lit16 v1, p0, -0x96

    int-to-float v1, v1

    mul-float/2addr v1, v3

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v3

    .line 58
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
    .line 40
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F

    move-result v0

    return v0
.end method

.method public static armsFactor(I)F
    .registers 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    :try_start_2
    const-string v1, "arms_full"

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicense;->hasFeature(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_b

    move-result v1

    if-eqz v1, :cond_c

    .line 52
    :goto_a
    return v0

    .line 50
    :catch_b
    move-exception v1

    .line 52
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsDivider(I)F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_a
.end method

.method public static scaleOutput(IF)F
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    .line 33
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F

    move-result v0

    mul-float/2addr p1, v0

    .line 35
    :cond_a
    return p1
.end method

.method public static setPulseWidth(I)V
    .registers 1

    .prologue
    .line 28
    sput p0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    .line 29
    return-void
.end method
