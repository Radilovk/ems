.class public Lorg/apache/poi/ss/formula/Formula;
.super Ljava/lang/Object;
.source "Formula.java"


# static fields
.field private static final EMPTY:Lorg/apache/poi/ss/formula/Formula;


# instance fields
.field private final _byteEncoding:[B

.field private final _encodedTokenLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    new-instance v0, Lorg/apache/poi/ss/formula/Formula;

    new-array v1, v2, [B

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/Formula;-><init>([BI)V

    sput-object v0, Lorg/apache/poi/ss/formula/Formula;->EMPTY:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method

.method private constructor <init>([BI)V
    .locals 0
    .param p1, "byteEncoding"    # [B
    .param p2, "encodedTokenLen"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/poi/ss/formula/Formula;->_byteEncoding:[B

    .line 46
    iput p2, p0, Lorg/apache/poi/ss/formula/Formula;->_encodedTokenLen:I

    .line 60
    return-void
.end method

.method public static create([Lorg/apache/poi/ss/formula/ptg/Ptg;)Lorg/apache/poi/ss/formula/Formula;
    .locals 5
    .param p0, "ptgs"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .prologue
    .line 136
    if-eqz p0, :cond_0

    array-length v3, p0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 137
    :cond_0
    sget-object v3, Lorg/apache/poi/ss/formula/Formula;->EMPTY:Lorg/apache/poi/ss/formula/Formula;

    .line 143
    :goto_0
    return-object v3

    .line 139
    :cond_1
    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getEncodedSize([Lorg/apache/poi/ss/formula/ptg/Ptg;)I

    move-result v2

    .line 140
    .local v2, "totalSize":I
    new-array v0, v2, [B

    .line 141
    .local v0, "encodedData":[B
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lorg/apache/poi/ss/formula/ptg/Ptg;->serializePtgs([Lorg/apache/poi/ss/formula/ptg/Ptg;[BI)I

    .line 142
    invoke-static {p0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getEncodedSizeWithoutArrayData([Lorg/apache/poi/ss/formula/ptg/Ptg;)I

    move-result v1

    .line 143
    .local v1, "encodedTokenLen":I
    new-instance v3, Lorg/apache/poi/ss/formula/Formula;

    invoke-direct {v3, v0, v1}, Lorg/apache/poi/ss/formula/Formula;-><init>([BI)V

    goto :goto_0
.end method

.method public static getTokens(Lorg/apache/poi/ss/formula/Formula;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1
    .param p0, "formula"    # Lorg/apache/poi/ss/formula/Formula;

    .prologue
    .line 153
    if-nez p0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    goto :goto_0
.end method

.method public static read(ILorg/apache/poi/util/LittleEndianInput;)Lorg/apache/poi/ss/formula/Formula;
    .locals 1
    .param p0, "encodedTokenLen"    # I
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .prologue
    .line 65
    invoke-static {p0, p1, p0}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object v0

    return-object v0
.end method

.method public static read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;
    .locals 2
    .param p0, "encodedTokenLen"    # I
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "totalEncodedLen"    # I

    .prologue
    .line 75
    new-array v0, p2, [B

    .line 76
    .local v0, "byteEncoding":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 77
    new-instance v1, Lorg/apache/poi/ss/formula/Formula;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/ss/formula/Formula;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method public copy()Lorg/apache/poi/ss/formula/Formula;
    .locals 0

    .prologue
    .line 161
    return-object p0
.end method

.method public getEncodedSize()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/poi/ss/formula/Formula;->_byteEncoding:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getEncodedTokenSize()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/apache/poi/ss/formula/Formula;->_encodedTokenLen:I

    return v0
.end method

.method public getExpReference()Lorg/apache/poi/ss/util/CellReference;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lorg/apache/poi/ss/formula/Formula;->_byteEncoding:[B

    .line 176
    .local v0, "data":[B
    array-length v4, v0

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    .line 190
    :goto_0
    return-object v3

    .line 180
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 188
    :pswitch_0
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    .line 189
    .local v2, "firstRow":I
    const/4 v3, 0x3

    invoke-static {v0, v3}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v1

    .line 190
    .local v1, "firstColumn":I
    new-instance v3, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v3, v2, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/Formula;->_byteEncoding:[B

    invoke-direct {v0, v1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;-><init>([B)V

    .line 82
    .local v0, "in":Lorg/apache/poi/util/LittleEndianInput;
    iget v1, p0, Lorg/apache/poi/ss/formula/Formula;->_encodedTokenLen:I

    invoke-static {v1, v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->readTokens(ILorg/apache/poi/util/LittleEndianInput;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    return-object v1
.end method

.method public isSame(Lorg/apache/poi/ss/formula/Formula;)Z
    .locals 2
    .param p1, "other"    # Lorg/apache/poi/ss/formula/Formula;

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/poi/ss/formula/Formula;->_byteEncoding:[B

    iget-object v1, p1, Lorg/apache/poi/ss/formula/Formula;->_byteEncoding:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 93
    iget v0, p0, Lorg/apache/poi/ss/formula/Formula;->_encodedTokenLen:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 94
    iget-object v0, p0, Lorg/apache/poi/ss/formula/Formula;->_byteEncoding:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 95
    return-void
.end method

.method public serializeArrayConstantData(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 101
    iget-object v1, p0, Lorg/apache/poi/ss/formula/Formula;->_byteEncoding:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/poi/ss/formula/Formula;->_encodedTokenLen:I

    sub-int v0, v1, v2

    .line 102
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/poi/ss/formula/Formula;->_byteEncoding:[B

    iget v2, p0, Lorg/apache/poi/ss/formula/Formula;->_encodedTokenLen:I

    invoke-interface {p1, v1, v2, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([BII)V

    .line 103
    return-void
.end method

.method public serializeTokens(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/poi/ss/formula/Formula;->_byteEncoding:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/poi/ss/formula/Formula;->_encodedTokenLen:I

    invoke-interface {p1, v0, v1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->write([BII)V

    .line 99
    return-void
.end method
