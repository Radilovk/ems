.class final Lcom/isaigu/gymapp/ai/WakeWord$Front;
.super Ljava/lang/Object;
.source "WakeWord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeWord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Front"
.end annotation


# instance fields
.field final binIdx:[I

.field final binW:[F

.field final cosT:[F

.field final dct:[[F

.field fill:I

.field final hist:[F

.field final im:[F

.field prev:F

.field final raw:[F

.field final re:[F

.field final sinT:[F

.field since:I

.field final win:[F


# direct methods
.method constructor <init>()V
    .registers 11

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/16 v0, 0x190

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->hist:[F

    const/16 v0, 0x190

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->raw:[F

    const/16 v0, 0x190

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->win:[F

    .line 65
    const/16 v0, 0x200

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    const/16 v0, 0x200

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    const/16 v0, 0x100

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->cosT:[F

    const/16 v0, 0x100

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->sinT:[F

    .line 66
    const/16 v0, 0x101

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->binW:[F

    .line 67
    const/16 v0, 0x101

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->binIdx:[I

    .line 68
    const/16 v0, 0xc

    const/16 v1, 0x1a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->dct:[[F

    .line 73
    const/4 v0, 0x0

    :goto_4c
    const/16 v1, 0x190

    if-ge v0, v1, :cond_75

    .line 74
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->win:[F

    const-wide v2, 0x3fe147ae147ae148L    # 0.54

    const-wide v4, 0x3fdd70a3d70a3d71L    # 0.46

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x4078f00000000000L    # 399.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 76
    :cond_75
    const/4 v0, 0x0

    :goto_76
    const/16 v1, 0x100

    if-ge v0, v1, :cond_a3

    .line 77
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->cosT:[F

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    .line 78
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->sinT:[F

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4080000000000000L    # 512.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_76

    .line 80
    :cond_a3
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Front;->mel(F)F

    move-result v1

    const v0, 0x45ed8000    # 7600.0f

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Front;->mel(F)F

    move-result v2

    .line 81
    const/16 v0, 0x1c

    new-array v3, v0, [F

    .line 82
    const/4 v0, 0x0

    :goto_b5
    const/16 v4, 0x1c

    if-ge v0, v4, :cond_c6

    .line 83
    sub-float v4, v2, v1

    int-to-float v5, v0

    mul-float/2addr v4, v5

    const/high16 v5, 0x41d80000    # 27.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    aput v4, v3, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 85
    :cond_c6
    const/4 v0, 0x0

    move v1, v0

    :goto_c8
    const/16 v0, 0x101

    if-ge v1, v0, :cond_10a

    .line 86
    int-to-float v0, v1

    const/high16 v2, 0x467a0000    # 16000.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x44000000    # 512.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WakeWord$Front;->mel(F)F

    move-result v2

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->binIdx:[I

    const/4 v4, -0x1

    aput v4, v0, v1

    .line 88
    const/4 v0, 0x0

    :goto_dd
    const/16 v4, 0x1a

    if-gt v0, v4, :cond_106

    .line 89
    aget v4, v3, v0

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_103

    add-int/lit8 v4, v0, 0x1

    aget v4, v3, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_103

    .line 90
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->binIdx:[I

    aput v0, v4, v1

    .line 91
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->binW:[F

    aget v5, v3, v0

    sub-float v5, v2, v5

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    aget v7, v3, v0

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    aput v5, v4, v1

    .line 88
    :cond_103
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 85
    :cond_106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c8

    .line 95
    :cond_10a
    const/4 v0, 0x0

    move v1, v0

    :goto_10c
    const/16 v0, 0xc

    if-ge v1, v0, :cond_138

    .line 96
    const/4 v0, 0x0

    :goto_111
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_134

    .line 97
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->dct:[[F

    aget-object v2, v2, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-int/lit8 v3, v1, 0x1

    int-to-double v6, v3

    mul-double/2addr v4, v6

    int-to-double v6, v0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x403a000000000000L    # 26.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    aput v3, v2, v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_111

    .line 95
    :cond_134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10c

    .line 100
    :cond_138
    return-void
.end method

.method static mel(F)F
    .registers 9

    .prologue
    .line 103
    const-wide v0, 0x40919c0000000000L    # 1127.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    float-to-double v4, p0

    const-wide v6, 0x4085e00000000000L    # 700.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method fft()V
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/16 v11, 0x200

    .line 155
    const/4 v0, 0x1

    move v2, v1

    move v3, v0

    :goto_6
    if-ge v3, v11, :cond_39

    .line 156
    const/16 v0, 0x100

    .line 157
    :goto_a
    and-int v4, v2, v0

    if-eqz v4, :cond_12

    .line 158
    xor-int/2addr v2, v0

    .line 157
    shr-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 160
    :cond_12
    xor-int/2addr v2, v0

    .line 161
    if-ge v3, v2, :cond_35

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    aget v0, v0, v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    aget v5, v5, v2

    aput v5, v4, v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    aput v0, v4, v2

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aget v0, v0, v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aget v5, v5, v2

    aput v5, v4, v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aput v0, v4, v2

    .line 155
    :cond_35
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 166
    :cond_39
    const/4 v0, 0x2

    move v3, v0

    :goto_3b
    if-gt v3, v11, :cond_9a

    .line 167
    div-int v4, v11, v3

    move v2, v1

    .line 168
    :goto_40
    if-ge v2, v11, :cond_96

    move v0, v1

    .line 169
    :goto_43
    div-int/lit8 v5, v3, 0x2

    if-ge v0, v5, :cond_92

    .line 170
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->cosT:[F

    mul-int v6, v0, v4

    aget v5, v5, v6

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->sinT:[F

    mul-int v7, v0, v4

    aget v6, v6, v7

    neg-float v6, v6

    .line 171
    add-int v7, v2, v0

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v8, v7

    .line 172
    iget-object v9, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    aget v9, v9, v8

    mul-float/2addr v9, v5

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aget v10, v10, v8

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    aget v10, v10, v8

    mul-float/2addr v6, v10

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aget v10, v10, v8

    mul-float/2addr v5, v10

    add-float/2addr v5, v6

    .line 173
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    aget v10, v10, v7

    sub-float/2addr v10, v9

    aput v10, v6, v8

    .line 174
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aget v10, v10, v7

    sub-float/2addr v10, v5

    aput v10, v6, v8

    .line 175
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    aget v8, v6, v7

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 176
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aget v8, v6, v7

    add-float/2addr v5, v8

    aput v5, v6, v7

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 168
    :cond_92
    add-int v0, v2, v3

    move v2, v0

    goto :goto_40

    .line 166
    :cond_96
    shl-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3b

    .line 180
    :cond_9a
    return-void
.end method

.method push(S[F[F)Z
    .registers 15

    .prologue
    const/high16 v10, 0x43c80000    # 400.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v1, 0x190

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 108
    int-to-float v2, p1

    const v3, 0x3f7851ec    # 0.97f

    iget v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->prev:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 109
    int-to-float v3, p1

    iput v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->prev:F

    .line 110
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->hist:[F

    iget v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->fill:I

    aput v2, v3, v5

    .line 111
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->raw:[F

    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->fill:I

    int-to-float v5, p1

    aput v5, v2, v3

    .line 112
    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->fill:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v2, v2, 0x190

    iput v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->fill:I

    .line 113
    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->since:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->since:I

    const/16 v3, 0xa0

    if-ge v2, v3, :cond_33

    .line 151
    :goto_32
    return v0

    .line 116
    :cond_33
    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->since:I

    move v2, v0

    move v3, v4

    .line 118
    :goto_37
    if-ge v2, v1, :cond_41

    .line 119
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->raw:[F

    aget v5, v5, v2

    add-float/2addr v3, v5

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 121
    :cond_41
    div-float v5, v3, v10

    move v2, v0

    move v3, v4

    .line 122
    :goto_45
    if-ge v2, v1, :cond_6c

    .line 123
    iget v6, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->fill:I

    add-int/2addr v6, v2

    rem-int/lit16 v6, v6, 0x190

    .line 124
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->raw:[F

    aget v7, v7, v6

    sub-float/2addr v7, v5

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->win:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    .line 125
    mul-float/2addr v7, v7

    add-float/2addr v3, v7

    .line 126
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->hist:[F

    aget v6, v8, v6

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->win:[F

    aget v8, v8, v2

    mul-float/2addr v6, v8

    aput v6, v7, v2

    .line 127
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aput v4, v6, v2

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 129
    :cond_6c
    :goto_6c
    const/16 v2, 0x200

    if-ge v1, v2, :cond_7b

    .line 130
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    aput v4, v2, v1

    .line 131
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aput v4, v2, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 133
    :cond_7b
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-float v1, v3, v10

    add-float/2addr v1, v9

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-float v1, v2

    aput v1, p3, v0

    .line 134
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord$Front;->fft()V

    move v1, v0

    .line 135
    :goto_8d
    const/16 v2, 0x1a

    if-ge v1, v2, :cond_96

    .line 136
    aput v4, p2, v1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_8d

    .line 138
    :cond_96
    :goto_96
    const/16 v1, 0x101

    if-ge v0, v1, :cond_d5

    .line 139
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->binIdx:[I

    aget v1, v1, v0

    .line 140
    if-gez v1, :cond_a3

    .line 138
    :cond_a0
    :goto_a0
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 143
    :cond_a3
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->re:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aget v3, v3, v0

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->im:[F

    aget v4, v4, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 144
    const/16 v3, 0x1a

    if-ge v1, v3, :cond_c4

    .line 145
    aget v3, p2, v1

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->binW:[F

    aget v4, v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, p2, v1

    .line 147
    :cond_c4
    if-lez v1, :cond_a0

    .line 148
    add-int/lit8 v1, v1, -0x1

    aget v3, p2, v1

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->binW:[F

    aget v4, v4, v0

    sub-float v4, v9, v4

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    aput v2, p2, v1

    goto :goto_a0

    .line 151
    :cond_d5
    const/4 v0, 0x1

    goto/16 :goto_32
.end method
