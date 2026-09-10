.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_TWO:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 35
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 37
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 39
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 45
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 49
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 51
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 53
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 55
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 57
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 59
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 61
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 63
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 65
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 71
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static compare(BB)I
    .locals 1
    .param p0, "x"    # B
    .param p1, "y"    # B

    .prologue
    .line 1823
    sub-int v0, p0, p1

    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 1772
    if-ne p0, p1, :cond_0

    .line 1773
    const/4 v0, 0x0

    .line 1775
    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 1789
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 1790
    const/4 v0, 0x0

    .line 1792
    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compare(SS)I
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .prologue
    .line 1806
    if-ne p0, p1, :cond_0

    .line 1807
    const/4 v0, 0x0

    .line 1809
    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 983
    if-nez p0, :cond_0

    .line 984
    const/4 v0, 0x0

    .line 997
    :goto_0
    return-object v0

    .line 987
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 995
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 948
    if-nez p0, :cond_1

    .line 949
    const/4 v3, 0x0

    .line 970
    :cond_0
    :goto_0
    return-object v3

    .line 951
    :cond_1
    const/4 v1, 0x0

    .line 952
    .local v1, "pos":I
    const/16 v2, 0xa

    .line 953
    .local v2, "radix":I
    const/4 v0, 0x0

    .line 954
    .local v0, "negate":Z
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 955
    const/4 v0, 0x1

    .line 956
    const/4 v1, 0x1

    .line 958
    :cond_2
    const-string v4, "0x"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "0X"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 959
    :cond_3
    const/16 v2, 0x10

    .line 960
    add-int/lit8 v1, v1, 0x2

    .line 969
    :cond_4
    :goto_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 970
    .local v3, "value":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    .line 961
    .end local v3    # "value":Ljava/math/BigInteger;
    :cond_5
    const-string v4, "#"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 962
    const/16 v2, 0x10

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 964
    :cond_6
    const-string v4, "0"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_4

    .line 965
    const/16 v2, 0x8

    .line 966
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 894
    if-nez p0, :cond_0

    .line 895
    const/4 v0, 0x0

    .line 897
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 878
    if-nez p0, :cond_0

    .line 879
    const/4 v0, 0x0

    .line 881
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 912
    if-nez p0, :cond_0

    .line 913
    const/4 v0, 0x0

    .line 916
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 931
    if-nez p0, :cond_0

    .line 932
    const/4 v0, 0x0

    .line 934
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 26
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 651
    if-nez p0, :cond_1

    .line 652
    const/4 v11, 0x0

    .line 816
    :cond_0
    :goto_0
    return-object v11

    .line 654
    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 655
    new-instance v21, Ljava/lang/NumberFormatException;

    const-string v22, "A blank string is not a valid number"

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 658
    :cond_2
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v14, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "0x"

    aput-object v22, v14, v21

    const/16 v21, 0x1

    const-string v22, "0X"

    aput-object v22, v14, v21

    const/16 v21, 0x2

    const-string v22, "-0x"

    aput-object v22, v14, v21

    const/16 v21, 0x3

    const-string v22, "-0X"

    aput-object v22, v14, v21

    const/16 v21, 0x4

    const-string v22, "#"

    aput-object v22, v14, v21

    const/16 v21, 0x5

    const-string v22, "-#"

    aput-object v22, v14, v21

    .line 659
    .local v14, "hex_prefixes":[Ljava/lang/String;
    const/16 v20, 0x0

    .line 660
    .local v20, "pfxLen":I
    array-length v0, v14

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget-object v19, v14, v21

    .line 661
    .local v19, "pfx":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 662
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    add-int v20, v20, v21

    .line 666
    .end local v19    # "pfx":Ljava/lang/String;
    :cond_3
    if-lez v20, :cond_a

    .line 667
    const/4 v12, 0x0

    .line 668
    .local v12, "firstSigDigit":C
    move/from16 v15, v20

    .local v15, "i":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_5

    .line 669
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 670
    const/16 v21, 0x30

    move/from16 v0, v21

    if-ne v12, v0, :cond_5

    .line 671
    add-int/lit8 v20, v20, 0x1

    .line 668
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 660
    .end local v12    # "firstSigDigit":C
    .end local v15    # "i":I
    .restart local v19    # "pfx":Ljava/lang/String;
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 676
    .end local v19    # "pfx":Ljava/lang/String;
    .restart local v12    # "firstSigDigit":C
    .restart local v15    # "i":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    sub-int v13, v21, v20

    .line 677
    .local v13, "hexDigits":I
    const/16 v21, 0x10

    move/from16 v0, v21

    if-gt v13, v0, :cond_6

    const/16 v21, 0x10

    move/from16 v0, v21

    if-ne v13, v0, :cond_7

    const/16 v21, 0x37

    move/from16 v0, v21

    if-le v12, v0, :cond_7

    .line 678
    :cond_6
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    goto/16 :goto_0

    .line 680
    :cond_7
    const/16 v21, 0x8

    move/from16 v0, v21

    if-gt v13, v0, :cond_8

    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v13, v0, :cond_9

    const/16 v21, 0x37

    move/from16 v0, v21

    if-le v12, v0, :cond_9

    .line 681
    :cond_8
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    goto/16 :goto_0

    .line 683
    :cond_9
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 685
    .end local v12    # "firstSigDigit":C
    .end local v13    # "hexDigits":I
    .end local v15    # "i":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 689
    .local v16, "lastChar":C
    const/16 v21, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 690
    .local v8, "decPos":I
    const/16 v21, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    const/16 v22, 0x45

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    add-int v21, v21, v22

    add-int/lit8 v10, v21, 0x1

    .line 694
    .local v10, "expPos":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v8, v0, :cond_e

    .line 695
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v10, v0, :cond_d

    .line 696
    if-lt v10, v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-le v10, v0, :cond_c

    .line 697
    :cond_b
    new-instance v21, Ljava/lang/NumberFormatException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not a valid number."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 699
    :cond_c
    add-int/lit8 v21, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 703
    .local v7, "dec":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 715
    .local v17, "mant":Ljava/lang/String;
    :goto_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isDigit(C)Z

    move-result v21

    if-nez v21, :cond_19

    const/16 v21, 0x2e

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    .line 716
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v10, v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v10, v0, :cond_11

    .line 717
    add-int/lit8 v21, v10, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 722
    .local v9, "exp":Ljava/lang/String;
    :goto_5
    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 723
    .local v18, "numeric":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_12

    const/4 v4, 0x1

    .line 724
    .local v4, "allZeros":Z
    :goto_6
    sparse-switch v16, :sswitch_data_0

    .line 770
    :goto_7
    new-instance v21, Ljava/lang/NumberFormatException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not a valid number."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 701
    .end local v4    # "allZeros":Z
    .end local v7    # "dec":Ljava/lang/String;
    .end local v9    # "exp":Ljava/lang/String;
    .end local v17    # "mant":Ljava/lang/String;
    .end local v18    # "numeric":Ljava/lang/String;
    :cond_d
    add-int/lit8 v21, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "dec":Ljava/lang/String;
    goto :goto_3

    .line 705
    .end local v7    # "dec":Ljava/lang/String;
    :cond_e
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v10, v0, :cond_10

    .line 706
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-le v10, v0, :cond_f

    .line 707
    new-instance v21, Ljava/lang/NumberFormatException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not a valid number."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 709
    :cond_f
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 713
    .restart local v17    # "mant":Ljava/lang/String;
    :goto_8
    const/4 v7, 0x0

    .restart local v7    # "dec":Ljava/lang/String;
    goto/16 :goto_4

    .line 711
    .end local v7    # "dec":Ljava/lang/String;
    .end local v17    # "mant":Ljava/lang/String;
    :cond_10
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "mant":Ljava/lang/String;
    goto :goto_8

    .line 719
    .restart local v7    # "dec":Ljava/lang/String;
    :cond_11
    const/4 v9, 0x0

    .restart local v9    # "exp":Ljava/lang/String;
    goto/16 :goto_5

    .line 723
    .restart local v18    # "numeric":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_6

    .line 727
    .restart local v4    # "allZeros":Z
    :sswitch_0
    if-nez v7, :cond_15

    if-nez v9, :cond_15

    .line 729
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_13

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_14

    :cond_13
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 731
    :cond_14
    :try_start_0
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto/16 :goto_0

    .line 732
    :catch_0
    move-exception v21

    .line 735
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    goto/16 :goto_0

    .line 738
    :cond_15
    new-instance v21, Ljava/lang/NumberFormatException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is not a valid number."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 742
    :sswitch_1
    :try_start_1
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    .line 743
    .local v11, "f":Ljava/lang/Float;
    invoke-virtual {v11}, Ljava/lang/Float;->isInfinite()Z

    move-result v21

    if-nez v21, :cond_16

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_0

    if-nez v4, :cond_0

    .line 756
    .end local v11    # "f":Ljava/lang/Float;
    :cond_16
    :goto_9
    :sswitch_2
    :try_start_2
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 757
    .local v6, "d":Ljava/lang/Double;
    invoke-virtual {v6}, Ljava/lang/Double;->isInfinite()Z

    move-result v21

    if-nez v21, :cond_18

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmpl-double v21, v22, v24

    if-nez v21, :cond_17

    if-eqz v4, :cond_18

    :cond_17
    move-object v11, v6

    .line 758
    goto/16 :goto_0

    .line 760
    .end local v6    # "d":Ljava/lang/Double;
    :catch_1
    move-exception v21

    .line 764
    :cond_18
    :try_start_3
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v11

    goto/16 :goto_0

    .line 776
    .end local v4    # "allZeros":Z
    .end local v9    # "exp":Ljava/lang/String;
    .end local v18    # "numeric":Ljava/lang/String;
    :cond_19
    const/16 v21, -0x1

    move/from16 v0, v21

    if-le v10, v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-ge v10, v0, :cond_1a

    .line 777
    add-int/lit8 v21, v10, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 781
    .restart local v9    # "exp":Ljava/lang/String;
    :goto_a
    if-nez v7, :cond_1b

    if-nez v9, :cond_1b

    .line 784
    :try_start_4
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v11

    goto/16 :goto_0

    .line 779
    .end local v9    # "exp":Ljava/lang/String;
    :cond_1a
    const/4 v9, 0x0

    .restart local v9    # "exp":Ljava/lang/String;
    goto :goto_a

    .line 785
    :catch_2
    move-exception v21

    .line 789
    :try_start_5
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v11

    goto/16 :goto_0

    .line 790
    :catch_3
    move-exception v21

    .line 793
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v11

    goto/16 :goto_0

    .line 797
    :cond_1b
    invoke-static/range {v17 .. v17}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f

    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1f

    const/4 v4, 0x1

    .line 799
    .restart local v4    # "allZeros":Z
    :goto_b
    :try_start_6
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    .line 800
    .restart local v11    # "f":Ljava/lang/Float;
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 801
    .restart local v6    # "d":Ljava/lang/Double;
    invoke-virtual {v11}, Ljava/lang/Float;->isInfinite()Z

    move-result v21

    if-nez v21, :cond_1d

    .line 802
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_1c

    if-eqz v4, :cond_1d

    .line 803
    :cond_1c
    invoke-virtual {v11}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v6}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 806
    :cond_1d
    invoke-virtual {v6}, Ljava/lang/Double;->isInfinite()Z

    move-result v21

    if-nez v21, :cond_21

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmpl-double v21, v22, v24

    if-nez v21, :cond_1e

    if-eqz v4, :cond_21

    .line 807
    :cond_1e
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 808
    .local v5, "b":Ljava/math/BigDecimal;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v21

    if-nez v21, :cond_20

    move-object v11, v6

    .line 809
    goto/16 :goto_0

    .line 797
    .end local v4    # "allZeros":Z
    .end local v5    # "b":Ljava/math/BigDecimal;
    .end local v6    # "d":Ljava/lang/Double;
    .end local v11    # "f":Ljava/lang/Float;
    :cond_1f
    const/4 v4, 0x0

    goto :goto_b

    .restart local v4    # "allZeros":Z
    .restart local v5    # "b":Ljava/math/BigDecimal;
    .restart local v6    # "d":Ljava/lang/Double;
    .restart local v11    # "f":Ljava/lang/Float;
    :cond_20
    move-object v11, v5

    .line 811
    goto/16 :goto_0

    .line 813
    .end local v5    # "b":Ljava/math/BigDecimal;
    .end local v6    # "d":Ljava/lang/Double;
    .end local v11    # "f":Ljava/lang/Float;
    :catch_4
    move-exception v21

    .line 816
    :cond_21
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v11

    goto/16 :goto_0

    .line 765
    .restart local v18    # "numeric":Ljava/lang/String;
    :catch_5
    move-exception v21

    goto/16 :goto_7

    .line 749
    :catch_6
    move-exception v21

    goto/16 :goto_9

    .line 724
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static getMantissa(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 828
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stopPos"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 841
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 842
    .local v0, "firstChar":C
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_0

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_1

    :cond_0
    move v1, v3

    .line 844
    .local v1, "hasSign":Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .end local v1    # "hasSign":Z
    :cond_1
    move v1, v2

    .line 842
    goto :goto_0

    .line 844
    .restart local v1    # "hasSign":Z
    :cond_2
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 856
    if-nez p0, :cond_1

    .line 864
    :cond_0
    :goto_0
    return v1

    .line 859
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 860
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    move v1, v2

    .line 861
    goto :goto_0

    .line 859
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 864
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isCreatable(Ljava/lang/String;)Z
    .locals 15
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x39

    const/16 v13, 0x2e

    const/16 v12, 0x30

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1599
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1708
    :cond_0
    :goto_0
    return v9

    .line 1602
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1603
    .local v1, "chars":[C
    array-length v7, v1

    .line 1604
    .local v7, "sz":I
    const/4 v4, 0x0

    .line 1605
    .local v4, "hasExp":Z
    const/4 v3, 0x0

    .line 1606
    .local v3, "hasDecPoint":Z
    const/4 v0, 0x0

    .line 1607
    .local v0, "allowSigns":Z
    const/4 v2, 0x0

    .line 1609
    .local v2, "foundDigit":Z
    aget-char v10, v1, v9

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_2

    aget-char v10, v1, v9

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_7

    :cond_2
    move v6, v8

    .line 1610
    .local v6, "start":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_b

    aget-char v10, v1, v6

    if-ne v10, v12, :cond_b

    invoke-static {p0, v13}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1611
    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-eq v10, v11, :cond_3

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x58

    if-ne v10, v11, :cond_9

    .line 1612
    :cond_3
    add-int/lit8 v5, v6, 0x2

    .line 1613
    .local v5, "i":I
    if-eq v5, v7, :cond_0

    .line 1617
    :goto_2
    array-length v10, v1

    if-ge v5, v10, :cond_8

    .line 1618
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_4

    aget-char v10, v1, v5

    if-le v10, v14, :cond_6

    :cond_4
    aget-char v10, v1, v5

    const/16 v11, 0x61

    if-lt v10, v11, :cond_5

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-le v10, v11, :cond_6

    :cond_5
    aget-char v10, v1, v5

    const/16 v11, 0x41

    if-lt v10, v11, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-gt v10, v11, :cond_0

    .line 1617
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    .end local v6    # "start":I
    :cond_7
    move v6, v9

    .line 1609
    goto :goto_1

    .restart local v5    # "i":I
    .restart local v6    # "start":I
    :cond_8
    move v9, v8

    .line 1624
    goto :goto_0

    .line 1625
    .end local v5    # "i":I
    :cond_9
    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1627
    add-int/lit8 v5, v6, 0x1

    .line 1628
    .restart local v5    # "i":I
    :goto_3
    array-length v10, v1

    if-ge v5, v10, :cond_a

    .line 1629
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x37

    if-gt v10, v11, :cond_0

    .line 1628
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    move v9, v8

    .line 1633
    goto :goto_0

    .line 1636
    .end local v5    # "i":I
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 1638
    move v5, v6

    .line 1641
    .restart local v5    # "i":I
    :goto_4
    if-lt v5, v7, :cond_c

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_12

    if-eqz v0, :cond_12

    if-nez v2, :cond_12

    .line 1642
    :cond_c
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_d

    aget-char v10, v1, v5

    if-gt v10, v14, :cond_d

    .line 1643
    const/4 v2, 0x1

    .line 1644
    const/4 v0, 0x0

    .line 1672
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1646
    :cond_d
    aget-char v10, v1, v5

    if-ne v10, v13, :cond_e

    .line 1647
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 1651
    const/4 v3, 0x1

    goto :goto_5

    .line 1652
    :cond_e
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_f

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_10

    .line 1654
    :cond_f
    if-nez v4, :cond_0

    .line 1658
    if-eqz v2, :cond_0

    .line 1661
    const/4 v4, 0x1

    .line 1662
    const/4 v0, 0x1

    goto :goto_5

    .line 1663
    :cond_10
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_11

    aget-char v10, v1, v5

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_0

    .line 1664
    :cond_11
    if-eqz v0, :cond_0

    .line 1667
    const/4 v0, 0x0

    .line 1668
    const/4 v2, 0x0

    goto :goto_5

    .line 1674
    :cond_12
    array-length v10, v1

    if-ge v5, v10, :cond_19

    .line 1675
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_13

    aget-char v10, v1, v5

    if-gt v10, v14, :cond_13

    move v9, v8

    .line 1677
    goto/16 :goto_0

    .line 1679
    :cond_13
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_0

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-eq v10, v11, :cond_0

    .line 1683
    aget-char v10, v1, v5

    if-ne v10, v13, :cond_14

    .line 1684
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    move v9, v2

    .line 1689
    goto/16 :goto_0

    .line 1691
    :cond_14
    if-nez v0, :cond_16

    aget-char v10, v1, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_15

    aget-char v10, v1, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_15

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-eq v10, v11, :cond_15

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-ne v10, v11, :cond_16

    :cond_15
    move v9, v2

    .line 1696
    goto/16 :goto_0

    .line 1698
    :cond_16
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_17

    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_0

    .line 1701
    :cond_17
    if-eqz v2, :cond_18

    if-nez v4, :cond_18

    if-nez v3, :cond_18

    :goto_6
    move v9, v8

    goto/16 :goto_0

    :cond_18
    move v8, v9

    goto :goto_6

    .line 1708
    :cond_19
    if-nez v0, :cond_1a

    if-eqz v2, :cond_1a

    :goto_7
    move v9, v8

    goto/16 :goto_0

    :cond_1a
    move v8, v9

    goto :goto_7
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1543
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1573
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->isCreatable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1729
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return v0

    .line 1732
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    .line 1735
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    .line 1736
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 1739
    invoke-static {p0, v3}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 1741
    :cond_2
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public static max(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1490
    if-le p1, p0, :cond_0

    .line 1491
    move p0, p1

    .line 1493
    :cond_0
    if-le p2, p0, :cond_1

    .line 1494
    move p0, p2

    .line 1496
    :cond_1
    return p0
.end method

.method public static varargs max([B)B
    .locals 3
    .param p0, "array"    # [B

    .prologue
    .line 1239
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1242
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 1243
    .local v1, "max":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1244
    aget-byte v2, p0, v0

    if-le v2, v1, :cond_0

    .line 1245
    aget-byte v1, p0, v0

    .line 1243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1249
    :cond_1
    return v1
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1512
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs max([D)D
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 1264
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1267
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1268
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1269
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1270
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1277
    .end local v2    # "max":D
    :cond_0
    return-wide v2

    .line 1272
    .restart local v2    # "max":D
    :cond_1
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_2

    .line 1273
    aget-wide v2, p0, v0

    .line 1268
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1528
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static varargs max([F)F
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 1292
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1295
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1296
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1297
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1298
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1305
    .end local v1    # "max":F
    :cond_0
    return v1

    .line 1300
    .restart local v1    # "max":F
    :cond_1
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 1301
    aget v1, p0, v0

    .line 1296
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static max(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1454
    if-le p1, p0, :cond_0

    .line 1455
    move p0, p1

    .line 1457
    :cond_0
    if-le p2, p0, :cond_1

    .line 1458
    move p0, p2

    .line 1460
    :cond_1
    return p0
.end method

.method public static varargs max([I)I
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 1191
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1194
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1195
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1196
    aget v2, p0, v0

    if-le v2, v1, :cond_0

    .line 1197
    aget v1, p0, v0

    .line 1195
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1201
    :cond_1
    return v1
.end method

.method public static max(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1436
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 1437
    move-wide p0, p2

    .line 1439
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 1440
    move-wide p0, p4

    .line 1442
    :cond_1
    return-wide p0
.end method

.method public static varargs max([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 1167
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1170
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1171
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1172
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 1173
    aget-wide v2, p0, v0

    .line 1171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    :cond_1
    return-wide v2
.end method

.method public static max(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1472
    if-le p1, p0, :cond_0

    .line 1473
    move p0, p1

    .line 1475
    :cond_0
    if-le p2, p0, :cond_1

    .line 1476
    move p0, p2

    .line 1478
    :cond_1
    return p0
.end method

.method public static varargs max([S)S
    .locals 3
    .param p0, "array"    # [S

    .prologue
    .line 1215
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1218
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 1219
    .local v1, "max":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1220
    aget-short v2, p0, v0

    if-le v2, v1, :cond_0

    .line 1221
    aget-short v1, p0, v0

    .line 1219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1225
    :cond_1
    return v1
.end method

.method public static min(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .prologue
    .line 1384
    if-ge p1, p0, :cond_0

    .line 1385
    move p0, p1

    .line 1387
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1388
    move p0, p2

    .line 1390
    :cond_1
    return p0
.end method

.method public static varargs min([B)B
    .locals 3
    .param p0, "array"    # [B

    .prologue
    .line 1085
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1088
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    .line 1089
    .local v1, "min":B
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1090
    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 1091
    aget-byte v1, p0, v0

    .line 1089
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1095
    :cond_1
    return v1
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .prologue
    .line 1406
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([D)D
    .locals 6
    .param p0, "array"    # [D

    .prologue
    .line 1110
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1113
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1114
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1115
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1116
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 1123
    .end local v2    # "min":D
    :cond_0
    return-wide v2

    .line 1118
    .restart local v2    # "min":D
    :cond_1
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_2

    .line 1119
    aget-wide v2, p0, v0

    .line 1114
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 1422
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static varargs min([F)F
    .locals 3
    .param p0, "array"    # [F

    .prologue
    .line 1138
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1141
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1142
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1143
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1144
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1151
    .end local v1    # "min":F
    :cond_0
    return v1

    .line 1146
    .restart local v1    # "min":F
    :cond_1
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 1147
    aget v1, p0, v0

    .line 1142
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static min(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 1348
    if-ge p1, p0, :cond_0

    .line 1349
    move p0, p1

    .line 1351
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1352
    move p0, p2

    .line 1354
    :cond_1
    return p0
.end method

.method public static varargs min([I)I
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 1037
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1040
    const/4 v2, 0x0

    aget v1, p0, v2

    .line 1041
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1042
    aget v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 1043
    aget v1, p0, v0

    .line 1041
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1047
    :cond_1
    return v1
.end method

.method public static min(JJJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .prologue
    .line 1330
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 1331
    move-wide p0, p2

    .line 1333
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 1334
    move-wide p0, p4

    .line 1336
    :cond_1
    return-wide p0
.end method

.method public static varargs min([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    .line 1013
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1016
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    .line 1017
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1018
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 1019
    aget-wide v2, p0, v0

    .line 1017
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1023
    :cond_1
    return-wide v2
.end method

.method public static min(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .prologue
    .line 1366
    if-ge p1, p0, :cond_0

    .line 1367
    move p0, p1

    .line 1369
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1370
    move p0, p2

    .line 1372
    :cond_1
    return p0
.end method

.method public static varargs min([S)S
    .locals 3
    .param p0, "array"    # [S

    .prologue
    .line 1061
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1064
    const/4 v2, 0x0

    aget-short v1, p0, v2

    .line 1065
    .local v1, "min":S
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1066
    aget-short v2, p0, v0

    if-ge v2, v1, :cond_0

    .line 1067
    aget-short v1, p0, v0

    .line 1065
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1071
    :cond_1
    return v1
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # B

    .prologue
    .line 369
    if-nez p0, :cond_0

    .line 375
    .end local p1    # "defaultValue":B
    :goto_0
    return p1

    .line 373
    .restart local p1    # "defaultValue":B
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 255
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 278
    if-nez p0, :cond_0

    .line 284
    .end local p1    # "defaultValue":D
    :goto_0
    return-wide p1

    .line 282
    .restart local p1    # "defaultValue":D
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toDouble(Ljava/math/BigDecimal;)D
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;

    .prologue
    .line 305
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/math/BigDecimal;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/math/BigDecimal;D)D
    .locals 1
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "defaultValue"    # D

    .prologue
    .line 326
    if-nez p0, :cond_0

    .end local p1    # "defaultValue":D
    :goto_0
    return-wide p1

    .restart local p1    # "defaultValue":D
    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    goto :goto_0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 232
    .end local p1    # "defaultValue":F
    :goto_0
    return p1

    .line 230
    .restart local p1    # "defaultValue":F
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 131
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 129
    .restart local p1    # "defaultValue":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 153
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 180
    .end local p1    # "defaultValue":J
    :goto_0
    return-wide p1

    .line 178
    .restart local p1    # "defaultValue":J
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Double;

    .prologue
    .line 518
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Double;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 534
    if-nez p0, :cond_0

    .line 535
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 537
    :goto_0
    return-object v0

    .line 538
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 537
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Float;

    .prologue
    .line 479
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Float;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 495
    if-nez p0, :cond_0

    .line 496
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 498
    :goto_0
    return-object v0

    .line 499
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 498
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 557
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 573
    if-nez p0, :cond_0

    .line 574
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 576
    :goto_0
    return-object v0

    .line 577
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 576
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;

    .prologue
    .line 441
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 457
    if-nez p0, :cond_0

    .line 458
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 460
    .end local p2    # "roundingMode":Ljava/math/RoundingMode;
    :goto_0
    return-object v0

    .restart local p2    # "roundingMode":Ljava/math/RoundingMode;
    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .end local p2    # "roundingMode":Ljava/math/RoundingMode;
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # S

    .prologue
    .line 418
    if-nez p0, :cond_0

    .line 424
    .end local p1    # "defaultValue":S
    :goto_0
    return p1

    .line 422
    .restart local p1    # "defaultValue":S
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1315
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "The Array must not be null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1316
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    const-string v0, "Array cannot be empty."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    return-void

    :cond_0
    move v0, v2

    .line 1315
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1316
    goto :goto_1
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "beginIdx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1745
    const/4 v0, 0x0

    .line 1746
    .local v0, "decimalPoints":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 1747
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    move v2, v4

    .line 1748
    .local v2, "isDecimalPoint":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 1749
    add-int/lit8 v0, v0, 0x1

    .line 1751
    :cond_0
    if-le v0, v4, :cond_3

    .line 1758
    .end local v2    # "isDecimalPoint":Z
    :cond_1
    :goto_2
    return v3

    :cond_2
    move v2, v3

    .line 1747
    goto :goto_1

    .line 1754
    .restart local v2    # "isDecimalPoint":Z
    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1746
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "isDecimalPoint":Z
    :cond_5
    move v3, v4

    .line 1758
    goto :goto_2
.end method
