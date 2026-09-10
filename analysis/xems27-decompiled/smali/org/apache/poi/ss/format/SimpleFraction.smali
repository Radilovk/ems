.class public Lorg/apache/poi/ss/format/SimpleFraction;
.super Ljava/lang/Object;
.source "SimpleFraction.java"


# instance fields
.field private final denominator:I

.field private final numerator:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Lorg/apache/poi/ss/format/SimpleFraction;->numerator:I

    .line 150
    iput p2, p0, Lorg/apache/poi/ss/format/SimpleFraction;->denominator:I

    .line 151
    return-void
.end method

.method public static buildFractionExactDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 2
    .param p0, "val"    # D
    .param p2, "exactDenom"    # I

    .line 35
    int-to-double v0, p2

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 36
    .local v1, "num":I
    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    invoke-direct {v0, v1, p2}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0
.end method

.method private static buildFractionMaxDenominator(DDII)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 42
    .param p0, "value"    # D
    .param p2, "epsilon"    # D
    .param p4, "maxDenominator"    # I
    .param p5, "maxIterations"    # I

    .line 78
    move-wide/from16 v0, p0

    move/from16 v2, p4

    move/from16 v3, p5

    const-wide/32 v4, 0x7fffffff

    .line 79
    .local v4, "overflow":J
    move-wide/from16 v6, p0

    .line 80
    .local v6, "r0":D
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    .line 81
    .local v8, "a0":J
    const-string v10, ")"

    const-string v11, "/"

    const-string v12, " to fraction ("

    const-string v13, "Overflow trying to convert "

    cmp-long v14, v8, v4

    if-gtz v14, :cond_a

    .line 87
    long-to-double v14, v8

    sub-double/2addr v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    move-wide/from16 v16, v6

    .end local v6    # "r0":D
    .local v16, "r0":D
    const/4 v6, 0x1

    cmpg-double v7, v14, p2

    if-gez v7, :cond_0

    .line 88
    new-instance v7, Lorg/apache/poi/ss/format/SimpleFraction;

    long-to-int v10, v8

    invoke-direct {v7, v10, v6}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v7

    .line 91
    :cond_0
    const-wide/16 v14, 0x1

    .line 92
    .local v14, "p0":J
    const-wide/16 v18, 0x0

    .line 93
    .local v18, "q0":J
    move-wide/from16 v20, v8

    .line 94
    .local v20, "p1":J
    const-wide/16 v22, 0x1

    .line 99
    .local v22, "q1":J
    const/4 v7, 0x0

    .line 100
    .local v7, "n":I
    const/16 v24, 0x0

    move-wide/from16 v38, v20

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-wide/from16 v10, v38

    move-wide/from16 v40, v22

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-wide/from16 v12, v40

    .line 102
    .end local v20    # "p1":J
    .end local v22    # "q1":J
    .local v10, "p1":J
    .local v12, "q1":J
    .local v24, "stop":Z
    :goto_0
    add-int/2addr v7, v6

    .line 103
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    move/from16 v27, v7

    .end local v7    # "n":I
    .local v27, "n":I
    long-to-double v6, v8

    sub-double v6, v16, v6

    div-double v25, v25, v6

    .line 104
    .local v25, "r1":D
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    .line 105
    .local v6, "a1":J
    mul-long v28, v6, v10

    move-wide/from16 v30, v8

    .end local v8    # "a0":J
    .local v30, "a0":J
    add-long v8, v28, v14

    .line 106
    .local v8, "p2":J
    mul-long v28, v6, v12

    move-wide/from16 v32, v14

    .end local v14    # "p0":J
    .local v32, "p0":J
    add-long v14, v28, v18

    .line 108
    .local v14, "q2":J
    const-wide/16 v28, 0x0

    cmpl-double v34, p2, v28

    if-nez v34, :cond_1

    if-lez v2, :cond_1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v28

    move-wide/from16 v34, v6

    .end local v6    # "a1":J
    .local v34, "a1":J
    int-to-long v6, v2

    cmp-long v36, v28, v6

    if-lez v36, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    int-to-long v0, v2

    cmp-long v28, v6, v0

    if-gez v28, :cond_2

    .line 111
    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    long-to-int v1, v10

    long-to-int v6, v12

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    .line 108
    .end local v34    # "a1":J
    .restart local v6    # "a1":J
    :cond_1
    move-wide/from16 v34, v6

    .line 113
    .end local v6    # "a1":J
    .restart local v34    # "a1":J
    :cond_2
    cmp-long v0, v8, v4

    if-gtz v0, :cond_9

    cmp-long v0, v14, v4

    if-gtz v0, :cond_9

    .line 117
    long-to-double v0, v8

    long-to-double v6, v14

    div-double/2addr v0, v6

    .line 118
    .local v0, "convergent":D
    move/from16 v7, v27

    .end local v27    # "n":I
    .restart local v7    # "n":I
    if-ge v7, v3, :cond_4

    move-wide/from16 v27, v4

    move-wide/from16 v4, p0

    .end local v4    # "overflow":J
    .local v27, "overflow":J
    sub-double v36, v0, v4

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->abs(D)D

    move-result-wide v36

    cmpl-double v6, v36, p2

    if-lez v6, :cond_3

    move-wide/from16 v36, v0

    .end local v0    # "convergent":D
    .local v36, "convergent":D
    int-to-long v0, v2

    cmp-long v6, v14, v0

    if-gez v6, :cond_5

    .line 119
    move-wide v0, v10

    .line 120
    .end local v32    # "p0":J
    .local v0, "p0":J
    move-wide v10, v8

    .line 121
    move-wide/from16 v18, v12

    .line 122
    move-wide v12, v14

    .line 123
    move-wide/from16 v29, v34

    .line 124
    .end local v30    # "a0":J
    .local v29, "a0":J
    move-wide/from16 v16, v25

    goto :goto_2

    .line 118
    .end local v29    # "a0":J
    .end local v36    # "convergent":D
    .local v0, "convergent":D
    .restart local v30    # "a0":J
    .restart local v32    # "p0":J
    :cond_3
    move-wide/from16 v36, v0

    .end local v0    # "convergent":D
    .restart local v36    # "convergent":D
    goto :goto_1

    .end local v27    # "overflow":J
    .end local v36    # "convergent":D
    .restart local v0    # "convergent":D
    .restart local v4    # "overflow":J
    :cond_4
    move-wide/from16 v36, v0

    move-wide/from16 v27, v4

    move-wide/from16 v4, p0

    .line 126
    .end local v0    # "convergent":D
    .end local v4    # "overflow":J
    .restart local v27    # "overflow":J
    .restart local v36    # "convergent":D
    :cond_5
    :goto_1
    const/4 v0, 0x1

    move/from16 v24, v0

    move-wide/from16 v29, v30

    move-wide/from16 v0, v32

    .line 128
    .end local v25    # "r1":D
    .end local v30    # "a0":J
    .end local v32    # "p0":J
    .end local v34    # "a1":J
    .end local v36    # "convergent":D
    .local v0, "p0":J
    .restart local v29    # "a0":J
    :goto_2
    if-eqz v24, :cond_8

    .line 130
    if-ge v7, v3, :cond_7

    .line 134
    move-wide/from16 v25, v0

    .end local v0    # "p0":J
    .local v25, "p0":J
    int-to-long v0, v2

    cmp-long v6, v14, v0

    if-gez v6, :cond_6

    .line 135
    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    long-to-int v1, v8

    long-to-int v6, v14

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    .line 137
    :cond_6
    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    long-to-int v1, v10

    long-to-int v6, v12

    invoke-direct {v0, v1, v6}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    .line 131
    .end local v25    # "p0":J
    .restart local v0    # "p0":J
    :cond_7
    move-wide/from16 v25, v0

    .end local v0    # "p0":J
    .restart local v25    # "p0":J
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to convert "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " to fraction after "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " iterations"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    .end local v25    # "p0":J
    .restart local v0    # "p0":J
    :cond_8
    move-wide/from16 v25, v0

    .end local v0    # "p0":J
    .restart local v25    # "p0":J
    move-wide v0, v4

    move-wide/from16 v14, v25

    move-wide/from16 v4, v27

    move-wide/from16 v8, v29

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 113
    .end local v7    # "n":I
    .end local v29    # "a0":J
    .restart local v4    # "overflow":J
    .local v25, "r1":D
    .local v27, "n":I
    .restart local v30    # "a0":J
    .restart local v32    # "p0":J
    .restart local v34    # "a1":J
    :cond_9
    move/from16 v7, v27

    move-wide/from16 v27, v4

    move-wide/from16 v4, p0

    .line 114
    .end local v4    # "overflow":J
    .restart local v7    # "n":I
    .local v27, "overflow":J
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v23

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v6, v22

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v21

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    .end local v7    # "n":I
    .end local v10    # "p1":J
    .end local v12    # "q1":J
    .end local v14    # "q2":J
    .end local v16    # "r0":D
    .end local v18    # "q0":J
    .end local v24    # "stop":Z
    .end local v25    # "r1":D
    .end local v27    # "overflow":J
    .end local v30    # "a0":J
    .end local v32    # "p0":J
    .end local v34    # "a1":J
    .restart local v4    # "overflow":J
    .local v6, "r0":D
    .local v8, "a0":J
    :cond_a
    move-wide/from16 v27, v4

    move-wide/from16 v16, v6

    move-object v7, v12

    move-object v6, v13

    move-wide v4, v0

    move-object v0, v10

    move-object v1, v11

    .end local v4    # "overflow":J
    .end local v6    # "r0":D
    .restart local v16    # "r0":D
    .restart local v27    # "overflow":J
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x1

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public static buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 6
    .param p0, "value"    # D
    .param p2, "maxDenominator"    # I

    .line 51
    const-wide/16 v2, 0x0

    const/16 v5, 0x64

    move-wide v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DDII)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDenominator()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/apache/poi/ss/format/SimpleFraction;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    .line 166
    iget v0, p0, Lorg/apache/poi/ss/format/SimpleFraction;->numerator:I

    return v0
.end method
