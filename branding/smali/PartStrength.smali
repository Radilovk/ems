.class public final Lcom/isaigu/gymapp/train/utils/PartStrength;
.super Ljava/lang/Object;
.source "PartStrength.java"


# static fields
.field static final MAX_RAISE:I = 0x14


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSelected(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 30
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 31
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v3

    .line 32
    if-nez v3, :cond_c

    .line 45
    :goto_b
    return v0

    .line 35
    :cond_c
    iget-object v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 36
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->realLevels(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[D

    move-result-object v5

    move v1, v0

    .line 37
    :goto_15
    array-length v6, v4

    if-ge v1, v6, :cond_2e

    .line 38
    aget-boolean v6, v3, v1

    if-eqz v6, :cond_2b

    .line 39
    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v6

    int-to-double v6, v6

    aput-wide v6, v5, v1

    .line 37
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 42
    :cond_2e
    invoke-static {p0, v2, v3, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->apply(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[D)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_31} :catch_33

    .line 43
    const/4 v0, 0x1

    goto :goto_b

    .line 44
    :catch_33
    move-exception v1

    goto :goto_b
.end method

.method static apply(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[D)V
    .registers 16

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const/4 v1, 0x0

    .line 134
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v5, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 135
    iget v4, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 136
    const-wide/16 v2, 0x0

    move v0, v1

    .line 137
    :goto_c
    array-length v6, v5

    if-ge v0, v6, :cond_1c

    .line 138
    aget-boolean v6, p2, v0

    if-eqz v6, :cond_19

    .line 139
    aget-wide v6, p3, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 137
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 142
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicSync;->isRunning()Z

    move-result v0

    .line 144
    int-to-double v6, v4

    cmpl-double v6, v2, v6

    if-lez v6, :cond_73

    if-nez v0, :cond_73

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v0, v2

    :goto_30
    move v2, v1

    .line 147
    :goto_31
    array-length v3, v5

    if-ge v2, v3, :cond_6a

    .line 148
    aget-boolean v3, p2, v2

    if-eqz v3, :cond_54

    .line 149
    aget-wide v6, p3, v2

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 150
    if-lez v0, :cond_51

    mul-double/2addr v6, v10

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    :goto_4c
    aput v3, v5, v2

    .line 147
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 150
    :cond_51
    aget v3, v5, v2

    goto :goto_4c

    .line 151
    :cond_54
    if-eq v0, v4, :cond_4e

    if-lez v0, :cond_4e

    .line 153
    aget v3, v5, v2

    int-to-double v6, v3

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v3

    aput v3, v5, v2

    goto :goto_4e

    .line 156
    :cond_6a
    if-eq v0, v4, :cond_6e

    .line 159
    iput v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 161
    :cond_6e
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->addAllPartValue(IZ)V

    .line 162
    return-void

    :cond_73
    move v0, v4

    goto :goto_30
.end method

.method static bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 96
    if-nez p0, :cond_4

    .line 100
    :cond_3
    :goto_3
    return-object v0

    .line 99
    :cond_4
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    goto :goto_3
.end method

.method static clamp(J)I
    .registers 6

    .prologue
    .line 165
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x64

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static displayLevel(Lcom/isaigu/gymapp/train/model/TrainItem;I)I
    .registers 10

    .prologue
    .line 75
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 76
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v3

    .line 77
    if-nez v3, :cond_b

    .line 89
    :goto_a
    return p1

    .line 80
    :cond_b
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->realLevels(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[D

    move-result-object v4

    .line 81
    const-wide/16 v0, 0x0

    .line 82
    const/4 v2, 0x0

    :goto_12
    array-length v5, v4

    if-ge v2, v5, :cond_22

    .line 83
    aget-boolean v5, v3, v2

    if-eqz v5, :cond_1f

    .line 84
    aget-wide v6, v4, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 82
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 87
    :cond_22
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_25} :catch_28

    move-result-wide v0

    long-to-int p1, v0

    goto :goto_a

    .line 88
    :catch_28
    move-exception v0

    goto :goto_a
.end method

.method static realLevels(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[D
    .registers 9

    .prologue
    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 125
    array-length v0, v1

    new-array v2, v0, [D

    .line 126
    const/4 v0, 0x0

    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_19

    .line 127
    aget v3, v1, v0

    iget v4, p0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    mul-int/2addr v3, v4

    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 129
    :cond_19
    return-object v2
.end method

.method static selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 105
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    if-nez v0, :cond_c

    .line 120
    :cond_b
    :goto_b
    return-object v4

    .line 108
    :cond_c
    iget-object v0, p1, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 109
    if-eqz v0, :cond_b

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v3, :cond_b

    .line 112
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v3, v3

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    array-length v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 113
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v0, v0

    new-array v3, v0, [Z

    move v5, v2

    move v6, v2

    .line 115
    :goto_25
    if-ge v5, v7, :cond_4d

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    array-length v0, v0

    if-ge v5, v0, :cond_49

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_49

    move v0, v1

    .line 117
    :goto_37
    iget-object v8, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->partsControl:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_4b

    if-nez v0, :cond_4b

    move v0, v1

    :goto_40
    aput-boolean v0, v3, v5

    .line 118
    aget-boolean v0, v3, v5

    or-int/2addr v6, v0

    .line 115
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_25

    :cond_49
    move v0, v2

    .line 116
    goto :goto_37

    :cond_4b
    move v0, v2

    .line 117
    goto :goto_40

    .line 120
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
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 52
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/PartStrength;->bean(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    .line 53
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->selection(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[Z

    move-result-object v3

    .line 54
    if-nez v3, :cond_c

    .line 68
    :goto_b
    return v0

    .line 57
    :cond_c
    iget v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/PartStrength;->displayLevel(Lcom/isaigu/gymapp/train/model/TrainItem;I)I

    move-result v1

    .line 58
    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->clamp(J)I

    move-result v4

    add-int/lit8 v1, v1, 0x14

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 59
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/PartStrength;->realLevels(Lcom/isaigu/gymapp/bean/ProgramDataBean;)[D

    move-result-object v5

    move v1, v0

    .line 60
    :goto_22
    array-length v6, v5

    if-ge v1, v6, :cond_2f

    .line 61
    aget-boolean v6, v3, v1

    if-eqz v6, :cond_2c

    .line 62
    int-to-double v6, v4

    aput-wide v6, v5, v1

    .line 60
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 65
    :cond_2f
    invoke-static {p0, v2, v3, v5}, Lcom/isaigu/gymapp/train/utils/PartStrength;->apply(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[Z[D)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_32} :catch_34

    .line 66
    const/4 v0, 0x1

    goto :goto_b

    .line 67
    :catch_34
    move-exception v1

    goto :goto_b
.end method
