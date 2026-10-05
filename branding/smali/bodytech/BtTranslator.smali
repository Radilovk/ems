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

.field static final TEST_MAX_PCT:I = 0x1e

.field static final TEST_MS:J = 0x5dcL


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

.field private testCh:I

.field private testPct:I

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

    .line 41
    const/4 v0, -0x2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWave:I

    .line 42
    iput-boolean v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    .line 45
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    .line 46
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    return-void
.end method

.method private static at([BI)I
    .registers 3

    .prologue
    .line 140
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

.method private static lower(II)I
    .registers 2

    .prologue
    .line 190
    if-lez p0, :cond_5

    if-ge p0, p1, :cond_5

    :goto_4
    return p0

    :cond_5
    move p0, p1

    goto :goto_4
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

    .line 182
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 183
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 184
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_10
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 186
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

    .line 145
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    if-eqz v0, :cond_15

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 148
    iput-boolean v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 150
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

    .line 151
    :cond_27
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    if-eqz v0, :cond_2c

    .line 179
    :goto_2b
    return-void

    .line 152
    :cond_2c
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batteryInit2()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->reset()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->wave()I

    move-result v2

    move v0, v1

    .line 156
    :goto_46
    const/16 v3, 0x8

    if-gt v0, v3, :cond_c6

    .line 157
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const v3, 0x1010101

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->stepNor(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->tPeriod(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    const/4 v3, 0x2

    const v4, 0x186a0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    const/4 v3, 0x3

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const/4 v3, 0x4

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t(III)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1IntStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t1WidthStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3IntStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->t3WidthStep(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    if-ltz v2, :cond_b7

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtProto;->waveform(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_b7
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v5, v3, v0

    .line 172
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v6, v3, v0

    .line 173
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v7, v3, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 175
    :cond_c6
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->allOff()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 177
    iput v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devWave:I

    .line 178
    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    goto/16 :goto_2b
.end method

.method private reconcile(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x32

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 207
    move v6, v1

    move v5, v2

    .line 208
    :goto_6
    const/16 v0, 0x8

    if-gt v6, v0, :cond_7a

    .line 209
    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->target(I)I

    move-result v7

    .line 210
    if-lez v7, :cond_88

    .line 211
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 212
    :goto_16
    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v3, :cond_6f

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 213
    :goto_1c
    if-ge v3, v4, :cond_1f

    move v3, v4

    .line 214
    :cond_1f
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aget v8, v8, v6

    if-eq v8, v0, :cond_30

    .line 215
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/bodytech/BtProto;->hz(II)[B

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devHz:[I

    aput v0, v8, v6

    .line 218
    :cond_30
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aget v0, v0, v6

    if-eq v0, v3, :cond_41

    .line 219
    invoke-static {v6, v3}, Lcom/isaigu/gymapp/bodytech/BtProto;->width(II)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devUs:[I

    aput v3, v0, v6

    .line 222
    :cond_41
    add-int/lit8 v0, v6, -0x1

    shl-int v0, v1, v0

    or-int/2addr v0, v5

    .line 224
    :goto_46
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aget v3, v3, v6

    if-eq v7, v3, :cond_57

    .line 225
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/bodytech/BtProto;->intensity(II)[B

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devInt:[I

    aput v7, v3, v6

    .line 208
    :cond_57
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v5, v0

    goto :goto_6

    .line 211
    :cond_5c
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6d

    move v0, v1

    :goto_62
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chHz(IZ)I

    move-result v0

    iget v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lower(II)I

    move-result v0

    goto :goto_16

    :cond_6d
    move v0, v2

    goto :goto_62

    .line 212
    :cond_6f
    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chWidth(I)I

    move-result v3

    iget v8, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->lower(II)I

    move-result v3

    goto :goto_1c

    .line 229
    :cond_7a
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    if-eq v5, v0, :cond_87

    .line 230
    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtProto;->enable(I)[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->devMask:I

    .line 233
    :cond_87
    return-void

    :cond_88
    move v0, v5

    goto :goto_46
.end method

.method private target(I)I
    .registers 9

    .prologue
    const/16 v1, 0x63

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 195
    iget v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v2, :cond_10

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-ne p1, v1, :cond_f

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 202
    :cond_f
    :goto_f
    return v0

    .line 196
    :cond_10
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->slider(I)I

    move-result v2

    .line 197
    if-ltz v2, :cond_f

    const/16 v3, 0xa

    if-ge v2, v3, :cond_f

    .line 198
    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->group(I)I

    move-result v3

    .line 199
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v6, :cond_24

    if-eq v3, v5, :cond_f

    .line 200
    :cond_24
    iget v4, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v4, v5, :cond_2a

    if-eq v3, v6, :cond_f

    .line 201
    :cond_2a
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    aget v2, v3, v2

    int-to-long v2, v2

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtSettings;->gain()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-static {p1}, Lcom/isaigu/gymapp/bodytech/BtSettings;->chGain(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 202
    if-ltz v2, :cond_f

    if-le v2, v1, :cond_48

    move v0, v1

    goto :goto_f

    :cond_48
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
    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 66
    monitor-enter p0

    :try_start_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v0, :cond_17

    if-eq p1, v1, :cond_17

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 69
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    .line 71
    :cond_17
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 72
    if-ne p1, v2, :cond_2d

    .line 75
    :goto_1c
    const/16 v0, 0xa

    if-ge v3, v0, :cond_57

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->parts:[I

    add-int/lit8 v1, v3, 0x1

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 76
    :cond_2d
    if-ne p1, v5, :cond_9b

    .line 77
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    or-int/2addr v0, v1

    .line 78
    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v5

    .line 79
    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    .line 80
    const/16 v6, 0xa

    invoke-static {p2, v6}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v6

    if-ne v6, v2, :cond_59

    .line 81
    :goto_50
    if-eqz v2, :cond_54

    if-gtz v5, :cond_5b

    .line 82
    :cond_54
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_88

    .line 98
    :cond_57
    :goto_57
    monitor-exit p0

    return-object v4

    :cond_59
    move v2, v3

    .line 80
    goto :goto_50

    .line 84
    :cond_5b
    :try_start_5b
    iput v5, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 85
    const/16 v2, 0x32

    if-ge v1, v2, :cond_8b

    const/16 v1, 0x32

    :cond_63
    :goto_63
    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 86
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I

    if-ne v1, v7, :cond_92

    const/4 v1, 0x6

    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    .line 87
    :goto_6e
    if-gtz v1, :cond_71

    move v1, v0

    .line 88
    :cond_71
    if-lez v0, :cond_ad

    if-ge v0, v1, :cond_ad

    .line 89
    :goto_75
    if-lez v0, :cond_98

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_7b
    add-long/2addr v0, p3

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 91
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_87
    .catchall {:try_start_5b .. :try_end_87} :catchall_88

    goto :goto_57

    .line 66
    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_8b
    const/16 v2, 0x1ff

    if-le v1, v2, :cond_63

    const/16 v1, 0x1ff

    goto :goto_63

    .line 86
    :cond_92
    const/4 v1, 0x5

    :try_start_93
    invoke-static {p2, v1}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->at([BI)I

    move-result v1

    goto :goto_6e

    .line 89
    :cond_98
    const-wide/16 v0, 0x1b58

    goto :goto_7b

    .line 93
    :cond_9b
    const/16 v0, 0xf2

    if-ne p1, v0, :cond_a3

    .line 94
    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V

    goto :goto_57

    .line 95
    :cond_a3
    if-ne p1, v1, :cond_57

    .line 96
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/BtProto;->batterySync()[B

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catchall {:try_start_93 .. :try_end_ac} :catchall_88

    goto :goto_57

    :cond_ad
    move v0, v1

    goto :goto_75
.end method

.method public declared-synchronized forget()V
    .registers 2

    .prologue
    .line 59
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->programmed:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->unsafe:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 62
    monitor-exit p0

    return-void

    .line 59
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
    .line 132
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v1, :cond_13

    iget-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_13

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 134
    :cond_13
    monitor-exit p0

    return-object v0

    .line 132
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOn()Z
    .registers 2

    .prologue
    .line 54
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
    .line 50
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->phase:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized testOff()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->off(Ljava/util/List;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 127
    :cond_d
    monitor-exit p0

    return-object v0

    .line 125
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized testOn(IIJ)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x1e

    const/4 v1, 0x1

    .line 111
    monitor-enter p0

    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->training()Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_35

    move-result v3

    if-nez v3, :cond_15

    if-lt p1, v1, :cond_15

    const/16 v3, 0x8

    if-le p1, v3, :cond_17

    .line 121
    :cond_15
    :goto_15
    monitor-exit p0

    return-object v0

    .line 113
    :cond_17
    :try_start_17
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->prepare(Ljava/util/List;)V

    .line 114
    iput p1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I

    .line 115
    if-ge p2, v1, :cond_38

    move p2, v1

    :cond_1f
    :goto_1f
    iput p2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testPct:I

    .line 116
    const/16 v1, 0x55

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->hz:I

    .line 117
    const/16 v1, 0x168

    iput v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->widthUs:I

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    .line 119
    const-wide/16 v2, 0x5dc

    add-long/2addr v2, p3

    iput-wide v2, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->deadlineMs:J

    .line 120
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtTranslator;->reconcile(Ljava/util/List;)V
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_35

    goto :goto_15

    .line 111
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    .line 115
    :cond_38
    if-le p2, v2, :cond_1f

    move p2, v2

    goto :goto_1f
.end method

.method public declared-synchronized training()Z
    .registers 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->on:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/isaigu/gymapp/bodytech/BtTranslator;->testCh:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
