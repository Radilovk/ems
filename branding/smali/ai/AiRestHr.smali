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
.field public static final EXTEND_MS:J = 0x3a98L

.field public static final MAX_EXTENSIONS:I = 0x2

.field public static final SIGMA_MAX:D = 3.0

.field public static final SLOPE_MAX_BPM_PER_S:D = 5.0

.field public static final STALE_MS:J = 0x2710L

.field public static final WINDOW_MS:J = 0x7530L


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
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field private sigma:D

.field private status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

.field private targetMs:J


# direct methods
.method public constructor <init>(Z)V
    .registers 6

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    .line 23
    const/4 v2, -0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    .line 26
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    .line 29
    sget-object v0, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 38
    if-eqz p1, :cond_1c

    const-wide/16 v0, 0x0

    goto :goto_1e

    :cond_1c
    const-wide/16 v0, 0x3a98

    :goto_1e
    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    .line 39
    return-void
.end method

.method private finish(J)V
    .registers 6

    .line 130
    const-wide/16 p1, 0x7530

    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->lastWindow(J)Ljava/util/List;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x3

    if-ge p2, v0, :cond_e

    .line 132
    return-void

    .line 134
    :cond_e
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiRestHr;->median(Ljava/util/List;)I

    move-result p2

    iput p2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->hrRest:I

    .line 135
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiRestHr;->sd(Ljava/util/List;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->sigma:D

    .line 136
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiRestHr;->medianInterval()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->dtHrMs:J

    .line 137
    iget-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->sigma:D

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_2d

    .line 138
    sget-object p1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 139
    return-void

    .line 141
    :cond_2d
    iget p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->extensions:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_3e

    .line 142
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->extensions:I

    .line 143
    iget-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    const-wide/16 v0, 0x3a98

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    .line 144
    return-void

    .line 146
    :cond_3e
    sget-object p1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 147
    return-void
.end method

.method private lastWindow(J)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 159
    return-object v0

    .line 161
    :cond_e
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v2, 0x0

    aget-wide v4, v1, v2

    .line 162
    const/4 v1, 0x0

    :goto_20
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4d

    .line 163
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    aget-wide v7, v6, v2

    sub-long v9, v4, p1

    cmp-long v6, v7, v9

    if-ltz v6, :cond_4a

    .line 164
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    aget-wide v7, v6, v3

    long-to-int v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 167
    :cond_4d
    return-object v0
.end method

.method static median(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 180
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    .line 182
    if-nez p0, :cond_10

    .line 183
    const/4 p0, 0x0

    return p0

    .line 185
    :cond_10
    rem-int/lit8 v1, p0, 0x2

    const/4 v2, 0x1

    div-int/lit8 p0, p0, 0x2

    if-ne v1, v2, :cond_22

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_42

    :cond_22
    add-int/lit8 v1, p0, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v1, p0

    int-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    :goto_42
    return p0
.end method

.method private medianInterval()J
    .registers 9

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    const/4 v1, 0x1

    :goto_6
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 173
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    aget-wide v6, v2, v3

    sub-long/2addr v4, v6

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 175
    :cond_31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    const-wide/16 v0, 0x0

    goto :goto_3f

    :cond_3a
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->median(Ljava/util/List;)I

    move-result v0

    int-to-long v0, v0

    :goto_3f
    return-wide v0
.end method

.method static sd(Ljava/util/List;)D
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .line 189
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_a

    .line 190
    return-wide v1

    .line 192
    :cond_a
    nop

    .line 193
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v3, v1

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 194
    int-to-double v5, v5

    add-double/2addr v3, v5

    .line 195
    goto :goto_10

    .line 196
    :cond_23
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    .line 197
    nop

    .line 198
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 199
    int-to-double v5, v5

    sub-double/2addr v5, v3

    mul-double v5, v5, v5

    add-double/2addr v1, v5

    .line 200
    goto :goto_2e

    .line 201
    :cond_44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-double v3, p0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public acceptUnstable()V
    .registers 3

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

    .line 70
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->dtHrMs:J

    return-wide v0
.end method

.method public getHrRest()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->hrRest:I

    return v0
.end method

.method public getLastBpm()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    return v0
.end method

.method public getMeasuredMs()J
    .registers 3

    .line 46
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    return-wide v0
.end method

.method public getRejected()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    return v0
.end method

.method public getSigma()D
    .registers 3

    .line 66
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->sigma:D

    return-wide v0
.end method

.method public getStatus()Lcom/isaigu/gymapp/ai/AiRestHr$Status;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    return-object v0
.end method

.method public getTargetMs()J
    .registers 3

    .line 50
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    return-wide v0
.end method

.method public liveMedian()I
    .registers 3

    .line 75
    const-wide/16 v0, 0x7530

    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiRestHr;->lastWindow(J)Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, -0x1

    goto :goto_12

    :cond_e
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiRestHr;->median(Ljava/util/List;)I

    move-result v0

    :goto_12
    return v0
.end method

.method public onSample(JI)V
    .registers 12

    .line 80
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v1, :cond_78

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_d

    goto :goto_78

    .line 83
    :cond_d
    const/16 v0, 0x1e

    const/4 v1, 0x1

    if-lt p3, v0, :cond_72

    const/16 v0, 0xdc

    if-le p3, v0, :cond_17

    goto :goto_72

    .line 87
    :cond_17
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4f

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    if-lez v0, :cond_4f

    .line 88
    const-wide v4, 0x3f50624dd2f1a9fcL    # 0.001

    sub-long v2, p1, v2

    long-to-double v2, v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 89
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v4, v2

    if-lez v0, :cond_4f

    .line 90
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    .line 91
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    .line 92
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    .line 93
    return-void

    .line 96
    :cond_4f
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->samples:Ljava/util/List;

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    int-to-long v3, p3

    aput-wide v3, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    .line 98
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastBpm:I

    .line 99
    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object p2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq p1, p2, :cond_6d

    iget-object p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object p2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne p1, p2, :cond_71

    .line 100
    :cond_6d
    sget-object p1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 102
    :cond_71
    return-void

    .line 84
    :cond_72
    :goto_72
    iget p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->rejected:I

    .line 85
    return-void

    .line 81
    :cond_78
    :goto_78
    return-void
.end method

.method public tick(J)V
    .registers 10

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->DONE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-eq v0, v1, :cond_4a

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->UNSTABLE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v0, v1, :cond_d

    goto :goto_4a

    .line 109
    :cond_d
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_18

    .line 110
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    .line 111
    return-void

    .line 113
    :cond_18
    sub-long v0, p1, v0

    .line 114
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastTickMs:J

    .line 115
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->WAITING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    if-ne v4, v5, :cond_23

    .line 116
    return-void

    .line 118
    :cond_23
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->lastSampleMs:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_45

    sub-long v2, p1, v4

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-lez v6, :cond_32

    goto :goto_45

    .line 122
    :cond_32
    sget-object v2, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->MEASURING:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 123
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->measuredMs:J

    .line 124
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->targetMs:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_44

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiRestHr;->finish(J)V

    .line 127
    :cond_44
    return-void

    .line 119
    :cond_45
    :goto_45
    sget-object p1, Lcom/isaigu/gymapp/ai/AiRestHr$Status;->STALE:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    iput-object p1, p0, Lcom/isaigu/gymapp/ai/AiRestHr;->status:Lcom/isaigu/gymapp/ai/AiRestHr$Status;

    .line 120
    return-void

    .line 107
    :cond_4a
    :goto_4a
    return-void
.end method
