.class public final Lcom/isaigu/gymapp/ai/EarEnd;
.super Ljava/lang/Object;
.source "EarEnd.java"


# static fields
.field public static final BLOCK:I = 0x640

.field public static final MAX_AFTER:I = 0xfa00

.field public static final NOTHING_BLOCKS:I = 0x28

.field public static final QUIET_BLOCKS:I = 0x7

.field public static final RATE:I = 0x3e80


# instance fields
.field blockN:I

.field blocks:I

.field public hint:F

.field final minAfter:I

.field final mode:I

.field n:I

.field noiseDb:F

.field peakDb:F

.field quiet:I

.field sum:D

.field voiced:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const v1, 0x4479c000    # 999.0f

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/isaigu/gymapp/ai/EarEnd;->noiseDb:F

    .line 23
    iput v1, p0, Lcom/isaigu/gymapp/ai/EarEnd;->hint:F

    .line 26
    iput p1, p0, Lcom/isaigu/gymapp/ai/EarEnd;->mode:I

    .line 27
    if-ne p1, v0, :cond_16

    :goto_f
    iput v0, p0, Lcom/isaigu/gymapp/ai/EarEnd;->voiced:I

    .line 28
    const/16 v0, 0x1900

    iput v0, p0, Lcom/isaigu/gymapp/ai/EarEnd;->minAfter:I

    .line 29
    return-void

    .line 27
    :cond_16
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public heardSpeech()Z
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/isaigu/gymapp/ai/EarEnd;->voiced:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public prime([SII)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 36
    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->n:I

    move v0, v1

    .line 37
    :goto_4
    if-ge v0, p3, :cond_10

    .line 38
    add-int v3, p2, v0

    aget-short v3, p1, v3

    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/ai/EarEnd;->push(S)Z

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 40
    :cond_10
    iput v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->n:I

    .line 41
    iput v1, p0, Lcom/isaigu/gymapp/ai/EarEnd;->quiet:I

    .line 42
    return-void
.end method

.method public push(S)Z
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->n:I

    .line 47
    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->sum:D

    int-to-double v4, p1

    int-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->sum:D

    .line 48
    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->blockN:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->blockN:I

    const/16 v3, 0x640

    if-ge v2, v3, :cond_1c

    .line 68
    :cond_1b
    :goto_1b
    return v0

    .line 51
    :cond_1c
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/EarEnd;->sum:D

    iget v6, p0, Lcom/isaigu/gymapp/ai/EarEnd;->blockN:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 52
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/isaigu/gymapp/ai/EarEnd;->sum:D

    .line 53
    iput v0, p0, Lcom/isaigu/gymapp/ai/EarEnd;->blockN:I

    .line 54
    iget v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->blocks:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->blocks:I

    .line 55
    iget v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->peakDb:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->peakDb:F

    .line 56
    iget v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->noiseDb:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->noiseDb:F

    .line 57
    iget v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->noiseDb:F

    const/high16 v4, 0x41000000    # 8.0f

    add-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_58

    .line 58
    iget v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->voiced:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->voiced:I

    .line 60
    :cond_58
    iget v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->noiseDb:F

    const/high16 v4, 0x40c00000    # 6.0f

    add-float/2addr v3, v4

    iget v4, p0, Lcom/isaigu/gymapp/ai/EarEnd;->peakDb:F

    const/high16 v5, 0x41400000    # 12.0f

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_80

    .line 61
    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->quiet:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->quiet:I

    .line 65
    :goto_70
    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->mode:I

    if-ne v2, v8, :cond_83

    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->voiced:I

    if-nez v2, :cond_83

    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->blocks:I

    const/16 v3, 0x28

    if-lt v2, v3, :cond_83

    move v0, v1

    .line 66
    goto :goto_1b

    .line 63
    :cond_80
    iput v0, p0, Lcom/isaigu/gymapp/ai/EarEnd;->quiet:I

    goto :goto_70

    .line 68
    :cond_83
    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->voiced:I

    if-lez v2, :cond_92

    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->quiet:I

    const/4 v3, 0x7

    if-lt v2, v3, :cond_92

    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->n:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->minAfter:I

    if-ge v2, v3, :cond_a0

    :cond_92
    iget v3, p0, Lcom/isaigu/gymapp/ai/EarEnd;->n:I

    const v4, 0xfa00

    iget v2, p0, Lcom/isaigu/gymapp/ai/EarEnd;->mode:I

    if-ne v2, v8, :cond_a3

    const/16 v2, 0x7d00

    :goto_9d
    add-int/2addr v2, v4

    if-lt v3, v2, :cond_1b

    :cond_a0
    move v0, v1

    goto/16 :goto_1b

    :cond_a3
    move v2, v0

    goto :goto_9d
.end method

.method public seconds()F
    .registers 3

    .prologue
    .line 76
    iget v0, p0, Lcom/isaigu/gymapp/ai/EarEnd;->n:I

    int-to-float v0, v0

    const/high16 v1, 0x467a0000    # 16000.0f

    div-float/2addr v0, v1

    return v0
.end method
