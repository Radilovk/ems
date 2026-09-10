.class public Lorg/apache/poi/ss/formula/functions/Roman;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "Roman.java"


# static fields
.field public static final ROMAN:[Ljava/lang/String;

.field public static final VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0xd

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Roman;->VALUES:[I

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "M"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "XC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "L"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "XL"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "IX"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "IV"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "I"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Roman;->ROMAN:[Ljava/lang/String;

    return-void

    .line 46
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

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method

.method private integerToRoman(I)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # I

    .prologue
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xd

    if-ge v0, v2, :cond_1

    .line 98
    :goto_1
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Roman;->VALUES:[I

    aget v2, v2, v0

    if-lt p1, v2, :cond_0

    .line 99
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Roman;->VALUES:[I

    aget v2, v2, v0

    sub-int/2addr p1, v2

    .line 100
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Roman;->ROMAN:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7
    .param p1, "srcRowIndex"    # I
    .param p2, "srcColumnIndex"    # I
    .param p3, "numberVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;
    .param p4, "formVE"    # Lorg/apache/poi/ss/formula/eval/ValueEval;

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, "number":I
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 55
    .local v4, "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 59
    if-gez v2, :cond_0

    .line 60
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 87
    .end local v4    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :goto_0
    return-object v5

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 62
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    .restart local v4    # "ve":Lorg/apache/poi/ss/formula/eval/ValueEval;
    :cond_0
    const/16 v5, 0xf9f

    if-le v2, v5, :cond_1

    .line 63
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 65
    :cond_1
    if-nez v2, :cond_2

    .line 66
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string v6, ""

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_2
    const/4 v1, 0x0

    .line 71
    .local v1, "form":I
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v4

    .line 72
    invoke-static {v4}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 77
    const/4 v5, 0x4

    if-gt v1, v5, :cond_3

    if-gez v1, :cond_4

    .line 78
    :cond_3
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    .restart local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    sget-object v5, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    goto :goto_0

    .line 81
    .end local v0    # "e":Lorg/apache/poi/ss/formula/eval/EvaluationException;
    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/functions/Roman;->integerToRoman(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "result":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 84
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v5, v3}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_5
    new-instance v5, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p0, v3, v1}, Lorg/apache/poi/ss/formula/functions/Roman;->makeConcise(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public makeConcise(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "form"    # I

    .prologue
    const/4 v2, 0x1

    .line 113
    if-lez p2, :cond_0

    .line 114
    const-string v0, "XLV"

    const-string v1, "VL"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    const-string v0, "XCV"

    const-string v1, "VC"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    const-string v0, "CDL"

    const-string v1, "LD"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    const-string v0, "CML"

    const-string v1, "LM"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    const-string v0, "CMVC"

    const-string v1, "LMVL"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    :cond_0
    if-ne p2, v2, :cond_1

    .line 121
    const-string v0, "CDXC"

    const-string v1, "LDXL"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    const-string v0, "CDVC"

    const-string v1, "LDVL"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    const-string v0, "CMXC"

    const-string v1, "LMXL"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    const-string v0, "XCIX"

    const-string v1, "VCIV"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    const-string v0, "XLIX"

    const-string v1, "VLIV"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_1
    if-le p2, v2, :cond_2

    .line 128
    const-string v0, "XLIX"

    const-string v1, "IL"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    const-string v0, "XCIX"

    const-string v1, "IC"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    const-string v0, "CDXC"

    const-string v1, "XD"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    const-string v0, "CDVC"

    const-string v1, "XDV"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    const-string v0, "CDIC"

    const-string v1, "XDIX"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    const-string v0, "LMVL"

    const-string v1, "XMV"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    const-string v0, "CMIC"

    const-string v1, "XMIX"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    const-string v0, "CMXC"

    const-string v1, "XM"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_2
    const/4 v0, 0x2

    if-le p2, v0, :cond_3

    .line 138
    const-string v0, "XDV"

    const-string v1, "VD"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    const-string v0, "XDIX"

    const-string v1, "VDIV"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    const-string v0, "XMV"

    const-string v1, "VM"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    const-string v0, "XMIX"

    const-string v1, "VMIV"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 143
    :cond_3
    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    .line 144
    const-string v0, "VDIV"

    const-string v1, "ID"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    const-string v0, "VMIV"

    const-string v1, "IM"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    :cond_4
    return-object p1
.end method
