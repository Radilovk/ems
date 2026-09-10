.class public Lcom/isaigu/gymapp/message/DataEncoder;
.super Ljava/lang/Object;
.source "DataEncoder.java"


# instance fields
.field private buffer:[B

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    .line 12
    return-void
.end method

.method private checkBuffer(I)V
    .locals 4
    .param p1, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 16
    iget-object v1, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 17
    iget v1, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    add-int/2addr v1, p1

    new-array v0, v1, [B

    .line 18
    .local v0, "newBuffer":[B
    iget-object v1, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    iget-object v2, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput-object v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    .line 21
    .end local v0    # "newBuffer":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    iget v1, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    new-array v0, v1, [B

    .line 78
    .local v0, "data":[B
    iget-object v1, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-object v0
.end method

.method public putBoolean(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/message/DataEncoder;->checkBuffer(I)V

    .line 57
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    invoke-static {v0, p1, v1}, Lcom/isaigu/gymapp/message/ByteUtil;->boolToByte([BZI)V

    .line 58
    iget v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    .line 59
    return-void
.end method

.method public putByte(B)V
    .locals 3
    .param p1, "b"    # B

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/message/DataEncoder;->checkBuffer(I)V

    .line 64
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    aput-byte p1, v0, v1

    .line 65
    return-void
.end method

.method public putDouble(D)V
    .locals 3
    .param p1, "d"    # D

    .prologue
    .line 68
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/isaigu/gymapp/message/DataEncoder;->putLong(J)V

    .line 69
    return-void
.end method

.method public putFloat(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 72
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/message/DataEncoder;->putInt(I)V

    .line 73
    return-void
.end method

.method public putInt(I)V
    .locals 2
    .param p1, "in"    # I

    .prologue
    .line 35
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/message/DataEncoder;->checkBuffer(I)V

    .line 36
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    invoke-static {v0, p1, v1}, Lcom/isaigu/gymapp/message/ByteUtil;->intToBytes([BII)V

    .line 37
    iget v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    .line 38
    return-void
.end method

.method public putLong(J)V
    .locals 3
    .param p1, "l"    # J

    .prologue
    .line 49
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/message/DataEncoder;->checkBuffer(I)V

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    invoke-static {v0, p1, p2, v1}, Lcom/isaigu/gymapp/message/ByteUtil;->longToBytes([BJI)V

    .line 51
    iget v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    .line 52
    return-void
.end method

.method public putShort(S)V
    .locals 2
    .param p1, "s"    # S

    .prologue
    .line 42
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/message/DataEncoder;->checkBuffer(I)V

    .line 43
    iget-object v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    iget v1, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    invoke-static {v0, p1, v1}, Lcom/isaigu/gymapp/message/ByteUtil;->shortToBytes([BSI)V

    .line 44
    iget v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    .line 45
    return-void
.end method

.method public putString(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 26
    .local v0, "b":[B
    array-length v2, v0

    add-int/lit8 v2, v2, 0x4

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/message/DataEncoder;->checkBuffer(I)V

    .line 27
    array-length v2, v0

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/message/DataEncoder;->putInt(I)V

    .line 28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/isaigu/gymapp/message/DataEncoder;->buffer:[B

    iget v3, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/isaigu/gymapp/message/DataEncoder;->index:I

    aget-byte v4, v0, v1

    aput-byte v4, v2, v3

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
