.class public Lorg/apache/poi/ss/formula/functions/BaseNumberUtils;
.super Ljava/lang/Object;
.source "BaseNumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToDecimal(Ljava/lang/String;II)D
    .locals 22
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "base"    # I
    .param p2, "maxNumberOfPlaces"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 28
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 29
    :cond_0
    const-wide/16 v6, 0x0

    .line 72
    :cond_1
    :goto_0
    return-wide v6

    .line 32
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 33
    .local v20, "stringLength":J
    move/from16 v0, p2

    int-to-long v2, v0

    cmp-long v2, v20, v2

    if-lez v2, :cond_3

    .line 34
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 37
    :cond_3
    const-wide/16 v6, 0x0

    .line 39
    .local v6, "decimalValue":D
    const-wide/16 v18, 0x0

    .line 40
    .local v18, "signedDigit":J
    const/4 v11, 0x1

    .line 41
    .local v11, "hasSignedDigit":Z
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 42
    .local v10, "characters":[C
    move-object v8, v10

    .local v8, "arr$":[C
    array-length v0, v8

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_9

    aget-char v9, v8, v14

    .line 45
    .local v9, "character":C
    const/16 v2, 0x30

    if-gt v2, v9, :cond_5

    const/16 v2, 0x39

    if-gt v9, v2, :cond_5

    .line 46
    add-int/lit8 v2, v9, -0x30

    int-to-long v12, v2

    .line 55
    .local v12, "digit":J
    :goto_2
    move/from16 v0, p1

    int-to-long v2, v0

    cmp-long v2, v12, v2

    if-gez v2, :cond_8

    .line 56
    if-eqz v11, :cond_4

    .line 57
    const/4 v11, 0x0

    .line 58
    move-wide/from16 v18, v12

    .line 60
    :cond_4
    move/from16 v0, p1

    int-to-double v2, v0

    mul-double/2addr v2, v6

    long-to-double v4, v12

    add-double v6, v2, v4

    .line 42
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 47
    .end local v12    # "digit":J
    :cond_5
    const/16 v2, 0x41

    if-gt v2, v9, :cond_6

    const/16 v2, 0x5a

    if-gt v9, v2, :cond_6

    .line 48
    add-int/lit8 v2, v9, -0x41

    add-int/lit8 v2, v2, 0xa

    int-to-long v12, v2

    .restart local v12    # "digit":J
    goto :goto_2

    .line 49
    .end local v12    # "digit":J
    :cond_6
    const/16 v2, 0x61

    if-gt v2, v9, :cond_7

    const/16 v2, 0x7a

    if-gt v9, v2, :cond_7

    .line 50
    add-int/lit8 v2, v9, -0x61

    add-int/lit8 v2, v2, 0xa

    int-to-long v12, v2

    .restart local v12    # "digit":J
    goto :goto_2

    .line 52
    .end local v12    # "digit":J
    :cond_7
    move/from16 v0, p1

    int-to-long v12, v0

    .restart local v12    # "digit":J
    goto :goto_2

    .line 62
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "character not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v9    # "character":C
    .end local v12    # "digit":J
    :cond_9
    if-nez v11, :cond_a

    move/from16 v0, p2

    int-to-long v2, v0

    cmp-long v2, v20, v2

    if-nez v2, :cond_a

    div-int/lit8 v2, p1, 0x2

    int-to-long v2, v2

    cmp-long v2, v18, v2

    if-ltz v2, :cond_a

    const/4 v15, 0x1

    .line 67
    .local v15, "isNegative":Z
    :goto_3
    if-eqz v15, :cond_1

    .line 68
    move/from16 v0, p1

    int-to-double v2, v0

    move/from16 v0, p2

    int-to-double v4, v0

    invoke-static/range {v2 .. v7}, Lorg/apache/poi/ss/formula/functions/BaseNumberUtils;->getTwoComplement(DDD)D

    move-result-wide v6

    .line 69
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v6, v2

    goto/16 :goto_0

    .line 66
    .end local v15    # "isNegative":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_3
.end method

.method private static getTwoComplement(DDD)D
    .locals 2
    .param p0, "base"    # D
    .param p2, "maxNumberOfPlaces"    # D
    .param p4, "decimalValue"    # D

    .prologue
    .line 76
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, p4

    return-wide v0
.end method
