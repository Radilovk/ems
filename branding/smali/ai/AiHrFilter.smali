.class public final Lcom/isaigu/gymapp/ai/AiHrFilter;
.super Ljava/lang/Object;
.source "AiHrFilter.java"


# static fields
.field public static final ALPHA:D = 0.3

.field public static final ARTIFACT_FLAG_SHARE:D = 0.2

.field public static final ARTIFACT_JUMP:I = 0xf

.field public static final ARTIFACT_WINDOW_MS:J = 0xbb8L

.field public static final SLOPE_MAX:D = 5.0

.field public static final VALID_WINDOW_MS:J = 0xea60L


# instance fields
.field private artifactFlag:Z

.field private final history:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<[J>;"
        }
    .end annotation
.end field

.field private hrS:D

.field private lastAcceptedMs:J

.field private lastBpm:I

.field private lastMs:J

.field private rejectedTotal:I

.field private total:I


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->hrS:D

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastBpm:I

    .line 17
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastMs:J

    .line 18
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastAcceptedMs:J

    .line 20
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->history:Ljava/util/ArrayDeque;

    return-void
.end method

.method private trim(J)V
    .registers 10

    .prologue
    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const-wide/32 v4, 0xea60

    sub-long v4, p1, v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_22

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 85
    :cond_22
    return-void
.end method

.method private updateArtifactFlag()V
    .registers 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->validShare()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1c

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->artifactFlag:Z

    .line 91
    :cond_1c
    return-void
.end method


# virtual methods
.method public ageMs(J)J
    .registers 8

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastAcceptedMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const-wide v0, 0x7fffffffffffffffL

    :goto_d
    return-wide v0

    :cond_e
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastAcceptedMs:J

    sub-long v0, p1, v0

    goto :goto_d
.end method

.method public getHrS()D
    .registers 3

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->hrS:D

    return-wide v0
.end method

.method public getLastAcceptedMs()J
    .registers 3

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastAcceptedMs:J

    return-wide v0
.end method

.method public getRejectedTotal()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->rejectedTotal:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->total:I

    return v0
.end method

.method public isArtifactFlag()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->artifactFlag:Z

    return v0
.end method

.method public onSample(JIZ)Z
    .registers 16

    .prologue
    .line 49
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->total:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->total:I

    .line 50
    const/16 v0, 0x1e

    if-lt p3, v0, :cond_72

    const/16 v0, 0xdc

    if-gt p3, v0, :cond_72

    const/4 v0, 0x1

    .line 51
    :goto_f
    if-eqz v0, :cond_4c

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastBpm:I

    if-lez v1, :cond_4c

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4c

    .line 52
    const-wide/16 v2, 0x1

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastMs:J

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 53
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastBpm:I

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 54
    int-to-double v4, v1

    long-to-double v6, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3f

    .line 55
    const/4 v0, 0x0

    .line 57
    :cond_3f
    if-eqz p4, :cond_4c

    const/16 v4, 0xf

    if-le v1, v4, :cond_4c

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-gez v1, :cond_4c

    .line 58
    const/4 v0, 0x0

    .line 61
    :cond_4c
    iput p3, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastBpm:I

    .line 62
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastMs:J

    .line 63
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->history:Ljava/util/ArrayDeque;

    const/4 v2, 0x2

    new-array v4, v2, [J

    const/4 v2, 0x0

    aput-wide p1, v4, v2

    const/4 v5, 0x1

    if-eqz v0, :cond_74

    const-wide/16 v2, 0x1

    :goto_5d
    aput-wide v2, v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AiHrFilter;->trim(J)V

    .line 65
    if-nez v0, :cond_77

    .line 66
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->rejectedTotal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->rejectedTotal:I

    .line 67
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->updateArtifactFlag()V

    .line 68
    const/4 v0, 0x0

    .line 73
    :goto_71
    return v0

    .line 50
    :cond_72
    const/4 v0, 0x0

    goto :goto_f

    .line 63
    :cond_74
    const-wide/16 v2, 0x0

    goto :goto_5d

    .line 70
    :cond_77
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->hrS:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_89

    int-to-double v0, p3

    :goto_80
    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->hrS:D

    .line 71
    iput-wide p1, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastAcceptedMs:J

    .line 72
    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/AiHrFilter;->updateArtifactFlag()V

    .line 73
    const/4 v0, 0x1

    goto :goto_71

    .line 70
    :cond_89
    const-wide v0, 0x3fd3333333333333L    # 0.3

    int-to-double v2, p3

    mul-double/2addr v0, v2

    const-wide v2, 0x3fe6666666666666L    # 0.7

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->hrS:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_80
.end method

.method public reset()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 26
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->hrS:D

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastBpm:I

    .line 28
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastMs:J

    .line 29
    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastAcceptedMs:J

    .line 30
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->artifactFlag:Z

    .line 32
    return-void
.end method

.method public seed(IJ)V
    .registers 6

    .prologue
    .line 36
    if-lez p1, :cond_b

    .line 37
    int-to-double v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->hrS:D

    .line 38
    iput p1, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastBpm:I

    .line 39
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastMs:J

    .line 40
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->lastAcceptedMs:J

    .line 42
    :cond_b
    return-void
.end method

.method public validShare()D
    .registers 7

    .prologue
    .line 95
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 96
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 102
    :goto_a
    return-wide v0

    .line 98
    :cond_b
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 100
    const/4 v3, 0x1

    aget-wide v4, v0, v3

    long-to-int v0, v4

    add-int/2addr v0, v1

    move v1, v0

    .line 101
    goto :goto_13

    .line 102
    :cond_26
    int-to-double v0, v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiHrFilter;->history:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_a
.end method
