.class public final Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;
.super Ljava/lang/Object;
.source "ChannelStrengthScale.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scaleOutput(IF)F
    .locals 1
    .param p0, "channelIndex"    # I
    .param p1, "encodedValue"    # F

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    return p1

    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    mul-float v0, p1, v0

    return v0
.end method
