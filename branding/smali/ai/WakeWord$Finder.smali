.class final Lcom/isaigu/gymapp/ai/WakeWord$Finder;
.super Ljava/lang/Object;
.source "WakeWord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeWord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Finder"
.end annotation


# static fields
.field static final NH:I = 0x96

.field static final SETTLE:I = 0x28


# instance fields
.field LOUD_DB:F

.field MAXLEN:I

.field MINLEN:I

.field OFF_DB:F

.field ON_DB:F

.field POST_Q:I

.field PRE_Q:I

.field QUIET_DB:F

.field REC_POST_Q:I

.field above:I

.field floorDb:F

.field hi:I

.field final hist:[F

.field lastAct:I

.field lenient:Z

.field loudRun:I

.field nh:I

.field final noise:[F

.field peak:F

.field qEnd:J

.field quietRun:I

.field final ring:[[F

.field s0:I

.field skipped:Z

.field spread:F

.field state:I

.field t:I

.field w0:I

.field w1:I

.field wPeak:F


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->ON_DB:F

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->QUIET_DB:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->OFF_DB:F

    const/high16 v0, 0x41900000    # 18.0f

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->LOUD_DB:F

    .line 187
    const/16 v0, 0x14

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->PRE_Q:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->POST_Q:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->MINLEN:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->MAXLEN:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->REC_POST_Q:I

    .line 189
    const/16 v0, 0x96

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->hist:[F

    .line 192
    const/16 v0, 0x12c

    const/16 v1, 0x1b

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->ring:[[F

    .line 193
    const/16 v0, 0x1a

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->noise:[F

    .line 197
    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->qEnd:J

    return-void
.end method

.method static q(F)B
    .registers 4

    .prologue
    .line 340
    const/16 v0, -0x7f

    const/16 v1, 0x7f

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method frame([FF)Z
    .registers 14

    .prologue
    .line 205
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_e

    .line 206
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    .line 207
    const/4 v0, 0x0

    .line 287
    :goto_d
    return v0

    .line 209
    :cond_e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->ring:[[F

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    rem-int/lit16 v1, v1, 0x12c

    aget-object v0, v0, v1

    .line 210
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1a

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    const/16 v1, 0x1a

    aput p2, v0, v1

    .line 212
    const/4 v2, 0x0

    .line 213
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_33

    .line 214
    iput p2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    .line 215
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->noise:[F

    const/4 v3, 0x0

    const/16 v4, 0x1a

    invoke-static {p1, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    :cond_33
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->ON_DB:F

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->spread:F

    const/high16 v3, 0x41000000    # 8.0f

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 218
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    if-nez v0, :cond_e8

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    add-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_e8

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->loudRun:I

    add-int/lit8 v0, v0, 0x1

    :goto_4d
    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->loudRun:I

    .line 219
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6b

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->loudRun:I

    const/16 v3, 0x64

    if-gt v0, v3, :cond_6b

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    if-nez v0, :cond_93

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->nh:I

    const/16 v3, 0x14

    if-lt v0, v3, :cond_6b

    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_93

    .line 220
    :cond_6b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->hist:[F

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->hi:I

    aput p2, v0, v1

    .line 221
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->hi:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x96

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->hi:I

    .line 222
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->nh:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_85

    .line 223
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->nh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->nh:I

    .line 225
    :cond_85
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->nh:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_eb

    .line 226
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    .line 231
    :cond_93
    :goto_93
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->QUIET_DB:F

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->spread:F

    const/high16 v3, 0x40400000    # 3.0f

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 232
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->ON_DB:F

    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->spread:F

    const/high16 v4, 0x41000000    # 8.0f

    add-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 233
    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->OFF_DB:F

    iget v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->spread:F

    const/high16 v5, 0x40800000    # 4.0f

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 234
    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->LOUD_DB:F

    iget v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->spread:F

    const/high16 v6, 0x41400000    # 12.0f

    add-float/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 235
    iget v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    add-float/2addr v0, v4

    cmpg-float v0, p2, v0

    if-gez v0, :cond_f5

    const/4 v0, 0x1

    .line 236
    :goto_c7
    iget v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_f7

    if-eqz v0, :cond_f7

    .line 237
    const/4 v4, 0x0

    :goto_cf
    const/16 v6, 0x1a

    if-ge v4, v6, :cond_f7

    .line 238
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->noise:[F

    aget v7, v6, v4

    const v8, 0x3d4ccccd    # 0.05f

    aget v9, p1, v4

    iget-object v10, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->noise:[F

    aget v10, v10, v4

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v6, v4

    .line 237
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 218
    :cond_e8
    const/4 v0, 0x0

    goto/16 :goto_4d

    .line 227
    :cond_eb
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_93

    .line 228
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->stats()V

    goto :goto_93

    .line 235
    :cond_f5
    const/4 v0, 0x0

    goto :goto_c7

    .line 241
    :cond_f7
    iget v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    if-nez v4, :cond_164

    .line 242
    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->lenient:Z

    if-eqz v4, :cond_104

    const/high16 v4, 0x40400000    # 3.0f

    sub-float/2addr v1, v4

    :cond_104
    add-float/2addr v1, v3

    cmpl-float v1, p2, v1

    if-lez v1, :cond_162

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->above:I

    add-int/lit8 v1, v1, 0x1

    :goto_10d
    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->above:I

    .line 243
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->above:I

    const/4 v3, 0x3

    if-lt v1, v3, :cond_1e0

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    int-to-long v4, v1

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->qEnd:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1e

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1e0

    .line 244
    const/4 v1, 0x1

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    .line 245
    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->qEnd:J

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    add-int/lit8 v1, v1, -0x5

    int-to-long v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 246
    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->s0:I

    .line 247
    iput p2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->peak:F

    .line 248
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->lastAct:I

    move v1, v2

    .line 278
    :goto_141
    if-eqz v0, :cond_1fb

    .line 279
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->quietRun:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->quietRun:I

    .line 280
    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->quietRun:I

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->lenient:Z

    if-eqz v0, :cond_1f7

    const/4 v0, 0x5

    :goto_150
    if-lt v2, v0, :cond_159

    .line 281
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->qEnd:J

    .line 286
    :cond_159
    :goto_159
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    move v0, v1

    .line 287
    goto/16 :goto_d

    .line 242
    :cond_162
    const/4 v1, 0x0

    goto :goto_10d

    .line 250
    :cond_164
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1e3

    .line 251
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->peak:F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->peak:F

    .line 252
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    add-float/2addr v1, v5

    iget v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->peak:F

    const/high16 v5, 0x420c0000    # 35.0f

    sub-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 253
    cmpl-float v1, p2, v1

    if-lez v1, :cond_185

    .line 254
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->lastAct:I

    .line 256
    :cond_185
    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->lenient:Z

    if-eqz v1, :cond_19d

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->REC_POST_Q:I

    .line 257
    :goto_18b
    iget v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    iget v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->s0:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->MAXLEN:I

    add-int/2addr v5, v1

    if-le v4, v5, :cond_1a0

    .line 258
    const/4 v1, 0x2

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->skipped:Z

    move v1, v2

    goto :goto_141

    .line 256
    :cond_19d
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->POST_Q:I

    goto :goto_18b

    .line 260
    :cond_1a0
    iget v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->t:I

    iget v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->lastAct:I

    sub-int/2addr v4, v5

    if-lt v4, v1, :cond_1e0

    .line 261
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    .line 262
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->above:I

    .line 263
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->lastAct:I

    add-int/lit8 v4, v1, 0x3

    .line 264
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->s0:I

    sub-int v1, v4, v1

    .line 265
    iget v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->MINLEN:I

    if-lt v1, v5, :cond_1dd

    iget v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->MAXLEN:I

    if-gt v1, v5, :cond_1dd

    iget v5, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->peak:F

    iget v6, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    iget-boolean v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->lenient:Z

    if-eqz v1, :cond_1db

    const/high16 v1, 0x40c00000    # 6.0f

    sub-float v1, v3, v1

    :goto_1c9
    add-float/2addr v1, v6

    cmpl-float v1, v5, v1

    if-lez v1, :cond_1dd

    .line 266
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->s0:I

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->w0:I

    .line 267
    iput v4, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->w1:I

    .line 268
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->peak:F

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->wPeak:F

    .line 269
    const/4 v1, 0x1

    goto/16 :goto_141

    :cond_1db
    move v1, v3

    .line 265
    goto :goto_1c9

    .line 271
    :cond_1dd
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->skipped:Z

    :cond_1e0
    :goto_1e0
    move v1, v2

    goto/16 :goto_141

    .line 274
    :cond_1e3
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1e0

    if-eqz v0, :cond_1e0

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->quietRun:I

    iget v3, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->POST_Q:I

    if-lt v1, v3, :cond_1e0

    .line 275
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->state:I

    .line 276
    const/4 v1, 0x0

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->above:I

    goto :goto_1e0

    .line 280
    :cond_1f7
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->PRE_Q:I

    goto/16 :goto_150

    .line 284
    :cond_1fb
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->quietRun:I

    goto/16 :goto_159
.end method

.method span(Lcom/isaigu/gymapp/ai/WakeWord$Word;Lcom/isaigu/gymapp/ai/WakeWord$Front;IIF)V
    .registers 22

    .prologue
    .line 300
    sub-int v10, p4, p3

    .line 301
    const/16 v2, 0x80

    add-int/lit8 v3, v10, 0x1

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 302
    const/16 v2, 0xd

    filled-new-array {v11, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 303
    const/16 v3, 0x1a

    filled-new-array {v11, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 304
    const/4 v8, 0x0

    .line 305
    const/16 v4, 0xd

    new-array v12, v4, [F

    .line 306
    const/4 v4, 0x0

    move v9, v4

    :goto_2f
    if-ge v9, v11, :cond_98

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->ring:[[F

    mul-int/lit8 v5, v9, 0x2

    add-int v5, v5, p3

    rem-int/lit16 v5, v5, 0x12c

    aget-object v5, v4, v5

    .line 308
    mul-int/lit8 v4, v9, 0x2

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v10, :cond_7e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->ring:[[F

    mul-int/lit8 v6, v9, 0x2

    add-int v6, v6, p3

    add-int/lit8 v6, v6, 0x1

    rem-int/lit16 v6, v6, 0x12c

    aget-object v4, v4, v6

    .line 309
    :goto_51
    const/4 v6, 0x0

    move v7, v6

    :goto_53
    const/16 v6, 0x1a

    if-ge v7, v6, :cond_82

    .line 310
    aget v6, v5, v7

    aget v13, v4, v7

    add-float/2addr v6, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v6, v13

    const/high16 v13, 0x3fc00000    # 1.5f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->noise:[F

    aget v14, v14, v7

    mul-float/2addr v13, v14

    sub-float/2addr v6, v13

    .line 311
    aget-object v13, v3, v9

    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-lez v14, :cond_80

    :goto_70
    aput v6, v13, v7

    .line 312
    aget-object v6, v3, v9

    aget v6, v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 309
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_53

    :cond_7e
    move-object v4, v5

    .line 308
    goto :goto_51

    .line 311
    :cond_80
    const/4 v6, 0x0

    goto :goto_70

    .line 314
    :cond_82
    aget-object v6, v2, v9

    const/16 v7, 0xc

    const/16 v13, 0x1a

    aget v5, v5, v13

    const/16 v13, 0x1a

    aget v4, v4, v13

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    aput v4, v6, v7

    .line 306
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_2f

    .line 316
    :cond_98
    const v4, 0x3a83126f    # 0.001f

    mul-float/2addr v4, v8

    const/high16 v5, 0x3f800000    # 1.0f

    add-float v8, v4, v5

    .line 317
    const/4 v4, 0x0

    move v7, v4

    :goto_a2
    if-ge v7, v11, :cond_eb

    .line 318
    const/4 v4, 0x0

    :goto_a5
    const/16 v5, 0x1a

    if-ge v4, v5, :cond_bb

    .line 319
    aget-object v5, v3, v7

    aget-object v6, v3, v7

    aget v6, v6, v4

    add-float/2addr v6, v8

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    double-to-float v6, v14

    aput v6, v5, v4

    .line 318
    add-int/lit8 v4, v4, 0x1

    goto :goto_a5

    .line 321
    :cond_bb
    const/4 v4, 0x0

    move v6, v4

    :goto_bd
    const/16 v4, 0xc

    if-ge v6, v4, :cond_e7

    .line 322
    const/4 v5, 0x0

    .line 323
    const/4 v4, 0x0

    :goto_c3
    const/16 v9, 0x1a

    if-ge v4, v9, :cond_d8

    .line 324
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/isaigu/gymapp/ai/WakeWord$Front;->dct:[[F

    aget-object v9, v9, v6

    aget v9, v9, v4

    aget-object v10, v3, v7

    aget v10, v10, v4

    mul-float/2addr v9, v10

    add-float/2addr v5, v9

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    .line 326
    :cond_d8
    aget-object v4, v2, v7

    aput v5, v4, v6

    .line 327
    aget v4, v12, v6

    int-to-float v9, v11

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    aput v4, v12, v6

    .line 321
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_bd

    .line 317
    :cond_e7
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_a2

    .line 330
    :cond_eb
    const/4 v3, 0x0

    move v4, v3

    :goto_ed
    if-ge v4, v11, :cond_12a

    .line 331
    const/4 v3, 0x0

    :goto_f0
    const/16 v5, 0xc

    if-ge v3, v5, :cond_10d

    .line 332
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    aget-object v5, v5, v4

    aget-object v6, v2, v4

    aget v6, v6, v3

    aget v7, v12, v3

    sub-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->q(F)B

    move-result v6

    aput-byte v6, v5, v3

    .line 331
    add-int/lit8 v3, v3, 0x1

    goto :goto_f0

    .line 334
    :cond_10d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->f:[[B

    aget-object v3, v3, v4

    const/16 v5, 0xc

    aget-object v6, v2, v4

    const/16 v7, 0xc

    aget v6, v6, v7

    sub-float v6, v6, p5

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->q(F)B

    move-result v6

    aput-byte v6, v3, v5

    .line 330
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_ed

    .line 336
    :cond_12a
    move-object/from16 v0, p1

    iput v11, v0, Lcom/isaigu/gymapp/ai/WakeWord$Word;->n:I

    .line 337
    return-void
.end method

.method stats()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 291
    iget v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->nh:I

    new-array v0, v0, [F

    .line 292
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->hist:[F

    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->nh:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    .line 294
    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->nh:I

    div-int/lit8 v1, v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    .line 295
    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->nh:I

    mul-int/lit8 v2, v2, 0x9

    div-int/lit8 v2, v2, 0xa

    aget v0, v0, v2

    iget v2, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->floorDb:F

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/ai/WakeWord$Finder;->spread:F

    .line 296
    return-void
.end method
