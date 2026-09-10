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

    .prologue
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
    .locals 4
    .param p0, "val"    # D
    .param p2, "exactDenom"    # I

    .prologue
    .line 35
    int-to-double v2, p2

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 36
    .local v0, "num":I
    new-instance v1, Lorg/apache/poi/ss/format/SimpleFraction;

    invoke-direct {v1, v0, p2}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v1
.end method

.method private static buildFractionMaxDenominator(DDII)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 34
    .param p0, "value"    # D
    .param p2, "epsilon"    # D
    .param p4, "maxDenominator"    # I
    .param p5, "maxIterations"    # I

    .prologue
    .line 78
    const-wide/32 v12, 0x7fffffff

    .line 79
    .local v12, "overflow":J
    move-wide/from16 v26, p0

    .line 80
    .local v26, "r0":D
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-long v4, v0

    .line 81
    .local v4, "a0":J
    cmp-long v30, v4, v12

    if-lez v30, :cond_0

    .line 82
    new-instance v30, Ljava/lang/IllegalArgumentException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Overflow trying to convert "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to fraction ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-wide/16 v32, 0x1

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 87
    :cond_0
    long-to-double v0, v4

    move-wide/from16 v30, v0

    sub-double v30, v30, p0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    cmpg-double v30, v30, p2

    if-gez v30, :cond_1

    .line 88
    new-instance v30, Lorg/apache/poi/ss/format/SimpleFraction;

    long-to-int v0, v4

    move/from16 v31, v0

    const/16 v32, 0x1

    invoke-direct/range {v30 .. v32}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    .line 137
    :goto_0
    return-object v30

    .line 91
    :cond_1
    const-wide/16 v14, 0x1

    .line 92
    .local v14, "p0":J
    const-wide/16 v20, 0x0

    .line 93
    .local v20, "q0":J
    move-wide/from16 v16, v4

    .line 94
    .local v16, "p1":J
    const-wide/16 v22, 0x1

    .line 99
    .local v22, "q1":J
    const/4 v10, 0x0

    .line 100
    .local v10, "n":I
    const/4 v11, 0x0

    .line 102
    .local v11, "stop":Z
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 103
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    long-to-double v0, v4

    move-wide/from16 v32, v0

    sub-double v32, v26, v32

    div-double v28, v30, v32

    .line 104
    .local v28, "r1":D
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-long v6, v0

    .line 105
    .local v6, "a1":J
    mul-long v30, v6, v16

    add-long v18, v30, v14

    .line 106
    .local v18, "p2":J
    mul-long v30, v6, v22

    add-long v24, v30, v20

    .line 108
    .local v24, "q2":J
    const-wide/16 v30, 0x0

    cmpl-double v30, p2, v30

    if-nez v30, :cond_3

    if-lez p4, :cond_3

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v30

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-lez v30, :cond_3

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v30

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v32, v0

    cmp-long v30, v30, v32

    if-gez v30, :cond_3

    .line 111
    new-instance v30, Lorg/apache/poi/ss/format/SimpleFraction;

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v31, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    goto :goto_0

    .line 113
    :cond_3
    cmp-long v30, v18, v12

    if-gtz v30, :cond_4

    cmp-long v30, v24, v12

    if-lez v30, :cond_5

    .line 114
    :cond_4
    new-instance v30, Ljava/lang/RuntimeException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Overflow trying to convert "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to fraction ("

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ")"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 117
    :cond_5
    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v8, v30, v32

    .line 118
    .local v8, "convergent":D
    move/from16 v0, p5

    if-ge v10, v0, :cond_6

    sub-double v30, v8, p0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    cmpl-double v30, v30, p2

    if-lez v30, :cond_6

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v30, v0

    cmp-long v30, v24, v30

    if-gez v30, :cond_6

    .line 119
    move-wide/from16 v14, v16

    .line 120
    move-wide/from16 v16, v18

    .line 121
    move-wide/from16 v20, v22

    .line 122
    move-wide/from16 v22, v24

    .line 123
    move-wide v4, v6

    .line 124
    move-wide/from16 v26, v28

    .line 128
    :goto_1
    if-eqz v11, :cond_2

    .line 130
    move/from16 v0, p5

    if-lt v10, v0, :cond_7

    .line 131
    new-instance v30, Ljava/lang/RuntimeException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unable to convert "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " to fraction after "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " iterations"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 126
    :cond_6
    const/4 v11, 0x1

    goto :goto_1

    .line 134
    :cond_7
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v30, v0

    cmp-long v30, v24, v30

    if-gez v30, :cond_8

    .line 135
    new-instance v30, Lorg/apache/poi/ss/format/SimpleFraction;

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v31, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    goto/16 :goto_0

    .line 137
    :cond_8
    new-instance v30, Lorg/apache/poi/ss/format/SimpleFraction;

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v31, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    goto/16 :goto_0
.end method

.method public static buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 6
    .param p0, "value"    # D
    .param p2, "maxDenominator"    # I

    .prologue
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

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/poi/ss/format/SimpleFraction;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/apache/poi/ss/format/SimpleFraction;->numerator:I

    return v0
.end method
