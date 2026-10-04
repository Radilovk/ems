.class public final Lcom/isaigu/gymapp/ai/AutoDynamics;
.super Ljava/lang/Object;
.source "AutoDynamics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;,
        Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;
    }
.end annotation


# static fields
.field static final BASE:Ljava/lang/String; = "base"

.field public static final CARDIO:Ljava/lang/String; = "cardio"

.field public static final GENTLE:Ljava/lang/String; = "gentle"

.field static final LIGHT_VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field public static final MOVE_CARDIO:I = 0x3

.field public static final MOVE_HOLD:I = 0x2

.field public static final MOVE_SMALL:I = 0x1

.field public static final MOVE_STRENGTH:I = 0x0

.field public static final MOVE_STRETCH:I = 0x4

.field public static final MOVE_UNKNOWN:I = 0x5

.field public static final POWER:Ljava/lang/String; = "power"

.field static final POWER_BURST:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final POWER_HOLD:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final POWER_SHORT:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final PURE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final SECTORS:[[I

.field static final SECTOR_BG:[Ljava/lang/String;

.field static final SECTOR_EN:[Ljava/lang/String;

.field public static final SECTOR_FROM_S:I = 0xf0

.field public static final STRENGTH:Ljava/lang/String; = "strength"

.field static final STRENGTH_PATS:[Ljava/lang/String;

.field public static final STRENGTH_PAUSE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    .line 63
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const-string v2, "strength_pause"

    const-string v3, "\u0421\u0438\u043b\u0430 + \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v4, "Strength + active rest"

    const/16 v5, 0x64

    const/16 v6, 0x46

    const/4 v7, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x7

    const-wide v10, 0x3fd999999999999aL    # 0.4

    const/4 v12, 0x3

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->STRENGTH_PAUSE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 65
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const-string v2, "pure"

    const-string v3, "\u0427\u0438\u0441\u0442\u0430 \u0441\u0438\u043b\u0430"

    const-string v4, "Pure strength"

    const/16 v5, 0x64

    const/16 v6, 0x50

    const/4 v7, 0x3

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x3

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->PURE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 66
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const-string v2, "volume"

    const-string v3, "\u041e\u0431\u0435\u043c"

    const-string v4, "Volume"

    const/16 v5, 0x55

    const/16 v6, 0x3c

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 67
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const-string v2, "metabolic"

    const-string v3, "\u041c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v4, "Metabolic"

    const/16 v5, 0x32

    const/16 v6, 0x23

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x6

    const-wide v10, 0x3fdccccccccccccdL    # 0.45

    const/4 v12, 0x1

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 68
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const-string v2, "tone"

    const-string v3, "\u0418\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432 \u0442\u043e\u043d\u0443\u0441"

    const-string v4, "Endurance tone"

    const/16 v5, 0x14

    const/16 v6, 0x14

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 69
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const-string v2, "burst"

    const-string v3, "\u0412\u0437\u0440\u0438\u0432"

    const-string v4, "Burst"

    const/16 v5, 0x64

    const/16 v6, 0x55

    const/4 v7, 0x3

    const/16 v8, 0x9

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x3

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->POWER_BURST:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 70
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const-string v2, "burst_short"

    const-string v3, "\u041a\u044a\u0441 \u0432\u0437\u0440\u0438\u0432"

    const-string v4, "Short burst"

    const/16 v5, 0x64

    const/16 v6, 0x50

    const/4 v7, 0x2

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x3

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->POWER_SHORT:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 71
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const-string v2, "power_hold"

    const-string v3, "\u0421\u0438\u043b\u0430 \u0432 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0435"

    const-string v4, "Strength hold"

    const/16 v5, 0x55

    const/16 v6, 0x46

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->POWER_HOLD:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 73
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const-string v2, "light_volume"

    const-string v3, "\u041b\u0435\u043a \u043e\u0431\u0435\u043c"

    const-string v4, "Light volume"

    const/16 v5, 0x46

    const/16 v6, 0x37

    const/4 v7, 0x5

    const/4 v8, 0x5

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->LIGHT_VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 223
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "squat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lunge"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hinge"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "glute"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "push_h"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "push_v"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pull_h"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pull_v"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dip"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "olympic"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoDynamics;->STRENGTH_PATS:[Ljava/lang/String;

    .line 384
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_16e

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_17c

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_18a

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_198

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTORS:[[I

    .line 390
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u041c\u0430\u0441\u0430\u0436"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u041f\u043e\u043c\u043f\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0422\u043e\u043d\u0443\u0441-\u043c\u0430\u0441\u0430\u0436"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0414\u0440\u0435\u043d\u0430\u0436"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTOR_BG:[Ljava/lang/String;

    .line 391
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Massage"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Pump"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Tone massage"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Drainage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTOR_EN:[Ljava/lang/String;

    return-void

    .line 384
    nop

    :array_16e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_17c
    .array-data 4
        0x2
        0x4
        0x1
        0x0
        0x0
    .end array-data

    :array_18a
    .array-data 4
        0x8
        0x6
        0x2
        0x3
        0x32
    .end array-data

    :array_198
    .array-data 4
        0x1
        0xa
        0x1
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lcom/isaigu/gymapp/ai/AutoModel$Step;Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;DZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 19

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    .line 352
    if-eqz p1, :cond_4d

    .line 353
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->hz:I

    int-to-double v0, v0

    iget v3, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->hz:I

    iget v4, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->floor:I

    sub-int/2addr v3, v4

    int-to-double v4, v3

    mul-double v4, v4, p2

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 354
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->on:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 355
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->off:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 356
    if-eqz p4, :cond_88

    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseHz:I

    :goto_25
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 357
    if-eqz p4, :cond_8a

    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseSigma:D

    :goto_2b
    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 358
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseHz:I

    if-lez v0, :cond_4d

    if-eqz p4, :cond_4d

    const-wide v0, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, p2, v0

    if-lez v0, :cond_4d

    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_4d

    .line 359
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 360
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 363
    :cond_4d
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 364
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    add-int/2addr v0, v1

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 365
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3fe3333333333333L    # 0.6

    sub-double v10, p2, v10

    const-wide v12, 0x3fd999999999999aL    # 0.4

    div-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    add-int/2addr v0, v1

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    .line 367
    :cond_87
    return-object v2

    .line 356
    :cond_88
    const/4 v0, 0x0

    goto :goto_25

    .line 357
    :cond_8a
    const-wide/16 v0, 0x0

    goto :goto_2b
.end method

.method public static approaches(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;
    .registers 11

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 87
    if-eqz p0, :cond_3f

    if-eqz p1, :cond_3f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v0, :cond_3f

    .line 88
    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "WARMUP"

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3f

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v0

    if-nez v0, :cond_41

    .line 89
    :cond_3f
    const/4 v0, 0x0

    .line 104
    :goto_40
    return-object v0

    .line 91
    :cond_41
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v4

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->impulseClass(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Ljava/lang/String;

    move-result-object v5

    .line 93
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-lt v0, v6, :cond_65

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v3, 0x3c

    if-lt v0, v3, :cond_8a

    :cond_65
    move v0, v1

    .line 95
    :goto_66
    const-string v3, "power"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 96
    new-array v3, v6, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v4, v3, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->POWER_SHORT:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v3, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->POWER_HOLD:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v3, v7

    move-object v1, v3

    .line 104
    :goto_7b
    if-eqz v0, :cond_d8

    const-string v0, "power"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d8

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->without100([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v0

    goto :goto_40

    :cond_8a
    move v0, v2

    .line 93
    goto :goto_66

    .line 97
    :cond_8c
    const-string v3, "strength"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 98
    const/4 v3, 0x6

    new-array v3, v3, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v4, v3, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->STRENGTH_PAUSE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v3, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->PURE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v3, v7

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v3, v6

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v3, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v3, v1

    move-object v1, v3

    goto :goto_7b

    .line 99
    :cond_b0
    const-string v3, "cardio"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 100
    new-array v3, v8, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v4, v3, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v3, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v3, v7

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v3, v6

    move-object v1, v3

    goto :goto_7b

    .line 102
    :cond_ca
    new-array v3, v6, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v4, v3, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->LIGHT_VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v3, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v3, v7

    move-object v1, v3

    goto :goto_7b

    :cond_d8
    move-object v0, v1

    .line 104
    goto/16 :goto_40
.end method

.method static baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;
    .registers 14

    .prologue
    const/16 v4, 0x32

    .line 267
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    if-lt v0, v4, :cond_35

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 268
    :goto_18
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_38

    const/4 v12, 0x3

    .line 269
    :goto_1f
    new-instance v1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    const-string v2, "base"

    const-string v3, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430"

    const-string v4, "The program"

    iget v5, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    iget v7, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    iget v8, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    iget v9, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    iget-wide v10, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    invoke-direct/range {v1 .. v12}, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIDI)V

    return-object v1

    .line 267
    :cond_35
    iget v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    goto :goto_18

    .line 268
    :cond_38
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    const/16 v1, 0x46

    if-lt v0, v1, :cond_40

    const/4 v12, 0x2

    goto :goto_1f

    :cond_40
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_48

    const/4 v12, 0x1

    goto :goto_1f

    :cond_48
    const/4 v12, 0x0

    goto :goto_1f
.end method

.method public static forMap(Lcom/isaigu/gymapp/ai/AutoModel$Step;III)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;
    .registers 12

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x1

    .line 243
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v0

    if-eqz v0, :cond_f

    if-ne p1, v7, :cond_11

    .line 244
    :cond_f
    const/4 v0, 0x0

    .line 262
    :cond_10
    :goto_10
    return-object v0

    .line 246
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v3

    .line 248
    if-eqz p1, :cond_22

    if-eq p1, v2, :cond_22

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3c

    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    const/16 v4, 0x32

    if-lt v0, v4, :cond_3c

    :cond_22
    move v0, v2

    .line 249
    :goto_23
    const/16 v4, 0x3c

    if-lt p3, v4, :cond_3e

    if-eqz v0, :cond_3e

    .line 250
    new-array v0, v5, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->LIGHT_VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    .line 262
    :goto_35
    if-ge p2, v5, :cond_10

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->without100([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v0

    goto :goto_10

    :cond_3c
    move v0, v1

    .line 248
    goto :goto_23

    .line 251
    :cond_3e
    if-ne p1, v5, :cond_4d

    .line 252
    new-array v0, v5, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    goto :goto_35

    .line 253
    :cond_4d
    if-ne p1, v6, :cond_5c

    .line 254
    new-array v0, v5, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->LIGHT_VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    goto :goto_35

    .line 255
    :cond_5c
    if-ne p1, v2, :cond_74

    .line 256
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->STRENGTH_PAUSE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v5

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v7

    goto :goto_35

    .line 257
    :cond_74
    if-nez p1, :cond_91

    .line 258
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->STRENGTH_PAUSE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->PURE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v5

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v0, v1

    goto :goto_35

    .line 260
    :cond_91
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    const/16 v4, 0x32

    if-ge v0, v4, :cond_a4

    new-array v0, v5, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    goto :goto_35

    :cond_a4
    new-array v0, v7, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v5

    goto :goto_35
.end method

.method public static glide(D)D
    .registers 10

    .prologue
    .line 343
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    sub-double v4, p0, v4

    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static impulseClass(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 109
    if-eqz p0, :cond_1d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 110
    :goto_4
    const-string v1, "strength"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "power"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "cardio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1c
    :goto_1c
    return-object v0

    .line 109
    :cond_1d
    const/4 v0, 0x0

    goto :goto_4

    .line 110
    :cond_1f
    const-string v0, "gentle"

    goto :goto_1c
.end method

.method public static isHold(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 208
    const-string v1, "duration"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 212
    :cond_9
    :goto_9
    return v0

    .line 211
    :cond_a
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->move(Ljava/lang/String;Z)I

    move-result v1

    .line 212
    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isSmall(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 228
    const-string v0, "biceps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "triceps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "lat_raise"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "rear_delt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "front_raise"

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "fly"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "shrug"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "forearm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "calf"

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "abductor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "adductor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "knee_flex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "knee_ext"

    .line 231
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "pullover"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "core_flex"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "core_rot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "core_hip"

    .line 232
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "back_ext"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    :cond_90
    const/4 v0, 0x1

    .line 228
    :goto_91
    return v0

    .line 232
    :cond_92
    const/4 v0, 0x0

    goto :goto_91
.end method

.method public static move(Ljava/lang/String;Z)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 138
    if-eqz p0, :cond_17

    .line 139
    :goto_3
    if-nez p1, :cond_15

    const-string v1, "core_static"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "carry"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 140
    :cond_15
    const/4 v0, 0x2

    .line 156
    :cond_16
    :goto_16
    return v0

    .line 138
    :cond_17
    const-string p0, ""

    goto :goto_3

    .line 142
    :cond_1a
    const-string v1, "cardio"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "plyo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 143
    :cond_2a
    const/4 v0, 0x3

    goto :goto_16

    .line 145
    :cond_2c
    const-string v1, "stretch"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "mobility"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 146
    :cond_3c
    const/4 v0, 0x4

    goto :goto_16

    .line 148
    :cond_3e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->isSmall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 149
    const/4 v0, 0x1

    goto :goto_16

    .line 151
    :cond_46
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->STRENGTH_PATS:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_4a
    if-ge v1, v3, :cond_57

    aget-object v4, v2, v1

    .line 152
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 156
    :cond_57
    const/4 v0, 0x5

    goto :goto_16
.end method

.method public static move(Ljava/lang/String;ZLjava/lang/String;)I
    .registers 5

    .prologue
    .line 218
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AutoDynamics;->patIn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->move(Ljava/lang/String;Z)I

    move-result v0

    .line 219
    if-eqz p1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    const/4 v0, 0x2

    :cond_12
    return v0
.end method

.method public static patIn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 166
    if-eqz p0, :cond_1f

    move-object v0, p0

    .line 167
    :goto_3
    if-eqz p1, :cond_22

    .line 168
    :goto_5
    const-string v1, "cardio"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 169
    const-string v1, "cardio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "plyo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_1d
    :goto_1d
    move-object p0, v0

    .line 202
    :cond_1e
    :goto_1e
    return-object p0

    .line 166
    :cond_1f
    const-string v0, ""

    goto :goto_3

    .line 167
    :cond_22
    const-string p1, ""

    goto :goto_5

    .line 169
    :cond_25
    const-string v0, "cardio"

    goto :goto_1d

    .line 171
    :cond_28
    const-string v1, "stretch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 172
    const-string p0, "stretch"

    goto :goto_1e

    .line 174
    :cond_33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "functional"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 177
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoDynamics;->move(Ljava/lang/String;Z)I

    move-result v0

    .line 178
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    .line 181
    :cond_4f
    const-string v0, "legs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 182
    const-string p0, "squat"

    goto :goto_1e

    .line 184
    :cond_5a
    const-string v0, "glutes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 185
    const-string p0, "glute"

    goto :goto_1e

    .line 187
    :cond_65
    const-string v0, "back"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 188
    const-string p0, "pull_h"

    goto :goto_1e

    .line 190
    :cond_70
    const-string v0, "chest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 191
    const-string p0, "push_h"

    goto :goto_1e

    .line 193
    :cond_7b
    const-string v0, "arms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 194
    const-string p0, "biceps"

    goto :goto_1e

    .line 196
    :cond_86
    const-string v0, "shoulders"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 197
    const-string p0, "lat_raise"

    goto :goto_1e

    .line 199
    :cond_91
    const-string v0, "abs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 200
    const-string p0, "core_flex"

    goto :goto_1e
.end method

.method public static pick([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;)I
    .registers 16

    .prologue
    .line 297
    const/4 v4, 0x0

    .line 298
    const-wide v2, -0x3e32329b00000000L    # -1.0E9

    .line 299
    array-length v6, p0

    .line 300
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v6, :cond_c8

    .line 301
    aget-object v7, p0, v5

    .line 302
    const-wide/16 v0, 0x0

    .line 304
    iget v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->sessions:I

    sub-int v8, v5, v8

    iget v9, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->set:I

    sub-int/2addr v8, v9

    rem-int/2addr v8, v6

    add-int/2addr v8, v6

    rem-int/2addr v8, v6

    .line 305
    const-wide v10, 0x3fd6666666666666L    # 0.35

    int-to-double v8, v8

    mul-double/2addr v8, v10

    int-to-double v10, v6

    div-double/2addr v8, v10

    sub-double/2addr v0, v8

    .line 307
    iget v8, v7, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->cls:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v8, v10

    iget-wide v10, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->fresh:D

    const-wide v12, 0x3fe3333333333333L    # 0.6

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    .line 309
    iget v8, v7, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->cls:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v8, v10

    const-wide v10, 0x3fdccccccccccccdL    # 0.45

    iget-wide v12, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->progress:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    .line 311
    iget-object v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    if-eqz v8, :cond_63

    iget-object v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    array-length v8, v8

    if-ge v5, v8, :cond_63

    .line 312
    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    iget-object v10, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    aget v10, v10, v5

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double/2addr v0, v8

    .line 315
    :cond_63
    iget-boolean v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrHigh:Z

    if-eqz v8, :cond_71

    .line 316
    const-wide v8, 0x3ff3333333333333L    # 1.2

    iget v10, v7, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->cls:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double/2addr v0, v8

    .line 318
    :cond_71
    iget-boolean v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrLow:Z

    if-eqz v8, :cond_7f

    iget v8, v7, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseHz:I

    if-lez v8, :cond_7f

    .line 319
    const-wide v8, 0x3fe999999999999aL    # 0.8

    add-double/2addr v0, v8

    .line 322
    :cond_7f
    iget-wide v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->dose:D

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    cmpg-double v8, v8, v10

    if-gez v8, :cond_a9

    iget v8, v7, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->cls:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_a9

    .line 323
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v8

    .line 328
    :cond_92
    :goto_92
    iget v7, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev:I

    if-ne v5, v7, :cond_bd

    .line 329
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v8

    .line 333
    :cond_99
    :goto_99
    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v8, v2

    cmpl-double v7, v0, v8

    if-lez v7, :cond_c9

    move v4, v5

    .line 300
    :goto_a4
    add-int/lit8 v5, v5, 0x1

    move-wide v2, v0

    goto/16 :goto_8

    .line 324
    :cond_a9
    iget-wide v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->dose:D

    const-wide v10, 0x3ff199999999999aL    # 1.1

    cmpl-double v8, v8, v10

    if-lez v8, :cond_92

    iget v7, v7, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->cls:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_92

    .line 325
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v8

    goto :goto_92

    .line 330
    :cond_bd
    iget v7, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev2:I

    if-ne v5, v7, :cond_99

    .line 331
    const-wide v8, 0x3fe6666666666666L    # 0.7

    sub-double/2addr v0, v8

    goto :goto_99

    .line 338
    :cond_c8
    return v4

    :cond_c9
    move-wide v0, v2

    goto :goto_a4
.end method

.method public static ramp(IIIZ)I
    .registers 6

    .prologue
    .line 372
    .line 373
    if-eqz p3, :cond_9

    .line 374
    const/16 v0, 0x320

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 378
    :cond_8
    :goto_8
    return p0

    .line 375
    :cond_9
    if-lez p1, :cond_8

    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    .line 376
    const/16 v0, 0x258

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_8
.end method

.method public static sector(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;DI)I
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 397
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    if-nez v1, :cond_1a

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    const/16 v1, 0xf0

    if-ge p4, v1, :cond_1c

    .line 398
    :cond_1a
    const/4 v0, -0x1

    .line 407
    :cond_1b
    :goto_1b
    return v0

    .line 400
    :cond_1c
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTORS:[[I

    array-length v1, v1

    .line 401
    const/16 v2, 0x3c

    div-int v3, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 402
    add-int/lit8 v3, v1, -0x1

    int-to-double v4, v2

    div-double v4, p2, v4

    double-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 403
    if-eqz v2, :cond_1b

    .line 406
    if-eqz p0, :cond_3d

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v3, :cond_3d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 407
    :cond_3d
    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public static sectorName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 429
    if-ltz p0, :cond_14

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTORS:[[I

    array-length v0, v0

    if-ge p0, v0, :cond_14

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTOR_BG:[Ljava/lang/String;

    aget-object v0, v0, p0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTOR_EN:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    const-string v0, ""

    goto :goto_13
.end method

.method public static sectorStep(Lcom/isaigu/gymapp/ai/AutoModel$Step;IZ)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 10

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    .line 413
    if-lez p1, :cond_e

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTORS:[[I

    array-length v1, v1

    if-lt p1, v1, :cond_10

    :cond_e
    move-object v0, v2

    .line 425
    :goto_f
    return-object v0

    .line 416
    :cond_10
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTORS:[[I

    aget-object v1, v1, p1

    .line 417
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    if-gt v3, v5, :cond_1e

    aget v3, v1, v0

    if-le v3, v6, :cond_1e

    move-object v0, v2

    .line 418
    goto :goto_f

    .line 420
    :cond_1e
    aget v3, v1, v0

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 421
    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 422
    const/4 v3, 0x2

    aget v3, v1, v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 423
    if-eqz p2, :cond_36

    aget v3, v1, v5

    aget v4, v1, v0

    if-ge v3, v4, :cond_36

    aget v0, v1, v5

    :cond_36
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 424
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v0, :cond_46

    aget v0, v1, v6

    int-to-double v0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    :goto_42
    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    move-object v0, v2

    .line 425
    goto :goto_f

    .line 424
    :cond_46
    const-wide/16 v0, 0x0

    goto :goto_42
.end method

.method static without100([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;
    .registers 9

    .prologue
    const/16 v7, 0x5f

    const/4 v1, 0x0

    .line 115
    .line 116
    array-length v3, p0

    move v2, v1

    move v0, v1

    :goto_6
    if-ge v2, v3, :cond_1d

    aget-object v4, p0, v2

    .line 117
    iget v5, v4, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->hz:I

    if-lt v5, v7, :cond_18

    const-string v5, "base"

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->id:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 118
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 116
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 121
    :cond_1d
    new-array v3, v0, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    .line 123
    array-length v4, p0

    move v2, v1

    move v0, v1

    :goto_22
    if-ge v2, v4, :cond_3d

    aget-object v5, p0, v2

    .line 124
    iget v1, v5, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->hz:I

    if-lt v1, v7, :cond_34

    const-string v1, "base"

    iget-object v6, v5, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->id:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 125
    :cond_34
    add-int/lit8 v1, v0, 0x1

    aput-object v5, v3, v0

    move v0, v1

    .line 123
    :cond_39
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_22

    .line 128
    :cond_3d
    return-object v3
.end method
