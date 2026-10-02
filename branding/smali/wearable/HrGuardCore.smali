.class public final Lcom/isaigu/gymapp/wearable/HrGuardCore;
.super Ljava/lang/Object;
.source "HrGuardCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;,
        Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;,
        Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;,
        Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;
    }
.end annotation


# static fields
.field public static final CALIB_MS:I = 0x7530

.field public static final CALM_MS:J = 0x4e20L

.field public static final CAP_OVER:I = 0xc

.field public static final DRIFT_AFTER_MS:J = 0xdbba0L

.field public static final EFFECT_CHECK_MS:J = 0x4e20L

.field public static final GLIDE_S:D = 40.0

.field public static final HOLD_BELOW:I = 0x3

.field public static final HZ_FLOOR:D = 0.7

.field public static final HZ_FUSION:I = 0x14

.field public static final HZ_MIN_TETANIC:I = 0x32

.field public static final HZ_TWITCH_MIN:I = 0x2

.field public static final LAG_S:D = 20.0

.field public static final MARGIN_MAX:I = 0x1e

.field public static final MARGIN_MIN:I = 0xf

.field public static final MARGIN_SHARE:D = 0.15

.field public static final MIN_ACT_GAP_MS:J = 0x1770L

.field public static final OFF_MAX_ADD_S:I = 0x8

.field public static final ON_MIN_S:I = 0x2

.field public static final PAUSE_STEP:D = 0.25

.field public static final POP_HR_MAX:I = 0xb4

.field public static final PW_FLOOR:D = 0.7

.field public static final PW_MIN_US:I = 0xfa

.field public static final RESTORE_EVERY_MS:J = 0x2710L

.field public static final RESTORE_GAP:I = 0x6

.field public static final RESTORE_STEP:D = 0.03

.field public static final SETTLE_MS:J = 0x3a98L

.field public static final SLOPE_TOL:D = 0.03

.field public static final SLOPE_WINDOW_S:D = 30.0

.field public static final S_FLOOR:D = 0.4

.field public static final S_SOFT_FLOOR:D = 0.7

.field public static final UPPER_DEFAULT:I = 0x96

.field public static final UPPER_MAX:I = 0xa0

.field public static final UPPER_MIN:I = 0x82

.field public static final UPPER_SHARE:D = 0.65


# instance fields
.field private calib:Lcom/isaigu/gymapp/ai/AiRestHr;

.field private calmSinceMs:J

.field private energy:Lcom/isaigu/gymapp/ai/AiEnergy;

.field private final filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

.field private forecast:D

.field private hold:Z

.field private hrMax:I

.field private hrRest:I

.field private hzF:D

.field private lagS:D

.field private lastAction:Ljava/lang/String;

.field private lastActionMs:J

.field private manualUpper:I

.field private marginShare:D

.field private maxStepPct:I

.field private nextActMs:J

.field private nextRestoreMs:J

.field private final noEffect:[I

.field private offAdd:I

.field private onCut:I

.field private pauseF:D

.field private final peakCharge:[D

.field private pendingCheckMs:J

.field private pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

.field private pendingSlope:D

.field private pwF:D

.field private final recent:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<[D>;"
        }
    .end annotation
.end field

.field private runStartMs:J

.field private sBeforeHold:D

.field private sF:D

.field private slope:D

.field private final steps:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<[D>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, -0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget-object v0, Lcom/isaigu/gymapp/ai/AiEnergy;->CH_MASS:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    .line 117
    new-instance v0, Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    .line 118
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    .line 119
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 121
    const/16 v0, 0xb4

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    .line 123
    const-wide v0, 0x3fc3333333333333L    # 0.15

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->marginShare:D

    .line 124
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lagS:D

    .line 126
    iput v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    .line 127
    iput v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    .line 128
    const/16 v0, 0xa

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    .line 130
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 131
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 132
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 134
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    .line 138
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    .line 140
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 142
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->values()[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    .line 145
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->steps:Ljava/util/ArrayDeque;

    .line 148
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    .line 149
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    .line 152
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    return-void
.end method

.method private action(Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 745
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    .line 746
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastActionMs:J

    .line 747
    return-void
.end method

.method public static autoUpper(I)I
    .registers 2

    .prologue
    .line 230
    const/16 v0, 0xb4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->autoUpper(II)I

    move-result v0

    return v0
.end method

.method public static autoUpper(II)I
    .registers 8

    .prologue
    .line 235
    if-gtz p0, :cond_b

    .line 236
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_9

    .line 237
    const/16 v0, 0x96

    .line 242
    :goto_8
    return v0

    .line 239
    :cond_9
    const/16 p0, 0x46

    .line 241
    :cond_b
    int-to-double v0, p0

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    sub-int v4, p1, p0

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 242
    const/16 v1, 0x82

    const/16 v2, 0xa0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_8
.end method

.method private baseOff(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)I
    .registers 5

    .prologue
    .line 567
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseOffS:I

    if-lez v0, :cond_7

    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseOffS:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->offAdd:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6
.end method

.method private baseOn(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)I
    .registers 4

    .prologue
    .line 563
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseOnS:I

    if-lez v0, :cond_7

    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseOnS:I

    :goto_6
    return v0

    :cond_7
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onCut:I

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method private checkEffect(J)V
    .registers 12

    .prologue
    .line 572
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    .line 582
    :cond_a
    :goto_a
    return-void

    .line 575
    :cond_b
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v0

    .line 576
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingSlope:D

    const-wide v6, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_27

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_30

    .line 577
    :cond_27
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 581
    :goto_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    goto :goto_a

    .line 579
    :cond_30
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    goto :goto_2c
.end method

.method private computeSlope()D
    .registers 19

    .prologue
    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v8

    .line 724
    const/4 v2, 0x4

    if-ge v8, v2, :cond_e

    .line 725
    const-wide/16 v2, 0x0

    .line 741
    :goto_d
    return-wide v2

    .line 727
    :cond_e
    const-wide/16 v6, 0x0

    .line 728
    const-wide/16 v2, 0x0

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v2

    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 730
    const/4 v3, 0x0

    aget-wide v10, v2, v3

    add-double/2addr v6, v10

    .line 731
    const/4 v3, 0x1

    aget-wide v2, v2, v3

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 732
    goto :goto_1b

    .line 733
    :cond_31
    int-to-double v2, v8

    div-double v10, v6, v2

    .line 734
    int-to-double v2, v8

    div-double v8, v4, v2

    .line 735
    const-wide/16 v6, 0x0

    .line 736
    const-wide/16 v2, 0x0

    .line 737
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v4, v2

    :goto_44
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 738
    const/4 v3, 0x0

    aget-wide v14, v2, v3

    sub-double/2addr v14, v10

    const/4 v3, 0x0

    aget-wide v16, v2, v3

    sub-double v16, v16, v10

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    .line 739
    const/4 v3, 0x0

    aget-wide v14, v2, v3

    sub-double/2addr v14, v10

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    sub-double/2addr v2, v8

    mul-double/2addr v2, v14

    add-double/2addr v2, v4

    move-wide v4, v2

    .line 740
    goto :goto_44

    .line 741
    :cond_68
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-lez v2, :cond_71

    div-double v2, v4, v6

    goto :goto_d

    :cond_71
    const-wide/16 v2, 0x0

    goto :goto_d
.end method

.method private static cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 715
    const-wide/16 v0, 0x1770

    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static duty(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)D
    .registers 6

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v0, :cond_7

    .line 708
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 711
    :goto_6
    return-wide v0

    .line 710
    :cond_7
    const/4 v0, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 711
    int-to-double v2, v0

    const/4 v1, 0x0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    goto :goto_6
.end method

.method private energyStim(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/ai/AiEnergy$Stim;
    .registers 14

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    const/4 v1, 0x0

    .line 678
    if-eqz p1, :cond_d

    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v0, :cond_d

    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    if-gtz v0, :cond_f

    .line 679
    :cond_d
    const/4 v0, 0x0

    .line 702
    :goto_e
    return-object v0

    .line 681
    :cond_f
    new-instance v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;-><init>()V

    .line 682
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->channels:[I

    .line 683
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->disabled:[Z

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->disabled:[Z

    .line 684
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    int-to-double v2, v0

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->strengthPct:D

    .line 685
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    iput v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->hz:I

    .line 686
    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    if-lez v0, :cond_9f

    iget v0, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    :goto_2b
    iput v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    .line 687
    const/4 v0, 0x1

    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 688
    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 689
    int-to-double v8, v0

    add-int v3, v0, v2

    int-to-double v10, v3

    div-double/2addr v8, v10

    iput-wide v8, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->onShare:D

    .line 690
    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v3, :cond_57

    if-lez v2, :cond_57

    .line 691
    iget v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    int-to-double v8, v3

    iput-wide v8, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseStrengthPct:D

    .line 692
    iget v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseHz:I

    iput v3, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseHz:I

    .line 693
    int-to-double v8, v2

    add-int/2addr v0, v2

    int-to-double v2, v0

    div-double v2, v8, v2

    iput-wide v2, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pauseShare:D

    :cond_57
    move v0, v1

    .line 695
    :goto_58
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    array-length v2, v2

    if-ge v0, v2, :cond_af

    .line 696
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    if-eqz v2, :cond_a4

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    array-length v2, v2

    if-ge v0, v2, :cond_a2

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->channels:[I

    aget v2, v2, v0

    :goto_6a
    int-to-double v2, v2

    .line 697
    :goto_6b
    div-double v8, v2, v6

    const/4 v2, 0x4

    if-ne v0, v2, :cond_a6

    iget v2, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->armsSent(I)D

    move-result-wide v2

    :goto_76
    mul-double/2addr v8, v2

    iget v3, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    .line 698
    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v2, :cond_ad

    iget v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pauseStrength:I

    :goto_7f
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    div-double/2addr v2, v6

    iget v5, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    int-to-double v8, v5

    mul-double/2addr v2, v8

    const-wide v8, 0x4075e00000000000L    # 350.0

    div-double/2addr v2, v8

    .line 699
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    iget-object v8, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    aget-wide v8, v8, v0

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    aput-wide v2, v5, v0

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 686
    :cond_9f
    const/16 v0, 0x15e

    goto :goto_2b

    :cond_a2
    move v2, v1

    .line 696
    goto :goto_6a

    :cond_a4
    move-wide v2, v6

    goto :goto_6b

    .line 697
    :cond_a6
    iget v2, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->pwUs:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->channelSent(II)D

    move-result-wide v2

    goto :goto_76

    :cond_ad
    move v2, v1

    .line 698
    goto :goto_7f

    .line 701
    :cond_af
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, v4, Lcom/isaigu/gymapp/ai/AiEnergy$Stim;->toleratedCharge:[D

    move-object v0, v4

    .line 702
    goto/16 :goto_e
.end method

.method private hrFresh(J)Z
    .registers 8

    .prologue
    .line 719
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->ageMs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private hzMinFactor(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)D
    .registers 12

    .prologue
    const/16 v0, 0x14

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 554
    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseHz:I

    if-lez v1, :cond_e

    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseHz:I

    .line 555
    :goto_a
    if-gtz v1, :cond_23

    move-wide v0, v2

    .line 559
    :goto_d
    return-wide v0

    .line 554
    :cond_e
    iget v1, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    int-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    goto :goto_a

    .line 558
    :cond_23
    if-lt v1, v0, :cond_2e

    .line 559
    :goto_25
    int-to-double v4, v0

    int-to-double v0, v1

    div-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_d

    .line 558
    :cond_2e
    const/4 v0, 0x2

    goto :goto_25
.end method

.method public static kindOf(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;
    .registers 3

    .prologue
    .line 398
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseHz:I

    if-lez v0, :cond_d

    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseHz:I

    .line 399
    :goto_6
    const/16 v1, 0x32

    if-lt v0, v1, :cond_10

    .line 400
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;->TETANIC:Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;

    .line 402
    :goto_c
    return-object v0

    .line 398
    :cond_d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    goto :goto_6

    .line 402
    :cond_10
    const/16 v1, 0x14

    if-lt v0, v1, :cond_17

    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;->FUSED:Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;

    goto :goto_c

    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;->TWITCH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;

    goto :goto_c
.end method

.method public static ladder(Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;)[Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;
    .registers 14

    .prologue
    const/4 v12, 0x0

    const-wide v10, 0x3feb333333333333L    # 0.85

    const-wide v8, 0x3fe999999999999aL    # 0.8

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    .line 417
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    new-instance v1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->PAUSE:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-direct {v1, v2, v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    aput-object v1, v0, v12

    const/4 v1, 0x1

    new-instance v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->PAUSE:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->OFF:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-direct {v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ON:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-direct {v2, v3, v6, v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-direct {v2, v3, v8, v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    aput-object v2, v0, v1

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;->TETANIC:Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;

    if-ne p0, v2, :cond_9a

    .line 422
    new-instance v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-direct {v2, v3, v10, v11}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 424
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-direct {v0, v2, v6, v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :goto_67
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const-wide v4, 0x3fe3333333333333L    # 0.6

    invoke-direct {v0, v2, v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->OFF:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-direct {v0, v2, v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const-wide v4, 0x3fd999999999999aL    # 0.4

    invoke-direct {v0, v2, v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-array v0, v12, [Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    return-object v0

    .line 426
    :cond_9a
    new-instance v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-direct {v2, v3, v8, v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-direct {v2, v3, v10, v11}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 429
    new-instance v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    sget-object v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->FREQ:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-direct {v0, v2, v4, v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;-><init>(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;D)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67
.end method

.method private move(Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;DJ)D
    .registers 16

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    .line 511
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->room(Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)D

    move-result-wide v0

    .line 513
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->lever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_88

    .line 544
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 545
    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onCut:I

    double-to-int v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onCut:I

    .line 546
    const-string v2, "on_down"

    invoke-direct {p0, v2, p5, p6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 549
    :goto_20
    return-wide v0

    .line 515
    :pswitch_21
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 516
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 517
    const-string v2, "strength_down"

    invoke-direct {p0, v2, p5, p6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    goto :goto_20

    .line 520
    :pswitch_30
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 521
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 522
    const-string v2, "width_down"

    invoke-direct {p0, v2, p5, p6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    goto :goto_20

    .line 525
    :pswitch_3f
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 526
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 527
    const-string v2, "freq_down"

    invoke-direct {p0, v2, p5, p6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    goto :goto_20

    .line 530
    :pswitch_4e
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 531
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    .line 532
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_69

    .line 533
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    add-double/2addr v0, v2

    .line 534
    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    .line 536
    :cond_69
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_75

    const-string v2, "pause_off"

    :goto_71
    invoke-direct {p0, v2, p5, p6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    goto :goto_20

    :cond_75
    const-string v2, "pause_down"

    goto :goto_71

    .line 539
    :pswitch_78
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 540
    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->offAdd:I

    double-to-int v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->offAdd:I

    .line 541
    const-string v2, "off_up"

    invoke-direct {p0, v2, p5, p6}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    goto :goto_20

    .line 513
    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_21
        :pswitch_30
        :pswitch_3f
        :pswitch_4e
        :pswitch_78
    .end packed-switch
.end method

.method private nextRung(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    .line 472
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->kindOf(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->ladder(Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;)[Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_10
    if-ge v2, v4, :cond_2e

    aget-object v0, v3, v2

    .line 473
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->lever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2a

    invoke-direct {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->room(Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)D

    move-result-wide v6

    cmpl-double v5, v6, v8

    if-lez v5, :cond_2a

    .line 482
    :cond_29
    :goto_29
    return-object v0

    .line 472
    :cond_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    .line 477
    :cond_2e
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->kindOf(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->ladder(Lcom/isaigu/gymapp/wearable/HrGuardCore$Kind;)[Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    move-result-object v2

    array-length v3, v2

    :goto_37
    if-ge v1, v3, :cond_4d

    aget-object v0, v2, v1

    .line 478
    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->lever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    sget-object v5, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-ne v4, v5, :cond_49

    invoke-direct {p0, v0, p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->room(Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)D

    move-result-wide v4

    cmpl-double v4, v4, v8

    if-gtz v4, :cond_29

    .line 477
    :cond_49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    .line 482
    :cond_4d
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static personLag(Lcom/isaigu/gymapp/ai/AiModel$Fitness;I)D
    .registers 8

    .prologue
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    .line 212
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 213
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v2, :cond_1b

    .line 214
    add-double/2addr v0, v4

    .line 218
    :cond_9
    :goto_9
    const/16 v2, 0x3c

    if-lt p1, v2, :cond_e

    .line 219
    add-double/2addr v0, v4

    .line 221
    :cond_e
    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0

    .line 215
    :cond_1b
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v2, :cond_9

    .line 216
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sub-double/2addr v0, v2

    goto :goto_9
.end method

.method public static personMargin(Lcom/isaigu/gymapp/ai/AiModel$Fitness;IZ)D
    .registers 11

    .prologue
    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    .line 195
    const-wide v0, 0x3fc3333333333333L    # 0.15

    .line 196
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v2, :cond_1d

    .line 197
    add-double/2addr v0, v6

    .line 201
    :cond_14
    :goto_14
    const/16 v2, 0x3c

    if-lt p1, v2, :cond_19

    .line 202
    add-double/2addr v0, v4

    .line 204
    :cond_19
    if-eqz p2, :cond_1c

    .line 205
    add-double/2addr v0, v6

    .line 207
    :cond_1c
    return-wide v0

    .line 198
    :cond_1d
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne p0, v2, :cond_14

    .line 199
    sub-double/2addr v0, v4

    goto :goto_14
.end method

.method private room(Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)D
    .registers 12

    .prologue
    const/4 v8, 0x2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 487
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->lever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_88

    .line 502
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->baseOn(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)I

    move-result v0

    .line 503
    int-to-double v2, v0

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->limit:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 504
    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onCut:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    int-to-double v0, v0

    :cond_24
    :goto_24
    return-wide v0

    .line 489
    :pswitch_25
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->limit:D

    sub-double/2addr v0, v2

    goto :goto_24

    .line 491
    :pswitch_2b
    iget v2, p2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    const/16 v3, 0xfa

    if-ge v2, v3, :cond_37

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    cmpg-double v2, v2, v6

    if-gez v2, :cond_24

    :cond_37
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    const-wide v2, 0x3fe6666666666666L    # 0.7

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->limit:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_24

    .line 493
    :pswitch_46
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->limit:D

    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzMinFactor(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_24

    .line 495
    :pswitch_54
    iget-boolean v2, p2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->basePause:Z

    if-nez v2, :cond_5c

    iget-boolean v2, p2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v2, :cond_24

    :cond_5c
    iget v2, p2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->baseOffS:I

    if-gtz v2, :cond_64

    iget v2, p2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    if-lez v2, :cond_24

    :cond_64
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->limit:D

    sub-double/2addr v0, v2

    goto :goto_24

    .line 497
    :pswitch_6a
    invoke-direct {p0, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->baseOff(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)I

    move-result v0

    .line 498
    const/16 v1, 0x8

    int-to-double v2, v0

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->limit:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 499
    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->offAdd:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    goto :goto_24

    .line 487
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2b
        :pswitch_46
        :pswitch_54
        :pswitch_6a
    .end packed-switch
.end method

.method private stepDown(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;D)Z
    .registers 23

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    mul-double v6, v6, p4

    add-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 439
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_33

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-lez v2, :cond_33

    .line 440
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v2

    .line 443
    :cond_33
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_66

    const/4 v2, 0x1

    :goto_41
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v2

    int-to-double v8, v2

    cmpl-double v2, v4, v8

    if-ltz v2, :cond_68

    const/4 v2, 0x1

    :goto_51
    add-int v11, v3, v2

    .line 444
    const/4 v2, 0x0

    .line 445
    const/4 v3, 0x0

    move v10, v3

    :goto_56
    if-ge v10, v11, :cond_62

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextRung(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;

    move-result-object v4

    .line 447
    if-nez v4, :cond_6a

    .line 459
    :cond_62
    if-nez v2, :cond_98

    .line 460
    const/4 v2, 0x0

    .line 467
    :goto_65
    return v2

    .line 443
    :cond_66
    const/4 v2, 0x0

    goto :goto_41

    :cond_68
    const/4 v2, 0x0

    goto :goto_51

    :cond_6a
    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-wide/from16 v8, p1

    .line 450
    invoke-direct/range {v3 .. v9}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->move(Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;DJ)D

    move-result-wide v8

    .line 451
    const-wide/16 v12, 0x0

    cmpg-double v3, v8, v12

    if-lez v3, :cond_62

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->steps:Ljava/util/ArrayDeque;

    const/4 v5, 0x2

    new-array v5, v5, [D

    const/4 v12, 0x0

    iget-object v13, v4, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->lever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v13}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v13

    int-to-double v14, v13

    aput-wide v14, v5, v12

    const/4 v12, 0x1

    aput-wide v8, v5, v12

    invoke-virtual {v3, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 455
    if-nez v2, :cond_d2

    .line 445
    :goto_93
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move-object v2, v4

    goto :goto_56

    .line 462
    :cond_98
    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/HrGuardCore$Rung;->lever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 463
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingSlope:D

    .line 464
    const-wide/16 v2, 0x4e20

    add-long v2, v2, p1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingCheckMs:J

    .line 466
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v4

    int-to-double v4, v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_c7

    invoke-static/range {p3 .. p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v2

    :goto_bf
    add-long v2, v2, p1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    .line 467
    const/4 v2, 0x1

    goto :goto_65

    .line 466
    :cond_c7
    invoke-static/range {p3 .. p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v2

    const-wide/16 v4, 0x3a98

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_bf

    :cond_d2
    move-object v4, v2

    goto :goto_93
.end method

.method private stepUp(J)Z
    .registers 14

    .prologue
    const/4 v1, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x1

    .line 586
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->steps:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 587
    if-nez v0, :cond_10

    move v0, v1

    .line 620
    :goto_f
    return v0

    .line 590
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->values()[Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    move-result-object v2

    aget-wide v6, v0, v1

    double-to-int v3, v6

    aget-object v5, v2, v3

    .line 591
    aget-wide v2, v0, v4

    .line 592
    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_98

    .line 612
    iget v5, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onCut:I

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onCut:I

    .line 615
    :goto_30
    aget-wide v6, v0, v4

    sub-double v2, v6, v2

    aput-wide v2, v0, v4

    .line 616
    aget-wide v0, v0, v4

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_46

    .line 617
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->steps:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 619
    :cond_46
    const-string v0, "restore"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    move v0, v4

    .line 620
    goto :goto_f

    .line 596
    :pswitch_4d
    const-wide v2, 0x3f9eb851eb851eb8L    # 0.03

    aget-wide v6, v0, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 597
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-ne v5, v1, :cond_66

    .line 598
    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    add-double/2addr v6, v2

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    goto :goto_30

    .line 599
    :cond_66
    sget-object v1, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->WIDTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    if-ne v5, v1, :cond_74

    .line 600
    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    add-double/2addr v6, v2

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    goto :goto_30

    .line 602
    :cond_74
    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    add-double/2addr v6, v2

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    goto :goto_30

    .line 606
    :pswitch_7e
    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    add-double/2addr v6, v2

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    goto :goto_30

    .line 609
    :pswitch_88
    iget v5, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->offAdd:I

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->offAdd:I

    goto :goto_30

    .line 592
    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_7e
        :pswitch_88
    .end packed-switch
.end method

.method private tickCalibration(J)V
    .registers 6

    .prologue
    .line 382
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v0, :cond_5

    .line 394
    :cond_4
    :goto_4
    return-void

    .line 385
    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_19

    .line 387
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->acceptUnstable()V

    .line 389
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_4

    .line 390
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->getHrRest()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->setRestHr(I)V

    .line 391
    const-string v0, "calibrated"

    invoke-direct {p0, v0, p1, p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    goto :goto_4
.end method


# virtual methods
.method public csvHeader()Ljava/lang/String;
    .registers 2

    .prologue
    .line 807
    const-string v0, "t_ms,hr,slope,forecast,rest,upper,cap,hz,pw_us,on_s,off_s,strength,active_pause,s_factor,pw_factor,hz_factor,pause_factor,on_cut,off_add,zone,target,hold,action,kcal"

    return-object v0
.end method

.method public csvRow(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 812
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d,%.1f,%.3f,%.1f,%d,%d,%d,%d,%d,%d,%d,%d,%d,%.2f,%.2f,%.2f,%.2f,%d,%d,%d,%d,%d,%s,%.1f"

    const/16 v0, 0x18

    new-array v5, v0, [Ljava/lang/Object;

    .line 813
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v2

    const/4 v0, 0x2

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x4

    iget v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x7

    .line 814
    if-eqz p3, :cond_112

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->hz:I

    :goto_52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0x8

    if-eqz p3, :cond_115

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->pwUs:I

    :goto_5e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0x9

    if-eqz p3, :cond_118

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->onS:I

    :goto_6a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0xa

    if-eqz p3, :cond_11b

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->offS:I

    :goto_76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0xb

    .line 815
    if-eqz p3, :cond_11e

    iget v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->strength:I

    :goto_82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v6, 0xc

    if-eqz p3, :cond_121

    iget-boolean v0, p3, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->activePause:Z

    if-eqz v0, :cond_121

    move v0, v2

    :goto_91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/16 v0, 0xd

    .line 816
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getStrengthFactor()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0xe

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0xf

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x10

    iget-wide v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x11

    iget v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onCut:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x12

    iget v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->offAdd:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getZoneStart()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getTarget()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/16 v0, 0x15

    iget-boolean v6, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    if-eqz v6, :cond_124

    :goto_f3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const/16 v0, 0x16

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    aput-object v1, v5, v0

    const/16 v0, 0x17

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEnergy;->getKcal()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v5, v0

    .line 812
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_112
    move v0, v1

    .line 814
    goto/16 :goto_52

    :cond_115
    move v0, v1

    goto/16 :goto_5e

    :cond_118
    move v0, v1

    goto/16 :goto_6a

    :cond_11b
    move v0, v1

    goto/16 :goto_76

    :cond_11e
    move v0, v1

    .line 815
    goto/16 :goto_82

    :cond_121
    move v0, v1

    goto/16 :goto_91

    :cond_124
    move v2, v1

    .line 816
    goto :goto_f3
.end method

.method public getAutoUpper()I
    .registers 3

    .prologue
    .line 246
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->autoUpper(II)I

    move-result v0

    return v0
.end method

.method public getCalibLeftMs()J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 290
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v2, :cond_7

    :goto_6
    return-wide v0

    :cond_7
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_6
.end method

.method public getCalibProgress()D
    .registers 7

    .prologue
    .line 286
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiRestHr;->getMeasuredMs()J

    move-result-wide v2

    long-to-double v2, v2

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/AiRestHr;->getTargetMs()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_6
.end method

.method public getCap()I
    .registers 3

    .prologue
    .line 255
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getForecast()D
    .registers 3

    .prologue
    .line 791
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    return-wide v0
.end method

.method public getFreqFactor()D
    .registers 3

    .prologue
    .line 760
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    return-wide v0
.end method

.method public getHr()D
    .registers 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHrMax()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    return v0
.end method

.method public getKcal()D
    .registers 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->getKcal()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 795
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionMs()J
    .registers 3

    .prologue
    .line 799
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lastActionMs:J

    return-wide v0
.end method

.method public getOffAdd()I
    .registers 2

    .prologue
    .line 770
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->offAdd:I

    return v0
.end method

.method public getOnCut()I
    .registers 2

    .prologue
    .line 775
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onCut:I

    return v0
.end method

.method public getPauseFactor()D
    .registers 3

    .prologue
    .line 765
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    return-wide v0
.end method

.method public getRestHr()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    return v0
.end method

.method public getSlope()D
    .registers 3

    .prologue
    .line 787
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    return-wide v0
.end method

.method public getStrengthFactor()D
    .registers 3

    .prologue
    .line 752
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    goto :goto_6
.end method

.method public getTarget()I
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    return v0
.end method

.method public getUpper()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getAutoUpper()I

    move-result v0

    goto :goto_6
.end method

.method public getWidthFactor()D
    .registers 3

    .prologue
    .line 756
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    return-wide v0
.end method

.method public getZoneStart()I
    .registers 7

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v0

    .line 261
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->marginShare:D

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 262
    const/16 v2, 0xf

    const/16 v3, 0x1e

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public isCalibrating()Z
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isHold()Z
    .registers 2

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    return v0
.end method

.method public isManualUpper()Z
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onHr(JIZ)V
    .registers 14

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 300
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    if-eqz v0, :cond_f

    .line 301
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AiRestHr;->onSample(JI)V

    .line 303
    :cond_f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AiHrFilter;->onSample(JIZ)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 304
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    new-array v1, v1, [D

    long-to-double v2, p1

    div-double/2addr v2, v6

    aput-wide v2, v1, v8

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v4

    aput-wide v4, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 305
    :goto_2c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    aget-wide v0, v0, v8

    long-to-double v2, p1

    div-double/2addr v2, v6

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4d

    .line 306
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->recent:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_2c

    .line 309
    :cond_4d
    return-void
.end method

.method public onTrainerChange(Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;)V
    .registers 7

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    .line 625
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 643
    iput v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onCut:I

    .line 646
    :goto_c
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v1

    aput v4, v0, v1

    .line 647
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->steps:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 648
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 649
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    aget-wide v2, v0, v4

    double-to-int v0, v2

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_1a

    .line 650
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1a

    .line 627
    :pswitch_33
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 628
    iput-boolean v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    goto :goto_c

    .line 631
    :pswitch_38
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    goto :goto_c

    .line 634
    :pswitch_3b
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    goto :goto_c

    .line 637
    :pswitch_3e
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    goto :goto_c

    .line 640
    :pswitch_41
    iput v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->offAdd:I

    goto :goto_c

    .line 653
    :cond_44
    return-void

    .line 625
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_33
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
    .end packed-switch
.end method

.method public resetEnergy()V
    .registers 5

    .prologue
    .line 672
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->reset()V

    .line 673
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->peakCharge:[D

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 674
    return-void
.end method

.method public resetFactors()V
    .registers 5

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x0

    .line 656
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 657
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pwF:D

    .line 658
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hzF:D

    .line 659
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pauseF:D

    .line 660
    iput v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->offAdd:I

    .line 661
    iput v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->onCut:I

    .line 662
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->pendingLever:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    .line 664
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 665
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->steps:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    move v0, v1

    .line 666
    :goto_1e
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 667
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->noEffect:[I

    aput v1, v2, v0

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 669
    :cond_2a
    return-void
.end method

.method public setManualUpper(I)V
    .registers 3

    .prologue
    .line 157
    const/16 v0, 0x50

    if-lt p1, v0, :cond_b

    const/16 v0, 0xdc

    if-gt p1, v0, :cond_b

    :goto_8
    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->manualUpper:I

    .line 158
    return-void

    .line 157
    :cond_b
    const/4 p1, -0x1

    goto :goto_8
.end method

.method public setMaxStepPct(I)V
    .registers 4

    .prologue
    .line 161
    const/4 v0, 0x2

    const/16 v1, 0x14

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->maxStepPct:I

    .line 162
    return-void
.end method

.method public setPerson(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 5

    .prologue
    .line 175
    if-nez p1, :cond_22

    .line 176
    const/16 v0, 0xb4

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    .line 177
    new-instance v0, Lcom/isaigu/gymapp/ai/AiEnergy;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiEnergy;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 178
    const-wide v0, 0x3fc3333333333333L    # 0.15

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->marginShare:D

    .line 179
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lagS:D

    .line 187
    :goto_18
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 188
    return-void

    .line 181
    :cond_22
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    .line 182
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiEnergy;->forSession(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Lcom/isaigu/gymapp/ai/AiModel$Profile;)Lcom/isaigu/gymapp/ai/AiEnergy;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    .line 183
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    if-eqz v0, :cond_53

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    .line 184
    :goto_3e
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iget v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->personMargin(Lcom/isaigu/gymapp/ai/AiModel$Fitness;IZ)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->marginShare:D

    .line 185
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    iget v1, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->personLag(Lcom/isaigu/gymapp/ai/AiModel$Fitness;I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lagS:D

    goto :goto_18

    .line 183
    :cond_53
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public setRestHr(I)V
    .registers 5

    .prologue
    .line 165
    const/16 v0, 0x23

    if-lt p1, v0, :cond_14

    const/16 v0, 0x78

    if-gt p1, v0, :cond_14

    :goto_8
    iput p1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    .line 166
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrRest:I

    iget v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrMax:I

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiEnergy;->setHeart(II)V

    .line 167
    return-void

    .line 165
    :cond_14
    const/4 p1, -0x1

    goto :goto_8
.end method

.method public startCalibration(J)V
    .registers 6

    .prologue
    .line 277
    new-instance v0, Lcom/isaigu/gymapp/ai/AiRestHr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;-><init>(Z)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    .line 278
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calib:Lcom/isaigu/gymapp/ai/AiRestHr;

    invoke-virtual {v0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->tick(J)V

    .line 279
    return-void
.end method

.method public tick(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;Z)Z
    .registers 20

    .prologue
    .line 315
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->tickCalibration(J)V

    .line 316
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hrFresh(J)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->filter:Lcom/isaigu/gymapp/ai/AiHrFilter;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->getHrS()D

    move-result-wide v6

    .line 317
    :goto_f
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energy:Lcom/isaigu/gymapp/ai/AiEnergy;

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->energyStim(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)Lcom/isaigu/gymapp/ai/AiEnergy$Stim;

    move-result-object v8

    move-wide/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/isaigu/gymapp/ai/AiEnergy;->tick(JDLcom/isaigu/gymapp/ai/AiEnergy$Stim;)V

    .line 318
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->computeSlope()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    .line 319
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-lez v2, :cond_49

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lagS:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    :goto_34
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    .line 320
    if-eqz p3, :cond_40

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;->running:Z

    if-eqz v2, :cond_40

    if-nez p4, :cond_4c

    .line 321
    :cond_40
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 322
    const/4 v2, 0x0

    .line 378
    :goto_45
    return v2

    .line 316
    :cond_46
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_f

    .line 319
    :cond_49
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_34

    .line 324
    :cond_4c
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_58

    .line 325
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->runStartMs:J

    .line 327
    :cond_58
    const-wide/16 v2, 0x0

    cmpg-double v2, v6, v2

    if-gtz v2, :cond_60

    .line 328
    const/4 v2, 0x0

    goto :goto_45

    .line 330
    :cond_60
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->checkEffect(J)V

    .line 331
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getUpper()I

    move-result v2

    .line 332
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    if-eqz v3, :cond_b9

    .line 333
    add-int/lit8 v2, v2, -0xa

    int-to-double v2, v2

    cmpg-double v2, v6, v2

    if-gtz v2, :cond_b7

    .line 334
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 335
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    const-wide v4, 0x3fe6666666666666L    # 0.7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 336
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v6, v2

    cmpl-double v4, v4, v6

    if-lez v4, :cond_a4

    .line 337
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->steps:Ljava/util/ArrayDeque;

    const/4 v5, 0x2

    new-array v5, v5, [D

    const/4 v6, 0x0

    sget-object v7, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->STRENGTH:Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore$Lever;->ordinal()I

    move-result v7

    int-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    sub-double/2addr v8, v2

    aput-wide v8, v5, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 339
    :cond_a4
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    .line 340
    invoke-static/range {p3 .. p3}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->cycleMs(Lcom/isaigu/gymapp/wearable/HrGuardCore$Stim;)J

    move-result-wide v2

    add-long v2, v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    .line 341
    const-string v2, "resume"

    move-wide/from16 v0, p1

    invoke-direct {p0, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 342
    const/4 v2, 0x1

    goto :goto_45

    .line 344
    :cond_b7
    const/4 v2, 0x0

    goto :goto_45

    .line 346
    :cond_b9
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getCap()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v6, v2

    if-ltz v2, :cond_d3

    .line 347
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->hold:Z

    .line 348
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sF:D

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->sBeforeHold:D

    .line 349
    const-string v2, "cap"

    move-wide/from16 v0, p1

    invoke-direct {p0, v2, v0, v1}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->action(Ljava/lang/String;J)V

    .line 350
    const/4 v2, 0x1

    goto/16 :goto_45

    .line 352
    :cond_d3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getTarget()I

    move-result v3

    .line 353
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->getZoneStart()I

    move-result v4

    .line 354
    int-to-double v8, v4

    cmpl-double v2, v6, v8

    if-gez v2, :cond_e7

    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    int-to-double v10, v4

    cmpl-double v2, v8, v10

    if-ltz v2, :cond_138

    :cond_e7
    const/4 v2, 0x1

    .line 355
    :goto_e8
    if-eqz v2, :cond_13c

    iget-wide v8, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextActMs:J

    cmp-long v2, p1, v8

    if-ltz v2, :cond_13c

    .line 357
    const-wide/16 v8, 0x0

    int-to-double v10, v3

    sub-double/2addr v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const-wide/high16 v10, 0x4044000000000000L    # 40.0

    div-double/2addr v8, v10

    .line 358
    iget-wide v10, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    int-to-double v12, v3

    sub-double/2addr v10, v12

    .line 359
    int-to-double v4, v4

    cmpl-double v2, v6, v4

    if-ltz v2, :cond_13a

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    add-double/2addr v6, v8

    cmpl-double v2, v4, v6

    if-lez v2, :cond_13a

    const/4 v2, 0x1

    .line 360
    :goto_111
    const-wide/16 v4, 0x0

    cmpl-double v4, v10, v4

    if-gtz v4, :cond_119

    if-eqz v2, :cond_13c

    .line 361
    :cond_119
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 362
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    sub-double/2addr v2, v8

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->lagS:D

    mul-double/2addr v2, v4

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 363
    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-object v2, p0

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->stepDown(JLcom/isaigu/gymapp/wearable/HrGuardCore$Stim;D)Z

    move-result v2

    goto/16 :goto_45

    .line 354
    :cond_138
    const/4 v2, 0x0

    goto :goto_e8

    .line 359
    :cond_13a
    const/4 v2, 0x0

    goto :goto_111

    .line 366
    :cond_13c
    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->forecast:D

    add-int/lit8 v2, v3, -0x6

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gtz v2, :cond_15a

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->slope:D

    const-wide v4, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_15a

    const/4 v2, 0x1

    .line 367
    :goto_151
    if-nez v2, :cond_15c

    .line 368
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 369
    const/4 v2, 0x0

    goto/16 :goto_45

    .line 366
    :cond_15a
    const/4 v2, 0x0

    goto :goto_151

    .line 371
    :cond_15c
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_168

    .line 372
    move-wide/from16 v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    .line 374
    :cond_168
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->calmSinceMs:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-ltz v2, :cond_184

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextRestoreMs:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_184

    .line 375
    const-wide/16 v2, 0x2710

    add-long v2, v2, p1

    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/HrGuardCore;->nextRestoreMs:J

    .line 376
    invoke-direct/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/HrGuardCore;->stepUp(J)Z

    move-result v2

    goto/16 :goto_45

    .line 378
    :cond_184
    const/4 v2, 0x0

    goto/16 :goto_45
.end method
