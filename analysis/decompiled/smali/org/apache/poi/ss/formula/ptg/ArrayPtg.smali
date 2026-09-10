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

    .prologue
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

    .prologue
    const/4 v8, 0x0

    .line 68
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;-><init>()V

    .line 69
    aget-object v6, p1, v8

    array-length v1, v6

    .line 70
    .local v1, "nColumns":I
    array-length v2, p1

    .line 72
    .local v2, "nRows":I
    int-to-short v6, v1

    iput v6, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    .line 73
    int-to-short v6, v2

    iput v6, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    .line 75
    iget v6, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    iget v7, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    mul-int/2addr v6, v7

    new-array v5, v6, [Ljava/lang/Object;

    .line 76
    .local v5, "vv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "r":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 77
    aget-object v4, p1, v3

    .line 78
    .local v4, "rowData":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 79
    invoke-virtual {p0, v0, v3}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v6

    aget-object v7, v4, v0

    aput-object v7, v5, v6

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "c":I
    .end local v4    # "rowData":[Ljava/lang/Object;
    :cond_1
    iput-object v5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    .line 84
    iput v8, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved0Int:I

    .line 85
    iput v8, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved1Short:I

    .line 86
    iput v8, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_reserved2Byte:I

    .line 87
    return-void
.end method

.method private static getConstantText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 190
    if-nez p0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Array item cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p0, Ljava/lang/String;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 196
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 197
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/NumberToTextConverter;->toText(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 200
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TRUE"

    goto :goto_0

    :cond_3
    const-string v0, "FALSE"

    goto :goto_0

    .line 202
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    if-eqz v0, :cond_5

    .line 203
    check-cast p0, Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected constant class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    return v0
.end method

.method public getDefaultOperandClass()B
    .locals 1

    .prologue
    .line 209
    const/16 v0, 0x40

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ConstantValueParser;->getEncodedSize([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public getTokenArrayValues()[[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 92
    iget-object v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 93
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "array values not read yet"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_0
    iget v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    iget v5, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    .line 96
    .local v2, "result":[[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "r":I
    :goto_0
    iget v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-ge v1, v4, :cond_2

    .line 97
    aget-object v3, v2, v1

    .line 98
    .local v3, "rowData":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_1
    iget v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-ge v0, v4, :cond_1

    .line 99
    iget-object v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v5

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "c":I
    .end local v3    # "rowData":[Ljava/lang/Object;
    :cond_2
    return-object v2
.end method

.method getValueIndex(II)I
    .locals 3
    .param p1, "colIx"    # I
    .param p2, "rowIx"    # I

    .prologue
    .line 127
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    if-lt p1, v0, :cond_1

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified colIx ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is outside the allowed range (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    if-ltz p2, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    if-lt p2, v0, :cond_3

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified rowIx ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is outside the allowed range (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nRows:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_3
    iget v0, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_nColumns:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method public isBaseToken()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public toFormulaString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v0, "b":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getRowCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 173
    if-lez v3, :cond_0

    .line 174
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_0
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getColumnCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 177
    if-lez v2, :cond_1

    .line 178
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_1
    iget-object v4, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getValueIndex(II)I

    move-result v5

    aget-object v1, v4, v5

    .line 181
    .local v1, "o":Ljava/lang/Object;
    invoke-static {v1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getConstantText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 172
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v2    # "x":I
    :cond_3
    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[ArrayPtg]\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "nRows = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getRowCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const-string v1, "nCols = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->getColumnCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->_arrayValues:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 115
    const-string v1, "  #values#uninitialised#\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 117
    :cond_0
    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;->toFormulaString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
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

    .prologue
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
