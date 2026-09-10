.class public Lorg/apache/poi/ss/formula/functions/BaseNumberUtils;
.super Ljava/lang/Object;
.source "BaseNumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToDecimal(Ljava/lang/String;II)D
    .locals 20
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "base"    # I
    .param p2, "maxNumberOfPlaces"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 28
    move/from16 v0, p1

    move/from16 v1, p2

    if-eqz p0, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 32
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    .line 33
    .local v2, "stringLength":J
    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-gtz v6, :cond_9

    .line 37
    const-wide/16 v4, 0x0

    .line 39
    .local v4, "decimalValue":D
    const-wide/16 v6, 0x0

    .line 40
    .local v6, "signedDigit":J
    const/4 v8, 0x1

    .line 41
    .local v8, "hasSignedDigit":Z
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 42
    .local v9, "characters":[C
    move-object v10, v9

    .local v10, "arr$":[C
    array-length v11, v10

    .local v11, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v11, :cond_6

    aget-char v13, v10, v12

    .line 45
    .local v13, "character":C
    const/16 v14, 0x30

    if-gt v14, v13, :cond_1

    const/16 v14, 0x39

    if-gt v13, v14, :cond_1

    .line 46
    add-int/lit8 v14, v13, -0x30

    int-to-long v14, v14

    .local v14, "digit":J
    goto :goto_1

    .line 47
    .end local v14    # "digit":J
    :cond_1
    const/16 v14, 0x41

    if-gt v14, v13, :cond_2

    const/16 v14, 0x5a

    if-gt v13, v14, :cond_2

    .line 48
    add-int/lit8 v14, v13, -0x41

    add-int/lit8 v14, v14, 0xa

    int-to-long v14, v14

    .restart local v14    # "digit":J
    goto :goto_1

    .line 49
    .end local v14    # "digit":J
    :cond_2
    const/16 v14, 0x61

    if-gt v14, v13, :cond_3

    const/16 v14, 0x7a

    if-gt v13, v14, :cond_3

    .line 50
    add-int/lit8 v14, v13, -0x61

    add-int/lit8 v14, v14, 0xa

    int-to-long v14, v14

    .restart local v14    # "digit":J
    goto :goto_1

    .line 52
    .end local v14    # "digit":J
    :cond_3
    int-to-long v14, v0

    .line 55
    .restart local v14    # "digit":J
    :goto_1
    move-object/from16 v19, v9

    move-object/from16 v16, v10

    .end local v9    # "characters":[C
    .end local v10    # "arr$":[C
    .local v16, "arr$":[C
    .local v19, "characters":[C
    int-to-long v9, v0

    cmp-long v17, v14, v9

    if-gez v17, :cond_5

    .line 56
    if-eqz v8, :cond_4

    .line 57
    const/4 v8, 0x0

    .line 58
    move-wide v6, v14

    .line 60
    :cond_4
    int-to-double v9, v0

    mul-double v9, v9, v4

    move-wide/from16 v17, v6

    .end local v6    # "signedDigit":J
    .local v17, "signedDigit":J
    long-to-double v6, v14

    add-double v4, v9, v6

    .line 42
    .end local v13    # "character":C
    .end local v14    # "digit":J
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v10, v16

    move-wide/from16 v6, v17

    move-object/from16 v9, v19

    goto :goto_0

    .line 62
    .end local v17    # "signedDigit":J
    .restart local v6    # "signedDigit":J
    .restart local v13    # "character":C
    .restart local v14    # "digit":J
    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "character not allowed"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 42
    .end local v13    # "character":C
    .end local v14    # "digit":J
    .end local v16    # "arr$":[C
    .end local v19    # "characters":[C
    .restart local v9    # "characters":[C
    .restart local v10    # "arr$":[C
    :cond_6
    move-object/from16 v19, v9

    move-object/from16 v16, v10

    .line 66
    .end local v9    # "characters":[C
    .end local v10    # "arr$":[C
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    .restart local v19    # "characters":[C
    if-nez v8, :cond_7

    int-to-long v9, v1

    cmp-long v11, v2, v9

    if-nez v11, :cond_7

    div-int/lit8 v9, v0, 0x2

    int-to-long v9, v9

    cmp-long v11, v6, v9

    if-ltz v11, :cond_7

    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    .line 67
    .local v9, "isNegative":Z
    :goto_2
    if-eqz v9, :cond_8

    .line 68
    int-to-double v13, v0

    int-to-double v10, v1

    move-wide v15, v10

    move-wide/from16 v17, v4

    invoke-static/range {v13 .. v18}, Lorg/apache/poi/ss/formula/functions/BaseNumberUtils;->getTwoComplement(DDD)D

    move-result-wide v4

    .line 69
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    mul-double v4, v4, v10

    .line 72
    :cond_8
    return-wide v4

    .line 34
    .end local v4    # "decimalValue":D
    .end local v6    # "signedDigit":J
    .end local v8    # "hasSignedDigit":Z
    .end local v9    # "isNegative":Z
    .end local v19    # "characters":[C
    :cond_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 29
    .end local v2    # "stringLength":J
    :cond_a
    :goto_3
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private static getTwoComplement(DDD)D
    .locals 2
    .param p0, "base"    # D
    .param p2, "maxNumberOfPlaces"    # D
    .param p4, "decimalValue"    # D

    .line 76
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, p4

    return-wide v0
.end method
