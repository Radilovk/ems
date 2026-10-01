.class public final Lcom/isaigu/gymapp/ai/AiRestHr;
.super Ljava/lang/Object;
.source "AiRestHr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiRestHr$Status;,
        Lcom/isaigu/gymapp/ai/AiRestHr$Reason;
    }
.end annotation


# static fields
.field public static final DRIFT_MAX:D = 0.1

.field public static final MAX_MS:J = 0xafc8L

.field public static final MIN_MS:J = 0x2710L

.field public static final MIN_NOT_RESTED_MS:J = 0x4e20L

.field public static final SIGMA_MAX:D = 3.0

.field public static final SLOPE_MAX_BPM_PER_S:D = 5.0

.field public static final STALE_MS:J = 0x2710L

.field public static final WINDOW_MS:J = 0x7530L


# instance fields
.field private dtHrMs:J

.field private hrRest:I

.field private lastBpm:I

.field private lastSampleMs:J

.field private lastTickMs:J

.field private measuredMs:J

.field private final minMs:J

.field private reason:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

.field private rejected:I

.field private final samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[J>;"
        }
    .end annotation
.end field

.field private sigma:D

.field private status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

.field private targetMs:J


# direct methods
.method public constructor <init>(Z)V
    .registers 6

    .prologue
    const-wide/16 v2, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    .line 37
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    .line 41
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    .line 44
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 45
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->FEW:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->reason:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    .line 53
    if-eqz p1, :cond_27

    const-wide/16 v0, 0x2710

    :goto_1f
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->minMs:J

    .line 54
    const-wide/32 v0, 0xafc8

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    .line 55
    return-void

    .line 53
    :cond_27
    const-wide/16 v0, 0x4e20

    goto :goto_1f
.end method

.method private assess()V
    .registers 21

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->minMs:J

    const-wide/16 v4, 0x7530

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/isaigu/gymapp/ai/AiRestHr;->recent(J)Ljava/util/List;

    move-result-object v6

    .line 150
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 151
    const-wide/16 v2, 0x1f4

    invoke-direct/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->medianInterval()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 152
    const/4 v2, 0x4

    if-ge v7, v2, :cond_5d

    .line 153
    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->FEW:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->reason:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    .line 154
    const-wide/32 v2, 0xafc8

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->minMs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    rsub-int/lit8 v6, v7, 0x4

    int-to-long v6, v6

    mul-long/2addr v6, v8

    add-long/2addr v6, v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    .line 155
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    const-wide/32 v4, 0xafc8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5c

    .line 156
    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 178
    :cond_5c
    :goto_5c
    return-void

    .line 160
    :cond_5d
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiRestHr;->sdOf(Ljava/util/List;)D

    move-result-wide v10

    .line 161
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiRestHr;->slope(Ljava/util/List;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 162
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    const-wide/high16 v4, 0x3ff9000000000000L    # 1.5625

    mul-double/2addr v4, v10

    mul-double/2addr v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long v14, v2, v8

    .line 163
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->minMs:J

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 164
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v4, v10, v4

    if-lez v4, :cond_d9

    const/4 v4, 0x1

    move v5, v4

    .line 165
    :goto_8a
    const-wide v16, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v12, v16

    if-lez v4, :cond_dc

    const/4 v4, 0x1

    .line 166
    :goto_94
    if-nez v5, :cond_98

    if-eqz v4, :cond_a8

    .line 167
    :cond_98
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1388

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 169
    :cond_a8
    const-wide/32 v16, 0xafc8

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    .line 170
    if-eqz v4, :cond_de

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->DRIFT:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    :goto_b9
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->reason:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    .line 171
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    cmp-long v2, v2, v8

    if-ltz v2, :cond_ef

    if-nez v5, :cond_ef

    if-nez v4, :cond_ef

    .line 172
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10, v11}, Lcom/isaigu/gymapp/ai/AiRestHr;->take(Ljava/util/List;D)V

    .line 173
    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    goto :goto_5c

    .line 164
    :cond_d9
    const/4 v4, 0x0

    move v5, v4

    goto :goto_8a

    .line 165
    :cond_dc
    const/4 v4, 0x0

    goto :goto_94

    .line 170
    :cond_de
    if-eqz v5, :cond_e3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->NOISY:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    goto :goto_b9

    :cond_e3
    int-to-long v2, v7

    mul-long/2addr v2, v8

    cmp-long v2, v2, v14

    if-gez v2, :cond_ec

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->FEW:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    goto :goto_b9

    :cond_ec
    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Reason;->NONE:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    goto :goto_b9

    .line 174
    :cond_ef
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    const-wide/32 v4, 0xafc8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5c

    .line 175
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v10, v11}, Lcom/isaigu/gymapp/ai/AiRestHr;->take(Ljava/util/List;D)V

    .line 176
    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    cmpg-double v2, v10, v2

    if-gtz v2, :cond_116

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v12, v2

    if-gtz v2, :cond_116

    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    :goto_110
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    goto/16 :goto_5c

    :cond_116
    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    goto :goto_110
.end method

.method private lastWindow(J)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v3

    .line 255
    :goto_f
    return-object v0

    .line 249
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v4, v0, v2

    move v1, v2

    .line 250
    :goto_23
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v6, v0, v2

    sub-long v8, v4, p1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_4e

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v6, 0x1

    aget-wide v6, v0, v6

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_4e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    :cond_52
    move-object v0, v3

    .line 255
    goto :goto_f
.end method

.method static median(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 269
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 270
    if-nez v2, :cond_10

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_f
    return v0

    :cond_10
    rem-int/lit8 v0, v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_22

    div-int/lit8 v0, v2, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_f

    :cond_22
    div-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v0, v2, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_f
.end method

.method private medianInterval()J
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
    const/4 v0, 0x1

    move v1, v0

    :goto_8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 261
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v4, v0, v8

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v6, v0, v8

    sub-long/2addr v4, v6

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 263
    :cond_33
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-wide/16 v0, 0x0

    :goto_3b
    return-wide v0

    :cond_3c
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiRestHr;->median(Ljava/util/List;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_3b
.end method

.method private recent(J)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<[J>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v3

    .line 202
    :goto_f
    return-object v0

    .line 196
    :cond_10
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v4, v0, v2

    move v1, v2

    .line 197
    :goto_23
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    .line 198
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v6, v0, v2

    sub-long v8, v4, p1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_46

    .line 199
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_46
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    :cond_4a
    move-object v0, v3

    .line 202
    goto :goto_f
.end method

.method static sd(Ljava/util/List;)D
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 277
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    .line 289
    :goto_9
    return-wide v4

    .line 281
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 282
    int-to-double v0, v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 283
    goto :goto_f

    .line 284
    :cond_23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v2, v0

    .line 286
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    int-to-double v6, v0

    sub-double/2addr v6, v2

    int-to-double v8, v0

    sub-double/2addr v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 288
    goto :goto_2d

    .line 289
    :cond_44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_9
.end method

.method private static sdOf(Ljava/util/List;)D
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[J>;)D"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 208
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 210
    :cond_22
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiRestHr;->sd(Ljava/util/List;)D

    move-result-wide v0

    return-wide v0
.end method

.method static slope(Ljava/util/List;)D
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[J>;)D"
        }
    .end annotation

    .prologue
    .line 215
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v8

    .line 216
    const/4 v2, 0x2

    if-ge v8, v2, :cond_a

    .line 217
    const-wide/16 v2, 0x0

    .line 234
    :goto_9
    return-wide v2

    .line 219
    :cond_a
    const-wide/16 v6, 0x0

    .line 220
    const-wide/16 v4, 0x0

    .line 221
    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v8, :cond_36

    .line 222
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    const/4 v9, 0x0

    aget-wide v10, v2, v9

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 223
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    const/4 v9, 0x1

    aget-wide v10, v2, v9

    long-to-double v10, v10

    add-double/2addr v4, v10

    .line 221
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_10

    .line 225
    :cond_36
    int-to-double v2, v8

    div-double v10, v6, v2

    .line 226
    int-to-double v2, v8

    div-double v12, v4, v2

    .line 227
    const-wide/16 v6, 0x0

    .line 228
    const-wide/16 v4, 0x0

    .line 229
    const/4 v2, 0x0

    move v3, v2

    :goto_42
    if-ge v3, v8, :cond_74

    .line 230
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    const/4 v9, 0x0

    aget-wide v14, v2, v9

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    sub-double/2addr v14, v10

    .line 231
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    const/4 v9, 0x1

    aget-wide v16, v2, v9

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v16, v12

    mul-double v16, v16, v14

    add-double v6, v6, v16

    .line 232
    mul-double/2addr v14, v14

    add-double/2addr v4, v14

    .line 229
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_42

    .line 234
    :cond_74
    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    cmpl-double v2, v4, v2

    if-lez v2, :cond_80

    div-double v2, v6, v4

    goto :goto_9

    :cond_80
    const-wide/16 v2, 0x0

    goto :goto_9
.end method

.method private take(Ljava/util/List;D)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[J>;D)V"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 183
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 185
    :cond_22
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiRestHr;->median(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->hrRest:I

    .line 186
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->sigma:D

    .line 187
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->medianInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->dtHrMs:J

    .line 188
    return-void
.end method


# virtual methods
.method public acceptUnstable()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_a

    .line 240
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 242
    :cond_a
    return-void
.end method

.method public getDtHrMs()J
    .registers 3

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->dtHrMs:J

    return-wide v0
.end method

.method public getHrRest()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->hrRest:I

    return v0
.end method

.method public getLastBpm()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    return v0
.end method

.method public getMeasuredMs()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    return-wide v0
.end method

.method public getReason()Lcom/isaigu/gymapp/ai/AiRestHr$Reason;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->reason:Lcom/isaigu/gymapp/ai/AiRestHr$Reason;

    return-object v0
.end method

.method public getRejected()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    return v0
.end method

.method public getSigma()D
    .registers 3

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->sigma:D

    return-wide v0
.end method

.method public getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    return-object v0
.end method

.method public getTargetMs()J
    .registers 3

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    return-wide v0
.end method

.method public liveMedian()I
    .registers 3

    .prologue
    .line 95
    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->lastWindow(J)Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->median(Ljava/util/List;)I

    move-result v0

    goto :goto_d
.end method

.method public onSample(JI)V
    .registers 11

    .prologue
    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_d

    .line 122
    :cond_c
    :goto_c
    return-void

    .line 103
    :cond_d
    const/16 v0, 0x1e

    if-lt p3, v0, :cond_15

    const/16 v0, 0xdc

    if-le p3, v0, :cond_1c

    .line 104
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    goto :goto_c

    .line 107
    :cond_1c
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_58

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    if-lez v0, :cond_58

    .line 108
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 109
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    sub-int v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    div-double v0, v2, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_58

    .line 110
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    .line 111
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    .line 112
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    goto :goto_c

    .line 116
    :cond_58
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 v2, 0x1

    int-to-long v4, p3

    aput-wide v4, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    .line 118
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v1, :cond_77

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_c

    .line 120
    :cond_77
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    goto :goto_c
.end method

.method public tick(J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_f

    .line 145
    :cond_e
    :goto_e
    return-void

    .line 129
    :cond_f
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_18

    .line 130
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    goto :goto_e

    .line 133
    :cond_18
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    sub-long v0, p1, v0

    .line 134
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    .line 135
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v2, v3, :cond_e

    .line 138
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_34

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_39

    .line 139
    :cond_34
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    goto :goto_e

    .line 142
    :cond_39
    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 143
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    .line 144
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->assess()V

    goto :goto_e
.end method
