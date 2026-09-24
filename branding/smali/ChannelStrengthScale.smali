.class public final Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;
.super Ljava/lang/Object;
.source "ChannelStrengthScale.java"


# static fields
.field private static final ARMS_CHANNEL_INDEX:I = 0x4

.field private static final ARMS_SCALE:F = 0.05f


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static armsFactor()F
    .registers 1

    .prologue
    .line 28
    :try_start_0
    const-string v0, "arms_full"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->hasFeature(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b

    move-result v0

    if-eqz v0, :cond_c

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    :goto_a
    return v0

    .line 32
    :catch_b
    move-exception v0

    .line 34
    :cond_c
    const v0, 0x3d4ccccd    # 0.05f

    goto :goto_a
.end method

.method public static scaleOutput(IF)F
    .registers 3

    .prologue
    .line 19
    const/4 v0, 0x4

    if-ne p0, v0, :cond_8

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor()F

    move-result v0

    mul-float/2addr p1, v0

    .line 22
    :cond_8
    return p1
.end method
