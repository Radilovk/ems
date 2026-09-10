.class public final Lorg/apache/poi/ss/formula/ptg/ArrayPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ptg;
.source "ArrayPtg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/ptg/ArrayPtg$Initial;
    }
.end annotation


# static fields
.field public static final PLAIN_TOKEN_SIZE:I = 0x8

.field private static final RESERVED_FIELD_LEN:I = 0x7

.field public static final sid:B = 0x20t


# instance fields
.field private final _arrayValues:[Ljava/lang/Object;

.field private final _nColumns:I

.field private final _nRows:I

.field private final _reserved0Int:I

.field private final _reserved1Short:I

.field private final _reserved2Byte:I


# direct methods
.method constructor <init>(IIIII[Ljava/lang/Object;)V
    .locals 0
    .param p1, "reserved0"    # I
    .param p2, "reserved1"    # I
    .param p3, "reserved2"    # I
    .param p4, "nColumns"    # I
    .param p5, "nRows"    # I
    .param p6, "arrayValues"    # [Ljava/lang/Object;

    .line 57
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    .line 58
    iput p1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    .line 59
    iput p2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    .line 60
    iput p3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    .line 61
    iput p4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    .line 62
    iput p5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    .line 63
    iput-object p6, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>([[Ljava/lang/Object;)V
    .locals 9
    .param p1, "values2d"    # [[Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    .line 69
    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    .line 70
    .local v1, "nColumns":I
    array-length v2, p1

    .line 72
    .local v2, "nRows":I
    int-to-short v3, v1

    iput v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    .line 73
    int-to-short v4, v2

    iput v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    .line 75
    mul-int v3, v3, v4

    new-array v3, v3, [Ljava/lang/Object;

    .line 76
    .local v3, "vv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "r":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 77
    aget-object v5, p1, v4

    .line 78
    .local v5, "rowData":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "c":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 79
    invoke-virtual {p0, v6, v4}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v7

    aget-object v8, v5, v6

    aput-object v8, v3, v7

    .line 78
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 76
    .end local v5    # "rowData":[Ljava/lang/Object;
    .end local v6    # "c":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "r":I
    :cond_1
    iput-object v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    .line 84
    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    .line 85
    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    .line 86
    iput v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    .line 87
    return-void
.end method

.method private static getConstantText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 190
    if-eqz p0, :cond_5

    .line 193
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 197
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 200
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TRUE"

    goto :goto_0

    :cond_2
    const-string v0, "FALSE"

    :goto_0
    return-object v0

    .line 202
    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-eqz v0, :cond_4

    .line 203
    move-object v0, p0

    check-cast v0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 205
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected constant class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Array item cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    return v0
.end method

.method public getDefaultOperandClass()B
    .locals 1

    .line 209
    const/16 v0, 0x40

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public getTokenArrayValues()[[Ljava/lang/Object;
    .locals 6

    .line 92
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 95
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    .line 96
    .local v0, "result":[[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge v1, v2, :cond_1

    .line 97
    aget-object v2, v0, v1

    .line 98
    .local v2, "rowData":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_1
    iget v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge v3, v4, :cond_0

    .line 99
    iget-object v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-virtual {p0, v3, v1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v5

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 96
    .end local v2    # "rowData":[Ljava/lang/Object;
    .end local v3    # "c":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "r":I
    :cond_1
    return-object v0

    .line 93
    .end local v0    # "result":[[Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "array values not read yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getValueIndex(II)I
    .locals 5
    .param p1, "colIx"    # I
    .param p2, "rowIx"    # I

    .line 127
    const-string v0, ")"

    const-string v1, ") is outside the allowed range (0.."

    if-ltz p1, :cond_1

    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge p1, v2, :cond_1

    .line 131
    if-ltz p2, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge p2, v3, :cond_0

    .line 135
    mul-int v2, v2, p2

    add-int/2addr v2, p1

    return v2

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specified rowIx ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Specified colIx ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isBaseToken()Z
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 5

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v0, "b":Ljava/lang/StringBuffer;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getRowCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 173
    if-lez v1, :cond_0

    .line 174
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_0
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 177
    if-lez v2, :cond_1

    .line 178
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v4

    aget-object v3, v3, v4

    .line 181
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getConstantText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    .end local v2    # "x":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "y":I
    :cond_3
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[ArrayPtg]\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "nRows = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getRowCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v2, "nCols = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getColumnCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 115
    const-string v1, "  #values#uninitialised#\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 117
    :cond_0
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->toFormulaString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 139
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getPtgClass()B

    move-result v0

    add-int/lit8 v0, v0, 0x20

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 140
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 141
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 142
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 143
    return-void
.end method

.method public writeTokenValueBytes(Lorg/apache/poi/util/LittleEndianOutput;)I
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 147
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 148
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 149
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->encode(Lorg/apache/poi/util/LittleEndianOutput;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method
