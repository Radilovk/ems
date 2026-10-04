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

.field static final LIGHT_VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final POWER_BURST:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final POWER_HOLD:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final POWER_SHORT:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final PURE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

.field static final SECTORS:[[I

.field static final SECTOR_BG:[Ljava/lang/String;

.field static final SECTOR_EN:[Ljava/lang/String;

.field public static final SECTOR_FROM_S:I = 0xf0

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

    .line 239
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_134

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_142

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_150

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_15e

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTORS:[[I

    .line 245
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

    .line 246
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

    .line 239
    nop

    :array_134
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_142
    .array-data 4
        0x2
        0x4
        0x1
        0x0
        0x0
    .end array-data

    :array_150
    .array-data 4
        0x8
        0x6
        0x2
        0x3
        0x32
    .end array-data

    :array_15e
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
    .line 206
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    .line 207
    if-eqz p1, :cond_4d

    .line 208
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

    .line 209
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->on:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 210
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->off:I

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 211
    if-eqz p4, :cond_88

    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseHz:I

    :goto_25
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 212
    if-eqz p4, :cond_8a

    iget-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseSigma:D

    :goto_2b
    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 213
    iget v0, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseHz:I

    if-lez v0, :cond_4d

    if-eqz p4, :cond_4d

    const-wide v0, 0x3fe6666666666666L    # 0.7

    cmpl-double v0, p2, v0

    if-lez v0, :cond_4d

    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_4d

    .line 214
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 215
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 218
    :cond_4d
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 219
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    add-int/2addr v0, v1

    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 220
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

    .line 222
    :cond_87
    return-object v2

    .line 211
    :cond_88
    const/4 v0, 0x0

    goto :goto_25

    .line 212
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

    .line 78
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

    .line 79
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

    .line 80
    :cond_3f
    const/4 v0, 0x0

    .line 95
    :goto_40
    return-object v0

    .line 82
    :cond_41
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v3

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-ge v0, v6, :cond_71

    move v0, v1

    .line 85
    :goto_5c
    const-string v5, "power"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 86
    new-array v0, v6, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->POWER_SHORT:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->POWER_HOLD:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v7

    goto :goto_40

    :cond_71
    move v0, v2

    .line 84
    goto :goto_5c

    .line 88
    :cond_73
    const-string v5, "back_active"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    const-string v5, "senior"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    const-string v5, "postpartum"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    const-string v5, "back_pain"

    .line 89
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 90
    :cond_93
    new-array v0, v6, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->LIGHT_VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v7

    goto :goto_40

    .line 92
    :cond_a0
    if-eqz v0, :cond_b3

    .line 93
    new-array v0, v8, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v7

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    goto :goto_40

    .line 95
    :cond_b3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v3, v0, v2

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->STRENGTH_PAUSE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->PURE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v7

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v0, v1

    goto/16 :goto_40
.end method

.method static baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;
    .registers 14

    .prologue
    const/16 v4, 0x32

    .line 122
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

    .line 123
    :goto_18
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    const/16 v1, 0x5f

    if-lt v0, v1, :cond_38

    const/4 v12, 0x3

    .line 124
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

    .line 122
    :cond_35
    iget v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    goto :goto_18

    .line 123
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

.method public static forMap(Lcom/isaigu/gymapp/ai/AutoModel$Step;II)[Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;
    .registers 11

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 104
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->isTetanic()Z

    move-result v0

    if-nez v0, :cond_f

    .line 105
    :cond_d
    const/4 v0, 0x0

    .line 117
    :goto_e
    return-object v0

    .line 107
    :cond_f
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoDynamics;->baseOf(Lcom/isaigu/gymapp/ai/AutoModel$Step;)Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    move-result-object v1

    .line 108
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_26

    .line 109
    new-array v0, v3, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v4

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v5

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    goto :goto_e

    .line 111
    :cond_26
    const/16 v0, 0x3c

    if-lt p2, v0, :cond_37

    .line 112
    new-array v0, v3, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v4

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->LIGHT_VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v5

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    goto :goto_e

    .line 114
    :cond_37
    if-ge p1, v3, :cond_4a

    .line 115
    new-array v0, v7, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v4

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v5

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v3

    goto :goto_e

    .line 117
    :cond_4a
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v4

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->STRENGTH_PAUSE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v5

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->PURE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v6

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->VOLUME:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v3

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->METABOLIC:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoDynamics;->TONE:Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;

    aput-object v2, v0, v1

    goto :goto_e
.end method

.method public static glide(D)D
    .registers 10

    .prologue
    .line 198
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

.method public static pick([Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;)I
    .registers 16

    .prologue
    .line 152
    const/4 v4, 0x0

    .line 153
    const-wide v2, -0x3e32329b00000000L    # -1.0E9

    .line 154
    array-length v6, p0

    .line 155
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v6, :cond_c8

    .line 156
    aget-object v7, p0, v5

    .line 157
    const-wide/16 v0, 0x0

    .line 159
    iget v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->sessions:I

    sub-int v8, v5, v8

    iget v9, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->set:I

    sub-int/2addr v8, v9

    rem-int/2addr v8, v6

    add-int/2addr v8, v6

    rem-int/2addr v8, v6

    .line 160
    const-wide v10, 0x3fd6666666666666L    # 0.35

    int-to-double v8, v8

    mul-double/2addr v8, v10

    int-to-double v10, v6

    div-double/2addr v8, v10

    sub-double/2addr v0, v8

    .line 162
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

    .line 164
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

    .line 166
    iget-object v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    if-eqz v8, :cond_63

    iget-object v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    array-length v8, v8

    if-ge v5, v8, :cond_63

    .line 167
    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    iget-object v10, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->used:[I

    aget v10, v10, v5

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double/2addr v0, v8

    .line 170
    :cond_63
    iget-boolean v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrHigh:Z

    if-eqz v8, :cond_71

    .line 171
    const-wide v8, 0x3ff3333333333333L    # 1.2

    iget v10, v7, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->cls:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double/2addr v0, v8

    .line 173
    :cond_71
    iget-boolean v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->hrLow:Z

    if-eqz v8, :cond_7f

    iget v8, v7, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->pauseHz:I

    if-lez v8, :cond_7f

    .line 174
    const-wide v8, 0x3fe999999999999aL    # 0.8

    add-double/2addr v0, v8

    .line 177
    :cond_7f
    iget-wide v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->dose:D

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    cmpg-double v8, v8, v10

    if-gez v8, :cond_a9

    iget v8, v7, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->cls:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_a9

    .line 178
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v8

    .line 183
    :cond_92
    :goto_92
    iget v7, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev:I

    if-ne v5, v7, :cond_bd

    .line 184
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v8

    .line 188
    :cond_99
    :goto_99
    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr v8, v2

    cmpl-double v7, v0, v8

    if-lez v7, :cond_c9

    move v4, v5

    .line 155
    :goto_a4
    add-int/lit8 v5, v5, 0x1

    move-wide v2, v0

    goto/16 :goto_8

    .line 179
    :cond_a9
    iget-wide v8, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->dose:D

    const-wide v10, 0x3ff199999999999aL    # 1.1

    cmpl-double v8, v8, v10

    if-lez v8, :cond_92

    iget v7, v7, Lcom/isaigu/gymapp/ai/AutoDynamics$Approach;->cls:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_92

    .line 180
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v8

    goto :goto_92

    .line 185
    :cond_bd
    iget v7, p1, Lcom/isaigu/gymapp/ai/AutoDynamics$Ctx;->prev2:I

    if-ne v5, v7, :cond_99

    .line 186
    const-wide v8, 0x3fe6666666666666L    # 0.7

    sub-double/2addr v0, v8

    goto :goto_99

    .line 193
    :cond_c8
    return v4

    :cond_c9
    move-wide v0, v2

    goto :goto_a4
.end method

.method public static ramp(IIIZ)I
    .registers 6

    .prologue
    .line 227
    .line 228
    if-eqz p3, :cond_9

    .line 229
    const/16 v0, 0x320

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 233
    :cond_8
    :goto_8
    return p0

    .line 230
    :cond_9
    if-lez p1, :cond_8

    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    .line 231
    const/16 v0, 0x258

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_8
.end method

.method public static sector(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;DI)I
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 252
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

    .line 253
    :cond_1a
    const/4 v0, -0x1

    .line 262
    :cond_1b
    :goto_1b
    return v0

    .line 255
    :cond_1c
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTORS:[[I

    array-length v1, v1

    .line 256
    const/16 v2, 0x3c

    div-int v3, p4, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 257
    add-int/lit8 v3, v1, -0x1

    int-to-double v4, v2

    div-double v4, p2, v4

    double-to-int v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 258
    if-eqz v2, :cond_1b

    .line 261
    if-eqz p0, :cond_3d

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v3, :cond_3d

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 262
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
    .line 284
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

    .line 267
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    .line 268
    if-lez p1, :cond_e

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTORS:[[I

    array-length v1, v1

    if-lt p1, v1, :cond_10

    :cond_e
    move-object v0, v2

    .line 280
    :goto_f
    return-object v0

    .line 271
    :cond_10
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoDynamics;->SECTORS:[[I

    aget-object v1, v1, p1

    .line 272
    iget v3, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    if-gt v3, v5, :cond_1e

    aget v3, v1, v0

    if-le v3, v6, :cond_1e

    move-object v0, v2

    .line 273
    goto :goto_f

    .line 275
    :cond_1e
    aget v3, v1, v0

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    .line 276
    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    .line 277
    const/4 v3, 0x2

    aget v3, v1, v3

    iput v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    .line 278
    if-eqz p2, :cond_36

    aget v3, v1, v5

    aget v4, v1, v0

    if-ge v3, v4, :cond_36

    aget v0, v1, v5

    :cond_36
    iput v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 279
    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    if-lez v0, :cond_46

    aget v0, v1, v6

    int-to-double v0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    :goto_42
    iput-wide v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    move-object v0, v2

    .line 280
    goto :goto_f

    .line 279
    :cond_46
    const-wide/16 v0, 0x0

    goto :goto_42
.end method
