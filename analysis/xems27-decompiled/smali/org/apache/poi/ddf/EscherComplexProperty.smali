.class public Lorg/apache/poi/ddf/EscherComplexProperty;
.super Lorg/apache/poi/ddf/EscherProperty;
.source "EscherComplexProperty.java"


# instance fields
.field protected _complexData:[B


# direct methods
.method public constructor <init>(SZ[B)V
    .locals 1
    .param p1, "propertyNumber"    # S
    .param p2, "isBlipId"    # Z
    .param p3, "complexData"    # [B

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/poi/ddf/EscherProperty;-><init>(SZZ)V

    .line 59
    iput-object p3, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    .line 60
    return-void
.end method

.method public constructor <init>(S[B)V
    .locals 0
    .param p1, "id"    # S
    .param p2, "complexData"    # [B

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/poi/ddf/EscherProperty;-><init>(S)V

    .line 46
    iput-object p2, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 98
    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Lorg/apache/poi/ddf/EscherComplexProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 101
    return v2

    .line 104
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/poi/ddf/EscherComplexProperty;

    .line 106
    .local v1, "escherComplexProperty":Lorg/apache/poi/ddf/EscherComplexProperty;
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    iget-object v4, v1, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 108
    :cond_2
    return v0
.end method

.method public getComplexData()[B
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    return-object v0
.end method

.method public getPropertySize()I
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getId()S

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public serializeComplexPart([BI)I
    .locals 3
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 79
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    array-length v0, v0

    return v0
.end method

.method public serializeSimplePart([BI)I
    .locals 2
    .param p1, "data"    # [B
    .param p2, "pos"    # I

    .line 66
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getId()S

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 67
    add-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    array-length v1, v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 68
    const/4 v0, 0x6

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 128
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "dataStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "propNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getPropertyNumber()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", propName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getPropertyNumber()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/ddf/EscherProperties;->getPropertyName(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", complex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->isComplex()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", blipId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->isBlipId()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tab"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherComplexProperty;->_complexData:[B

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/apache/poi/util/HexDump;->toHex([BI)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "dataStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " id=\"0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getId()S

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" blipId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherComplexProperty;->isBlipId()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
