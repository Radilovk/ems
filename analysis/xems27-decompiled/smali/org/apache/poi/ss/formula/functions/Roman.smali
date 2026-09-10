.class public Lorg/apache/poi/ss/formula/functions/Roman;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "Roman.java"


# static fields
.field public static final ROMAN:[Ljava/lang/String;

.field public static final VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 46
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Roman;->VALUES:[I

    .line 47
    const-string v1, "M"

    const-string v2, "CM"

    const-string v3, "D"

    const-string v4, "CD"

    const-string v5, "C"

    const-string v6, "XC"

    const-string v7, "L"

    const-string v8, "XL"

    const-string v9, "X"

    const-string v10, "IX"

    const-string v11, "V"

    const-string v12, "IV"

    const-string v13, "I"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Roman;->ROMAN:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3e8
        0x384
        0x1f4
        0x190
        0x64
        0x5a
        0x32
        0x28
        0xa
        0x9
        0x5
        0x4
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method

.method private integerToRoman(I)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xd

    if-ge v1, v2, :cond_1

    .line 98
    :goto_1
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Roman;->VALUES:[I

    aget v3, v2, v1

    if-lt p1, v3, :cond_0

    .line 99
    aget v2, v2, v1

    sub-int/2addr p1, v2

    .line 100
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Roman;->ROMAN:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "numberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "formVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "number":I
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    .line 55
    .local v1, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v2
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v2

    .line 58
    .end local v1    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 59
    if-gez v0, :cond_0

    .line 60
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 62
    :cond_0
    const/16 v1, 0xf9f

    if-le v0, v1, :cond_1

    .line 63
    sget-object v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v1

    .line 65
    :cond_1
    if-nez v0, :cond_2

    .line 66
    new-instance v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string v2, ""

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 71
    .local v1, "form":I
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    .line 72
    .local v2, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v3
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    .line 75
    .end local v2    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    nop

    .line 77
    const/4 v2, 0x4

    if-gt v1, v2, :cond_5

    if-gez v1, :cond_3

    goto :goto_0

    .line 81
    :cond_3
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/functions/Roman;->integerToRoman(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "result":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 84
    new-instance v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v3, v2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 87
    :cond_4
    new-instance v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/ss/formula/functions/Roman;->makeConcise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 78
    .end local v2    # "result":Ljava/lang/String;
    :cond_5
    :goto_0
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v2

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v3, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v3

    .line 56
    .end local v1    # "form":I
    .end local v2    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v2
.end method

.method public makeConcise(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "form"    # I

    .line 113
    const-string v0, "LMVL"

    if-lez p2, :cond_0

    .line 114
    const-string v1, "XLV"

    const-string v2, "VL"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    const-string v1, "XCV"

    const-string v2, "VC"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    const-string v1, "CDL"

    const-string v2, "LD"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    const-string v1, "CML"

    const-string v2, "LM"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    const-string v1, "CMVC"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    :cond_0
    const-string v1, "XLIX"

    const-string v2, "XCIX"

    const-string v3, "CMXC"

    const-string v4, "CDVC"

    const-string v5, "CDXC"

    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 121
    const-string v7, "LDXL"

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    const-string v7, "LDVL"

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    const-string v7, "LMXL"

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    const-string v7, "VCIV"

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    const-string v7, "VLIV"

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_1
    const-string v7, "XMIX"

    const-string v8, "XMV"

    const-string v9, "XDIX"

    const-string v10, "XDV"

    if-le p2, v6, :cond_2

    .line 128
    const-string v6, "IL"

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    const-string v1, "IC"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    const-string v1, "XD"

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p1, v4, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    const-string v1, "CDIC"

    invoke-virtual {p1, v1, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    const-string v0, "CMIC"

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    const-string v0, "XM"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_2
    const/4 v0, 0x2

    const-string v1, "VMIV"

    const-string v2, "VDIV"

    if-le p2, v0, :cond_3

    .line 138
    const-string v0, "VD"

    invoke-virtual {p1, v10, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    const-string v0, "VM"

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 144
    const-string v0, "ID"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    const-string v0, "IM"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    :cond_4
    return-object p1
.end method
