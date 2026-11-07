.class public final Lcom/isaigu/gymapp/wearable/face/FaceTimeline;
.super Ljava/lang/Object;
.source "FaceTimeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    }
.end annotation


# instance fields
.field private final end:[J

.field private final hz:[S

.field private final level:[F

.field private n:I

.field private final phase:[B

.field private final start:[J

.field private final total:J


# direct methods
.method private constructor <init>(IJ)V
    .registers 6

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->start:[J

    .line 36
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->end:[J

    .line 37
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    .line 38
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->phase:[B

    .line 39
    new-array v0, p1, [S

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->hz:[S

    .line 40
    iput-wide p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->total:J

    .line 41
    return-void
.end method

.method private add(DDFII)V
    .registers 19

    .prologue
    .line 84
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 85
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    .line 86
    cmp-long v2, v6, v4

    if-gtz v2, :cond_d

    .line 100
    :goto_c
    return-void

    .line 89
    :cond_d
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    if-lez v2, :cond_6b

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->phase:[B

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    move/from16 v0, p6

    if-ne v2, v0, :cond_6b

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_66

    const/4 v2, 0x1

    move v3, v2

    :goto_2c
    const/4 v2, 0x0

    cmpl-float v2, p5, v2

    if-lez v2, :cond_69

    const/4 v2, 0x1

    :goto_32
    if-ne v3, v2, :cond_6b

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->end:[J

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    cmp-long v2, v2, v4

    if-nez v2, :cond_6b

    const/4 v2, 0x0

    cmpl-float v2, p5, v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    sub-float v2, v2, p5

    .line 90
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v8, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v2, v8

    if-gez v2, :cond_6b

    .line 91
    :cond_5d
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->end:[J

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    add-int/lit8 v3, v3, -0x1

    aput-wide v6, v2, v3

    goto :goto_c

    .line 89
    :cond_66
    const/4 v2, 0x0

    move v3, v2

    goto :goto_2c

    :cond_69
    const/4 v2, 0x0

    goto :goto_32

    .line 94
    :cond_6b
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->start:[J

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    aput-wide v4, v2, v3

    .line 95
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->end:[J

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    aput-wide v6, v2, v3

    .line 96
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    aput p5, v2, v3

    .line 97
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->phase:[B

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    move/from16 v0, p6

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    .line 98
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->hz:[S

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    move/from16 v0, p7

    int-to-short v4, v0

    aput-short v4, v2, v3

    .line 99
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    goto/16 :goto_c
.end method

.method public static cycle(JIIIII)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 15

    .prologue
    .line 164
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    .line 165
    const/4 v0, 0x1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    .line 166
    const/4 v0, 0x0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    add-long v6, v4, v0

    .line 167
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_4e

    rem-long v0, p0, v6

    add-long/2addr v0, v6

    rem-long/2addr v0, v6

    .line 168
    :goto_23
    iput p6, v3, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    .line 169
    cmp-long v2, v0, v4

    if-gez v2, :cond_51

    const/4 v2, 0x1

    :goto_2a
    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    .line 170
    iget-boolean v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    if-eqz v2, :cond_62

    .line 171
    const/high16 v2, 0x3f800000    # 1.0f

    .line 172
    if-lez p4, :cond_53

    int-to-long v6, p4

    cmp-long v6, v0, v6

    if-gez v6, :cond_53

    .line 173
    long-to-float v2, v0

    int-to-float v6, p4

    div-float/2addr v2, v6

    .line 177
    :cond_3c
    :goto_3c
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    .line 178
    sub-long v0, v4, v0

    iput-wide v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    .line 182
    :goto_4d
    return-object v3

    .line 167
    :cond_4e
    const-wide/16 v0, 0x0

    goto :goto_23

    .line 169
    :cond_51
    const/4 v2, 0x0

    goto :goto_2a

    .line 174
    :cond_53
    if-lez p5, :cond_3c

    int-to-long v6, p5

    sub-long v6, v4, v6

    cmp-long v6, v0, v6

    if-lez v6, :cond_3c

    .line 175
    sub-long v6, v4, v0

    long-to-float v2, v6

    int-to-float v6, p5

    div-float/2addr v2, v6

    goto :goto_3c

    .line 180
    :cond_62
    sub-long v0, v6, v0

    iput-wide v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    goto :goto_4d
.end method

.method public static of(Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;I)Lcom/isaigu/gymapp/wearable/face/FaceTimeline;
    .registers 22

    .prologue
    .line 45
    const/4 v2, 0x2

    .line 46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    .line 47
    const/4 v3, 0x0

    .line 48
    iget-object v5, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v3

    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 49
    iget v3, v3, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v5

    move v5, v3

    .line 50
    goto :goto_1e

    .line 51
    :cond_31
    add-int/lit8 v3, v5, 0x1

    iget v2, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v4

    move v4, v2

    .line 52
    goto :goto_a

    .line 53
    :cond_39
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;

    invoke-virtual/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->ms()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;-><init>(IJ)V

    .line 54
    const-wide/16 v4, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 57
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v12, v2

    :goto_61
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;

    .line 58
    if-nez v12, :cond_dd

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_dd

    const/4 v9, 0x0

    .line 59
    :goto_7b
    const/4 v6, 0x0

    move v13, v6

    :goto_7d
    iget v6, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->repeat:I

    if-ge v13, v6, :cond_106

    .line 60
    iget-object v6, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->blocks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_87
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;

    .line 61
    const/4 v6, 0x0

    move v14, v6

    :goto_96
    iget v6, v11, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->repeat:I

    if-ge v14, v6, :cond_87

    .line 62
    const-wide v6, 0x40c3880000000000L    # 10000.0

    iget v8, v11, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    int-to-double v0, v8

    move-wide/from16 v18, v0

    div-double v6, v6, v18

    iget v8, v11, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->cluster:I

    int-to-double v0, v8

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    .line 63
    iget v6, v11, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->freq10:I

    div-int/lit8 v10, v6, 0xa

    .line 64
    const/16 v6, 0x14

    if-lt v10, v6, :cond_ee

    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, v11, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->impulse:I

    int-to-float v7, v7

    move/from16 v0, p1

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 65
    :goto_c2
    add-double v6, v4, v18

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->add(DDFII)V

    .line 66
    add-double v4, v4, v18

    .line 67
    iget v6, v11, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    if-lez v6, :cond_d9

    .line 68
    iget v6, v11, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    int-to-double v6, v6

    add-double/2addr v6, v4

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->add(DDFII)V

    .line 69
    iget v6, v11, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Block;->interval:I

    int-to-double v6, v6

    add-double/2addr v4, v6

    .line 61
    :cond_d9
    add-int/lit8 v6, v14, 0x1

    move v14, v6

    goto :goto_96

    .line 58
    :cond_dd
    if-ne v12, v15, :cond_ec

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok;->sections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_ec

    const/4 v9, 0x2

    goto :goto_7b

    :cond_ec
    const/4 v9, 0x1

    goto :goto_7b

    .line 64
    :cond_ee
    const/4 v8, 0x0

    goto :goto_c2

    .line 73
    :cond_f0
    iget v6, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->interval:I

    if-lez v6, :cond_101

    .line 74
    iget v6, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->interval:I

    int-to-double v6, v6

    add-double/2addr v6, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->add(DDFII)V

    .line 75
    iget v6, v2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLok$Section;->interval:I

    int-to-double v6, v6

    add-double/2addr v4, v6

    .line 59
    :cond_101
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    goto/16 :goto_7d

    .line 78
    :cond_106
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    .line 79
    goto/16 :goto_61

    .line 80
    :cond_10b
    return-object v3
.end method


# virtual methods
.method public at(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
    .registers 16

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 108
    new-instance v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;-><init>()V

    .line 109
    iput-wide p1, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->elapsedMs:J

    .line 110
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->total:J

    iput-wide v2, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->totalMs:J

    .line 111
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    if-eqz v2, :cond_18

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->total:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_27

    .line 112
    :cond_18
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->total:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_25

    :goto_1e
    iput-boolean v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->done:Z

    .line 113
    const/4 v0, 0x2

    iput v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->phase:I

    move-object v0, v6

    .line 156
    :goto_24
    return-object v0

    :cond_25
    move v0, v1

    .line 112
    goto :goto_1e

    .line 117
    :cond_27
    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    add-int/lit8 v2, v2, -0x1

    move v4, v1

    .line 118
    :goto_2c
    if-ge v4, v2, :cond_42

    .line 119
    add-int v3, v4, v2

    add-int/lit8 v3, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1

    .line 120
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->start:[J

    aget-wide v8, v7, v3

    cmp-long v7, v8, p1

    if-gtz v7, :cond_3e

    :goto_3c
    move v4, v3

    .line 125
    goto :goto_2c

    .line 123
    :cond_3e
    add-int/lit8 v2, v3, -0x1

    move v3, v4

    goto :goto_3c

    .line 126
    :cond_42
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 127
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->phase:[B

    aget-byte v3, v3, v2

    iput v3, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->phase:I

    .line 128
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->hz:[S

    aget-short v3, v3, v2

    iput v3, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    .line 129
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    aget v3, v3, v2

    cmpl-float v3, v3, v5

    if-lez v3, :cond_82

    :goto_5a
    iput-boolean v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    .line 132
    iget-boolean v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->on:Z

    if-eqz v0, :cond_e0

    move v0, v2

    .line 133
    :goto_61
    add-int/lit8 v1, v0, 0x1

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    if-ge v1, v3, :cond_84

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    cmpl-float v1, v1, v5

    if-lez v1, :cond_84

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->start:[J

    add-int/lit8 v3, v0, 0x1

    aget-wide v8, v1, v3

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->end:[J

    aget-wide v10, v1, v0

    cmp-long v1, v8, v10

    if-nez v1, :cond_84

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_82
    move v0, v1

    .line 129
    goto :goto_5a

    .line 137
    :cond_84
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    aget v4, v1, v2

    move v3, v2

    .line 138
    :goto_89
    if-lez v3, :cond_a6

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    add-int/lit8 v7, v3, -0x1

    aget v1, v1, v7

    cmpl-float v1, v1, v5

    if-lez v1, :cond_a6

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->end:[J

    add-int/lit8 v7, v3, -0x1

    aget-wide v8, v1, v7

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->start:[J

    aget-wide v10, v1, v3

    cmp-long v1, v8, v10

    if-nez v1, :cond_a6

    .line 139
    add-int/lit8 v3, v3, -0x1

    goto :goto_89

    :cond_a6
    move v1, v3

    .line 141
    :goto_a7
    if-gt v1, v0, :cond_b4

    .line 142
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    aget v7, v7, v1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    .line 144
    :cond_b4
    cmpl-float v1, v4, v5

    if-lez v1, :cond_d3

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    aget v1, v1, v2

    div-float/2addr v1, v4

    :goto_bd
    iput v1, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->level:F

    move v1, v3

    .line 145
    :goto_c0
    if-gt v1, v0, :cond_d5

    .line 146
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->hz:[S

    aget-short v2, v2, v1

    iget v3, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    if-le v2, v3, :cond_d0

    .line 147
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->hz:[S

    aget-short v2, v2, v1

    iput v2, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->hz:I

    .line 145
    :cond_d0
    add-int/lit8 v1, v1, 0x1

    goto :goto_c0

    :cond_d3
    move v1, v5

    .line 144
    goto :goto_bd

    :cond_d5
    move v2, v0

    .line 155
    :cond_d6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->end:[J

    aget-wide v0, v0, v2

    sub-long/2addr v0, p1

    iput-wide v0, v6, Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;->leftMs:J

    move-object v0, v6

    .line 156
    goto/16 :goto_24

    .line 151
    :cond_e0
    :goto_e0
    add-int/lit8 v0, v2, 0x1

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->n:I

    if-ge v0, v1, :cond_d6

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->level:[F

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    cmpl-float v0, v0, v5

    if-nez v0, :cond_d6

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->start:[J

    add-int/lit8 v1, v2, 0x1

    aget-wide v0, v0, v1

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->end:[J

    aget-wide v8, v3, v2

    cmp-long v0, v0, v8

    if-nez v0, :cond_d6

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_e0
.end method

.method public totalMs()J
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceTimeline;->total:J

    return-wide v0
.end method
