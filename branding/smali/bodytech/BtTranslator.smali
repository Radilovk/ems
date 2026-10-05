.class public final Lcom/isaigu/gymapp/bodytech/BtTranslator;
.super Ljava/lang/Object;
.source "BtTranslator.java"


# static fields
.field static final CMD_BATTERY:I = 0x5

.field static final CMD_RUN:I = 0x3

.field static final CMD_SETTING:I = 0x1

.field static final CMD_START:I = 0xf1

.field static final CMD_STOP:I = 0xf2

.field static final CYCLE_ON_MS:I = 0x186a0

.field static final DEF_HZ:I = 0x55

.field static final DEF_US:I = 0x168

.field static final GRACE_MS:J = 0xbb8L

.field public static final MAIN:I = 0x1

.field public static final MAX_PCT:I = 0x63

.field static final MAX_US:I = 0x1ff

.field static final MIN_US:I = 0x32

.field public static final PAUSE:I = 0x0

.field public static final SECOND:I = 0x2


# instance fields
.field private deadlineMs:J

.field private final devHz:[I

.field private final devInt:[I

.field private devMask:I

.field private final devUs:[I

.field private devWave:I

.field private hz:I

.field private on:Z

.field private final parts:[I

.field private phase:I

.field private programmed:Z

.field private unsafe:Z

.field private widthUs:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x9

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    .line 31
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    .line 32
    const/16 v0, 0x55

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 38
    const/4 v0, -0x2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWave:I

    .line 39
    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 41
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    .line 42
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    return-void
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 104
    if-eqz p0, :cond_a

    array-length v0, p0

    if-ge p1, v0, :cond_a

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private off(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 147
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_e
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 149
    return-void
.end method

.method private prepare(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x168

    const/16 v6, 0x55

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 109
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    if-eqz v0, :cond_15

    .line 110
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 112
    iput-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 114
    :cond_15
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-nez v0, :cond_27

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave()I

    move-result v0

    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWave:I

    if-eq v0, v2, :cond_27

    iput-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 115
    :cond_27
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_2c

    .line 143
    :goto_2b
    return-void

    .line 116
    :cond_2c
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit2()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->reset()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave()I

    move-result v2

    move v0, v1

    .line 120
    :goto_46
    const/16 v3, 0x8

    if-gt v0, v3, :cond_c6

    .line 121
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const v3, 0x1010101

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNor(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->tPeriod(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const/4 v3, 0x2

    const v4, 0x186a0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const/4 v3, 0x3

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const/4 v3, 0x4

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1IntStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1WidthStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3IntStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3WidthStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    if-ltz v2, :cond_b7

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_b7
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v5, v3, v0

    .line 136
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v6, v3, v0

    .line 137
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v7, v3, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 139
    :cond_c6
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 141
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWave:I

    .line 142
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    goto/16 :goto_2b
.end method

.method private reconcile(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 164
    const/4 v0, 0x0

    move v1, v2

    .line 165
    :goto_3
    const/16 v3, 0x8

    if-gt v1, v3, :cond_54

    .line 166
    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->target(I)I

    move-result v3

    .line 167
    if-lez v3, :cond_40

    .line 168
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    if-eq v4, v5, :cond_24

    .line 169
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    aput v5, v4, v1

    .line 172
    :cond_24
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    if-eq v4, v5, :cond_3b

    .line 173
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    iget v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    aput v5, v4, v1

    .line 176
    :cond_3b
    add-int/lit8 v4, v1, -0x1

    shl-int v4, v2, v4

    or-int/2addr v0, v4

    .line 178
    :cond_40
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_51

    .line 179
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v3, v4, v1

    .line 165
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 183
    :cond_54
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eq v0, v1, :cond_61

    .line 184
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 187
    :cond_61
    return-void
.end method

.method private target(I)I
    .registers 9

    .prologue
    const/16 v1, 0x63

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 153
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v2

    .line 154
    if-ltz v2, :cond_f

    const/16 v3, 0xa

    if-lt v2, v3, :cond_10

    .line 159
    :cond_f
    :goto_f
    return v0

    .line 155
    :cond_10
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v3

    .line 156
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v6, :cond_1a

    if-eq v3, v5, :cond_f

    .line 157
    :cond_1a
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v5, :cond_20

    if-eq v3, v6, :cond_f

    .line 158
    :cond_20
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v2, v3, v2

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x32

    div-int/lit8 v2, v2, 0x64

    .line 159
    if-ltz v2, :cond_f

    if-le v2, v1, :cond_33

    move v0, v1

    goto :goto_f

    :cond_33
    move v0, v2

    goto :goto_f
.end method


# virtual methods
.method public declared-synchronized command(I[BJ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    monitor-enter p0

    :try_start_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 65
    if-ne p1, v2, :cond_21

    .line 68
    :goto_10
    const/16 v0, 0xa

    if-ge v3, v0, :cond_4b

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    add-int/lit8 v1, v3, 0x1

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 69
    :cond_21
    if-ne p1, v0, :cond_8f

    .line 70
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    or-int/2addr v0, v1

    .line 71
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v5

    .line 72
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    .line 73
    const/16 v6, 0xa

    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v6

    if-ne v6, v2, :cond_4d

    .line 74
    :goto_44
    if-eqz v2, :cond_48

    if-gtz v5, :cond_4f

    .line 75
    :cond_48
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_7c

    .line 91
    :cond_4b
    :goto_4b
    monitor-exit p0

    return-object v4

    :cond_4d
    move v2, v3

    .line 73
    goto :goto_44

    .line 77
    :cond_4f
    :try_start_4f
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 78
    const/16 v2, 0x32

    if-ge v1, v2, :cond_7f

    const/16 v1, 0x32

    :cond_57
    :goto_57
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 79
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v1, v7, :cond_86

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    .line 80
    :goto_62
    if-gtz v1, :cond_65

    move v1, v0

    .line 81
    :cond_65
    if-lez v0, :cond_a1

    if-ge v0, v1, :cond_a1

    .line 82
    :goto_69
    if-lez v0, :cond_8c

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_6f
    add-long/2addr v0, p3

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 84
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_7b
    .catchall {:try_start_4f .. :try_end_7b} :catchall_7c

    goto :goto_4b

    .line 63
    :catchall_7c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_7f
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_57

    const/16 v1, 0x1ff

    goto :goto_57

    .line 79
    :cond_86
    const/4 v1, 0x5

    :try_start_87
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    goto :goto_62

    .line 82
    :cond_8c
    const-wide/16 v0, 0x1b58

    goto :goto_6f

    .line 86
    :cond_8f
    const/16 v0, 0xf2

    if-ne p1, v0, :cond_97

    .line 87
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    goto :goto_4b

    .line 88
    :cond_97
    if-ne p1, v1, :cond_4b

    .line 89
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batterySync()[B

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a0
    .catchall {:try_start_87 .. :try_end_a0} :catchall_7c

    goto :goto_4b

    :cond_a1
    move v0, v1

    goto :goto_69
.end method

.method public declared-synchronized forget()V
    .registers 2

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 59
    monitor-exit p0

    return-void

    .line 56
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized heartbeat(J)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_13

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 98
    :cond_13
    monitor-exit p0

    return-object v0

    .line 96
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOn()Z
    .registers 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized phase(I)V
    .registers 3

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
