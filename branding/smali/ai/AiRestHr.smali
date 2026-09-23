.class public final Lcom/isaigu/gymapp/ai/AiRestHr;
.super Ljava/lang/Object;
.source "AiRestHr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiRestHr$Status;
    }
.end annotation


# static fields
.field public static final EXTEND_MS:J = 0xea60L

.field public static final MAX_EXTENSIONS:I = 0x2

.field public static final SIGMA_MAX:D = 3.0

.field public static final SLOPE_MAX_BPM_PER_S:D = 5.0

.field public static final STALE_MS:J = 0x2710L

.field public static final WINDOW_MS:J = 0x1d4c0L


# instance fields
.field private dtHrMs:J

.field private extensions:I

.field private hrRest:I

.field private lastBpm:I

.field private lastSampleMs:J

.field private lastTickMs:J

.field private measuredMs:J

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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    .line 22
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    .line 26
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    .line 29
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 38
    const-wide/32 v2, 0x1d4c0

    if-eqz p1, :cond_22

    const-wide/16 v0, 0x0

    :goto_1e
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    .line 39
    return-void

    .line 38
    :cond_22
    const-wide/32 v0, 0xea60

    goto :goto_1e
.end method

.method private finish(J)V
    .registers 9

    .prologue
    const-wide/32 v4, 0xea60

    .line 130
    invoke-direct {p0, v4, v5}, Lcom/isaigu/gymapp/ai/AiRestHr;->lastWindow(J)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_f

    .line 147
    :goto_e
    return-void

    .line 134
    :cond_f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->median(Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->hrRest:I

    .line 135
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->sd(Ljava/util/List;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->sigma:D

    .line 136
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->medianInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->dtHrMs:J

    .line 137
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->sigma:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2e

    .line 138
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    goto :goto_e

    .line 141
    :cond_2e
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->extensions:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3f

    .line 142
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->extensions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->extensions:I

    .line 143
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    goto :goto_e

    .line 146
    :cond_3f
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    goto :goto_e
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

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v3

    .line 167
    :goto_f
    return-object v0

    .line 161
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

    .line 162
    :goto_23
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v6, v0, v2

    sub-long v8, v4, p1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_4e

    .line 164
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

    .line 162
    :cond_4e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    :cond_52
    move-object v0, v3

    .line 167
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
    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 181
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 182
    if-nez v2, :cond_10

    .line 183
    const/4 v0, 0x0

    .line 185
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

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    const/4 v0, 0x1

    move v1, v0

    :goto_8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 173
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

    .line 172
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 175
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

    .line 189
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    .line 201
    :goto_9
    return-wide v4

    .line 193
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

    .line 194
    int-to-double v0, v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 195
    goto :goto_f

    .line 196
    :cond_23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v2, v0

    .line 198
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

    .line 199
    int-to-double v6, v0

    sub-double/2addr v6, v2

    int-to-double v8, v0

    sub-double/2addr v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 200
    goto :goto_2d

    .line 201
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


# virtual methods
.method public acceptUnstable()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_a

    .line 152
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 154
    :cond_a
    return-void
.end method

.method public getDtHrMs()J
    .registers 3

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->dtHrMs:J

    return-wide v0
.end method

.method public getHrRest()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->hrRest:I

    return v0
.end method

.method public getLastBpm()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    return v0
.end method

.method public getMeasuredMs()J
    .registers 3

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    return-wide v0
.end method

.method public getRejected()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    return v0
.end method

.method public getSigma()D
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->sigma:D

    return-wide v0
.end method

.method public getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    return-object v0
.end method

.method public getTargetMs()J
    .registers 3

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    return-wide v0
.end method

.method public liveMedian()I
    .registers 3

    .prologue
    .line 75
    const-wide/32 v0, 0xea60

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->lastWindow(J)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, -0x1

    :goto_e
    return v0

    :cond_f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->median(Ljava/util/List;)I

    move-result v0

    goto :goto_e
.end method

.method public onSample(JI)V
    .registers 11

    .prologue
    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_d

    .line 102
    :cond_c
    :goto_c
    return-void

    .line 83
    :cond_d
    const/16 v0, 0x1e

    if-lt p3, v0, :cond_15

    const/16 v0, 0xdc

    if-le p3, v0, :cond_1c

    .line 84
    :cond_15
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    goto :goto_c

    .line 87
    :cond_1c
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_58

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    if-lez v0, :cond_58

    .line 88
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 89
    iget v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    sub-int v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    div-double v0, v2, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_58

    .line 90
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    .line 91
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    .line 92
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    goto :goto_c

    .line 96
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

    .line 97
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    .line 98
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v1, :cond_77

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_c

    .line 100
    :cond_77
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    goto :goto_c
.end method

.method public tick(J)V
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_f

    .line 127
    :cond_e
    :goto_e
    return-void

    .line 109
    :cond_f
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_18

    .line 110
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    goto :goto_e

    .line 113
    :cond_18
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    sub-long v0, p1, v0

    .line 114
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    .line 115
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v2, v3, :cond_e

    .line 118
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_34

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_39

    .line 119
    :cond_34
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    goto :goto_e

    .line 122
    :cond_39
    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 123
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    .line 124
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_e

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->finish(J)V

    goto :goto_e
.end method
