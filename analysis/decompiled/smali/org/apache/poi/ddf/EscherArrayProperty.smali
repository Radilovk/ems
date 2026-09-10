.class public final Lorg/apache/poi/ddf/EscherArrayProperty;
.super Lorg/apache/poi/ddf/EscherComplexProperty;
.source "EscherArrayProperty.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/poi/ddf/EscherComplexProperty;",
        "Ljava/lang/Iterable",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final FIXED_SIZE:I = 0x6


# instance fields
.field private emptyComplexPart:Z

.field private sizeIncludesHeaderSize:Z


# direct methods
.method public constructor <init>(SZ[B)V
    .locals 1
    .param p1, "propertyNumber"    # S
    .param p2, "isBlipId"    # Z
    .param p3, "complexData"    # [B

    .prologue
    .line 56
    invoke-static {p3}, Lorg/apache/poi/ddf/EscherArrayProperty;->checkComplexData([B)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(SZ[B)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    .line 57
    return-void
.end method

.method public constructor <init>(S[B)V
    .locals 3
    .param p1, "id"    # S
    .param p2, "complexData"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-static {p2}, Lorg/apache/poi/ddf/EscherArrayProperty;->checkComplexData([B)[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/poi/ddf/EscherComplexProperty;-><init>(S[B)V

    .line 43
    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    .line 48
    iput-boolean v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    .line 52
    array-length v2, p2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    .line 53
    return-void

    :cond_0
    move v0, v1

    .line 52
    goto :goto_0
.end method

.method private static checkComplexData([B)[B
    .locals 1
    .param p0, "complexData"    # [B

    .prologue
    .line 60
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x6

    new-array p0, v0, [B

    .line 64
    .end local p0    # "complexData":[B
    :cond_1
    return-object p0
.end method

.method public static getActualSizeOfElements(S)I
    .locals 1
    .param p0, "sizeOfElements"    # S

    .prologue
    .line 206
    if-gez p0, :cond_0

    .line 207
    neg-int v0, p0

    shr-int/lit8 v0, v0, 0x2

    int-to-short p0, v0

    .line 209
    .end local p0    # "sizeOfElements":S
    :cond_0
    return p0
.end method


# virtual methods
.method public getElement(I)[B
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    .line 116
    .local v0, "actualSize":I
    new-array v1, v0, [B

    .line 117
    .local v1, "result":[B
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    mul-int v3, p1, v0

    add-int/lit8 v3, v3, 0x6

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    return-object v1
.end method

.method public getNumberOfElementsInArray()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-boolean v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    invoke-static {v1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    goto :goto_0
.end method

.method public getNumberOfElementsInMemory()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    return v0
.end method

.method public getSizeOfElements()S
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lorg/apache/poi/ddf/EscherArrayProperty$1;

    invoke-direct {v0, p0}, Lorg/apache/poi/ddf/EscherArrayProperty$1;-><init>(Lorg/apache/poi/ddf/EscherArrayProperty;)V

    return-object v0
.end method

.method public serializeSimplePart([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getId()S

    move-result v1

    invoke-static {p1, p2, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 193
    iget-object v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    array-length v0, v1

    .line 194
    .local v0, "recordSize":I
    iget-boolean v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    if-nez v1, :cond_0

    .line 195
    add-int/lit8 v0, v0, -0x6

    .line 197
    :cond_0
    add-int/lit8 v1, p2, 0x2

    invoke-static {p1, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 198
    const/4 v1, 0x6

    return v1
.end method

.method public setArrayData([BI)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 167
    iget-boolean v3, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->emptyComplexPart:Z

    if-eqz v3, :cond_0

    .line 168
    new-array v3, v5, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    .line 182
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    array-length v3, v3

    return v3

    .line 170
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    .line 171
    .local v1, "numElements":S
    add-int/lit8 v3, p2, 0x2

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    .line 172
    add-int/lit8 v3, p2, 0x4

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    .line 174
    .local v2, "sizeOfElements":S
    invoke-static {v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v3

    mul-int v0, v3, v1

    .line 175
    .local v0, "arraySize":I
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    array-length v3, v3

    if-ne v0, v3, :cond_1

    .line 177
    add-int/lit8 v3, v0, 0x6

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    .line 178
    iput-boolean v5, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->sizeIncludesHeaderSize:Z

    .line 180
    :cond_1
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    iget-object v4, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    array-length v4, v4

    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public setElement(I[B)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # [B

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v0

    .line 123
    .local v0, "actualSize":I
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    mul-int v3, p1, v0

    add-int/lit8 v3, v3, 0x6

    invoke-static {p2, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    return-void
.end method

.method public setNumberOfElementsInArray(I)V
    .locals 5
    .param p1, "numberOfElements"    # I

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v0, v2, 0x6

    .line 76
    .local v0, "expectedArraySize":I
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 77
    new-array v1, v0, [B

    .line 78
    .local v1, "newArray":[B
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iput-object v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    .line 81
    .end local v1    # "newArray":[B
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    int-to-short v3, p1

    invoke-static {v2, v4, v3}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 82
    return-void
.end method

.method public setNumberOfElementsInMemory(I)V
    .locals 5
    .param p1, "numberOfElements"    # I

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v0, v2, 0x6

    .line 90
    .local v0, "expectedArraySize":I
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 91
    new-array v1, v0, [B

    .line 92
    .local v1, "newArray":[B
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput-object v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    .line 95
    .end local v1    # "newArray":[B
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    const/4 v3, 0x2

    int-to-short v4, p1

    invoke-static {v2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 96
    return-void
.end method

.method public setSizeOfElements(I)V
    .locals 6
    .param p1, "sizeOfElements"    # I

    .prologue
    const/4 v5, 0x0

    .line 103
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    const/4 v3, 0x4

    int-to-short v4, p1

    invoke-static {v2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 105
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ddf/EscherArrayProperty;->getActualSizeOfElements(S)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/lit8 v0, v2, 0x6

    .line 106
    .local v0, "expectedArraySize":I
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 108
    new-array v1, v0, [B

    .line 109
    .local v1, "newArray":[B
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    const/4 v3, 0x6

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty;->_complexData:[B

    .line 112
    .end local v1    # "newArray":[B
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 127
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v1, "results":Ljava/lang/StringBuffer;
    const-string v2, "    {EscherArrayProperty:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     Num Elements: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     Num Elements In Memory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInMemory()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     Size of elements: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getSizeOfElements()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     Element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const-string/jumbo v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "propNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getPropertyNumber()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", propName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getPropertyNumber()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/ddf/EscherProperties;->getPropertyName(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", complex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->isComplex()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", blipId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->isBlipId()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "tab"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id=\"0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getId()S

    move-result v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" blipId=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->isBlipId()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 150
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<Element>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</Element>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
