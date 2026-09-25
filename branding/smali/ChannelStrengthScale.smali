.class public final Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;
.super Ljava/lang/Object;
.source "ChannelStrengthScale.java"


# static fields
.field private static final ARMS_CHANNEL_INDEX:I = 0x4

.field private static final ARMS_SCALE:F = 0.05f


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static armsFactor()F
    .registers 1

    .line 28
    :try_start_0
    const-string v0, "arms_full"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->hasFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_c

    if-eqz v0, :cond_b

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 33
    :cond_b
    goto :goto_d

    .line 32
    :catchall_c
    move-exception v0

    .line 34
    :goto_d
    const v0, 0x3d4ccccd    # 0.05f

    return v0
.end method

.method public static scaleOutput(IF)F
    .registers 3

    .line 19
    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    .line 20
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor()F

    move-result p0

    mul-float p1, p1, p0

    return p1

    .line 22
    :cond_a
    return p1
.end method
