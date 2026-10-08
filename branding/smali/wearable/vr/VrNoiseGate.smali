.class public final Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;
.super Ljava/lang/Object;
.source "VrNoiseGate.java"


# static fields
.field public static final ALL:I = 0x2

.field static final AMP:[F

.field static final DUR:[J

.field static final HIT:[F

.field public static final HIT_AMPLITUDE:F = 0.7f

.field public static final MIN_AMPLITUDE:F = 0.4f

.field public static final MIN_DURATION_US:J = 0x88b8L

.field public static final NORMAL:I = 0x1

.field public static final STRONG:I

.field private static volatile preset:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 23
    new-array v0, v1, [F

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->AMP:[F

    .line 24
    new-array v0, v1, [J

    fill-array-data v0, :array_24

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->DUR:[J

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_34

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->HIT:[F

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->preset:I

    return-void

    .line 23
    :array_1a
    .array-data 4
        0x3f19999a    # 0.6f
        0x3ecccccd    # 0.4f
        0x3df5c28f    # 0.12f
    .end array-data

    .line 24
    :array_24
    .array-data 8
        0xc350
        0x88b8
        0x0
    .end array-data

    .line 25
    :array_34
    .array-data 4
        0x3f59999a    # 0.85f
        0x3f333333    # 0.7f
        0x3df5c28f    # 0.12f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static passes(FJZZ)Z
    .registers 12

    .prologue
    .line 41
    const/4 v6, 0x1

    move v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->passes(FJZZI)Z

    move-result v0

    return v0
.end method

.method public static passes(FJZZI)Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->AMP:[F

    aget v2, v2, p5

    cmpl-float v2, p0, v2

    if-gez v2, :cond_b

    .line 52
    :cond_a
    :goto_a
    return v0

    .line 48
    :cond_b
    if-eqz p4, :cond_f

    move v0, v1

    .line 49
    goto :goto_a

    .line 51
    :cond_f
    if-eqz p3, :cond_13

    const-wide/16 p1, 0x0

    .line 52
    :cond_13
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->DUR:[J

    aget-wide v2, v2, p5

    cmp-long v2, p1, v2

    if-gez v2, :cond_23

    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->HIT:[F

    aget v2, v2, p5

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_a

    :cond_23
    move v0, v1

    goto :goto_a
.end method

.method public static passes(Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;)Z
    .registers 8

    .prologue
    .line 57
    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->amplitude:F

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->durationUs:J

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->isMinDuration()Z

    move-result v4

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->isAppend()Z

    move-result v5

    sget v6, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->preset:I

    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->passes(FJZZI)Z

    move-result v0

    return v0
.end method

.method public static preset()I
    .registers 1

    .prologue
    .line 36
    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->preset:I

    return v0
.end method

.method public static setPreset(I)V
    .registers 2

    .prologue
    .line 32
    if-ltz p0, :cond_5

    const/4 v0, 0x2

    if-le p0, v0, :cond_6

    :cond_5
    const/4 p0, 0x1

    :cond_6
    sput p0, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->preset:I

    .line 33
    return-void
.end method
