.class public final Lcom/isaigu/gymapp/train/utils/PartStrength;
.super Ljava/lang/Object;
.source "PartStrength.java"


# static fields
.field static final BOTH:I = 0x3

.field static final MAIN:I = 0x1

.field static final MAX_RAISE:I = 0x14

.field static final SECOND:I = 0x2

.field private static final SECOND_PARTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/isaigu/gymapp/bean/ProgramDataBean;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/PartStrength;->SECOND_PARTS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 9

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 48
    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 49
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v3

    .line 50
    if-nez v3, :cond_e

    .line 63
    :goto_d
    return v0

    .line 53
    :cond_e
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    .line 54
    if-eq v4, v1, :cond_16

    if-ne v4, v6, :cond_1a

    .line 55
    :cond_16
    const/4 v5, 0x0

    invoke-static {v2, v3, p1, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeMain(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIZ)V

    .line 57
    :cond_1a
    const/4 v5, 0x2

    if-eq v4, v5, :cond_1f

    if-ne v4, v6, :cond_23

    .line 58
    :cond_1f
    const/4 v4, 0x0

    invoke-static {p0, v2, v3, p1, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIZ)V

    .line 60
    :cond_23
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_28} :catch_2a

    move v0, v1

    .line 61
    goto :goto_d

    .line 62
    :catch_2a
    move-exception v1

    goto :goto_d
.end method

.method static apply([II[ZIZZ)I
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 186
    array-length v0, p0

    new-array v6, v0, [I

    move v0, v1

    move v2, v1

    .line 188
    :goto_6
    array-length v3, p0

    if-ge v0, v3, :cond_2c

    .line 189
    aget v3, p0, v0

    invoke-static {v3, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    .line 190
    aget-boolean v4, p2, v0

    if-eqz v4, :cond_1a

    if-eqz p4, :cond_29

    int-to-long v4, p3

    :goto_16
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    :cond_1a
    aput v3, v6, v0

    .line 191
    aget-boolean v3, p2, v0

    if-eqz v3, :cond_26

    .line 192
    aget v3, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 188
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 190
    :cond_29
    add-int/2addr v3, p3

    int-to-long v4, v3

    goto :goto_16

    .line 196
    :cond_2c
    if-le v2, p1, :cond_55

    if-eqz p5, :cond_55

    .line 197
    const/16 v0, 0x64

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v6, p2, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->raisedStrength([I[ZI)I

    move-result v0

    .line 199
    :goto_3a
    array-length v2, p0

    if-ge v1, v2, :cond_54

    .line 200
    aget-boolean v2, p2, v1

    if-nez v2, :cond_43

    if-eq v0, p1, :cond_51

    .line 201
    :cond_43
    aget v2, v6, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v3, p0, v1

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v2

    aput v2, p0, v1

    .line 199
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 204
    :cond_54
    return v0

    :cond_55
    move v0, p1

    goto :goto_3a
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 277
    if-nez p0, :cond_4

    .line 281
    :cond_3
    :goto_3
    return-object v0

    .line 280
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_3
.end method

.method static changeMain(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIZ)V
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 157
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_8

    .line 158
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondParts(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    .line 160
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 161
    iget v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1e

    :goto_14
    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->apply([II[ZIZZ)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 162
    return-void

    .line 161
    :cond_1e
    const/4 v5, 0x0

    goto :goto_14
.end method

.method static changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIZ)V
    .registers 11

    .prologue
    const/4 v5, 0x1

    .line 166
    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v0, :cond_6

    .line 178
    :cond_5
    :goto_5
    return-void

    .line 169
    :cond_6
    invoke-static {p1, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondParts(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v0

    .line 170
    iget v1, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 171
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->apply([II[ZIZZ)I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 172
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    if-eq v0, v1, :cond_5

    .line 174
    :try_start_19
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/ActivePauseStorage;->save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_20} :catch_21

    goto :goto_5

    .line 175
    :catch_21
    move-exception v0

    goto :goto_5
.end method

.method static clamp(J)I
    .registers 6

    .prologue
    .line 305
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x64

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static exact([I[ZIZ)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 229
    move v0, v1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_1f

    .line 230
    if-eqz p3, :cond_e

    aget-boolean v2, p1, v0

    if-eqz v2, :cond_e

    .line 229
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 233
    :cond_e
    aget v2, p0, v0

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 234
    invoke-static {v2, p2, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->percentFor(III)I

    move-result v3

    invoke-static {v3, p2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v3

    if-eq v3, v2, :cond_b

    .line 238
    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1e
.end method

.method static level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)I
    .registers 9

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 144
    if-ne p3, v1, :cond_24

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->secondParts(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I

    move-result-object v0

    move-object v4, v0

    .line 145
    :goto_9
    if-ne p3, v1, :cond_2a

    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    :goto_d
    move v1, v2

    move v3, v2

    .line 147
    :goto_f
    array-length v2, v4

    if-ge v1, v2, :cond_2d

    .line 148
    aget-boolean v2, p2, v1

    if-eqz v2, :cond_2e

    .line 149
    aget v2, v4, v1

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 147
    :goto_20
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_f

    .line 144
    :cond_24
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    move-object v4, v0

    goto :goto_9

    .line 145
    :cond_2a
    iget v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    goto :goto_d

    .line 152
    :cond_2d
    return v3

    :cond_2e
    move v2, v3

    goto :goto_20
.end method

.method static mode(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I
    .registers 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isPauseMaSelected()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-eqz v0, :cond_c

    .line 134
    const/4 v0, 0x2

    .line 139
    :goto_b
    return v0

    .line 136
    :cond_c
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isMaSelected()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    if-nez v0, :cond_18

    .line 137
    :cond_16
    const/4 v0, 0x1

    goto :goto_b

    .line 139
    :cond_18
    const/4 v0, 0x3

    goto :goto_b
.end method

.method static percentFor(III)I
    .registers 7

    .prologue
    .line 248
    if-gtz p1, :cond_3

    .line 261
    :goto_2
    return p2

    .line 251
    :cond_3
    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v0

    .line 252
    :goto_12
    if-lez v0, :cond_1d

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_1d

    .line 253
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 255
    :cond_1d
    :goto_1d
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2a

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-ge v1, p0, :cond_2a

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 258
    :cond_2a
    if-lez v0, :cond_34

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->real(II)I

    move-result v1

    if-le v1, p0, :cond_34

    .line 259
    add-int/lit8 v0, v0, -0x1

    :cond_34
    move p2, v0

    .line 261
    goto :goto_2
.end method

.method static raisedStrength([I[ZI)I
    .registers 5

    .prologue
    .line 213
    move v0, p2

    :goto_1
    const/16 v1, 0x64

    if-gt v0, v1, :cond_11

    .line 214
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_e

    move p2, v0

    .line 225
    :cond_d
    :goto_d
    return p2

    .line 213
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 220
    :cond_11
    add-int/lit8 v0, p2, -0x1

    :goto_13
    if-lez v0, :cond_d

    .line 221
    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->exact([I[ZIZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    move p2, v0

    .line 222
    goto :goto_d

    .line 220
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_13
.end method

.method static real(II)I
    .registers 4

    .prologue
    .line 243
    int-to-float v0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static secondParts(Lcom/isaigu/gymapp/bean/ProgramDataBean;Z)[I
    .registers 5

    .prologue
    .line 266
    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartStrength;->SECOND_PARTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 267
    if-eqz v0, :cond_12

    array-length v1, v0

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v2

    if-eq v1, v2, :cond_23

    .line 268
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 269
    if-eqz p1, :cond_23

    .line 270
    sget-object v1, Lcom/isaigu/gymapp/train/utils/PartStrength;->SECOND_PARTS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_23
    return-object v0
.end method

.method public static secondPdu(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    .registers 6

    .prologue
    .line 117
    if-eqz p0, :cond_1b

    sget-object v0, Lcom/isaigu/gymapp/train/utils/PartStrength;->SECOND_PARTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 118
    :goto_a
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-nez v1, :cond_1d

    .line 119
    :cond_16
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B

    move-result-object v0

    .line 124
    :goto_1a
    return-object v0

    .line 117
    :cond_1b
    const/4 v0, 0x0

    goto :goto_a

    .line 121
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 122
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v0, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 124
    :try_start_25
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/train/utils/CommandUtil;->getPartsParamsPduWithStrength(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)[B
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2e

    move-result-object v0

    .line 126
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    goto :goto_1a

    :catchall_2e
    move-exception v0

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 127
    throw v0
.end method

.method public static seekValue(Lcom/isaigu/gymapp/train/model/TrainItem;I)I
    .registers 5

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 100
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v1

    .line 101
    if-nez v1, :cond_b

    .line 106
    :goto_a
    return p1

    .line 104
    :cond_b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4b

    div-int/lit8 p1, v0, 0x64
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_a

    .line 105
    :catch_18
    move-exception v0

    goto :goto_a
.end method

.method static selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 286
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-nez v0, :cond_c

    .line 301
    :cond_b
    :goto_b
    return-object v4

    .line 289
    :cond_c
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 290
    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_b

    .line 293
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v3, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 294
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v0, v0

    new-array v3, v0, [Z

    move v5, v2

    move v6, v2

    .line 296
    :goto_25
    if-ge v5, v7, :cond_4d

    .line 297
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    array-length v0, v0

    if-ge v5, v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_49

    move v0, v1

    .line 298
    :goto_37
    iget-object v8, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_4b

    if-nez v0, :cond_4b

    move v0, v1

    :goto_40
    aput-boolean v0, v3, v5

    .line 299
    aget-boolean v0, v3, v5

    or-int/2addr v6, v0

    .line 296
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_25

    :cond_49
    move v0, v2

    .line 297
    goto :goto_37

    :cond_4b
    move v0, v2

    .line 298
    goto :goto_40

    .line 301
    :cond_4d
    if-eqz v6, :cond_52

    move-object v0, v3

    :goto_50
    move-object v4, v0

    goto :goto_b

    :cond_52
    move-object v0, v4

    goto :goto_50
.end method

.method public static setSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 11

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 72
    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 73
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v3

    .line 74
    if-nez v3, :cond_e

    .line 92
    :goto_d
    return v0

    .line 77
    :cond_e
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->mode(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)I

    move-result v4

    .line 78
    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->level(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)I

    move-result v5

    .line 79
    int-to-long v6, p1

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v6

    add-int/lit8 v7, v5, 0x14

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 80
    sub-int v5, v6, v5

    .line 83
    if-eq v4, v1, :cond_27

    if-ne v4, v8, :cond_2b

    .line 84
    :cond_27
    const/4 v6, 0x0

    invoke-static {v2, v3, v5, v6}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeMain(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIZ)V

    .line 86
    :cond_2b
    const/4 v6, 0x2

    if-eq v4, v6, :cond_30

    if-ne v4, v8, :cond_34

    .line 87
    :cond_30
    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v5, v4}, Lcom/isaigu/gymapp/train/utils/PartStrength;->changeSecond(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIZ)V

    .line 89
    :cond_34
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_39} :catch_3b

    move v0, v1

    .line 90
    goto :goto_d

    .line 91
    :catch_3b
    move-exception v1

    goto :goto_d
.end method
