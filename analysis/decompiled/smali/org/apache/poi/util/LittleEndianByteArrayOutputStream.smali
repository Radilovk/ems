.class public final Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;
.super Ljava/lang/Object;
.source "LittleEndianByteArrayOutputStream.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianOutput;
.implements Lorg/apache/poi/util/DelayableLittleEndianOutput;


# instance fields
.field private final _buf:[B

.field private final _endIndex:I

.field private _writeIndex:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "startOffset"    # I

    .prologue
    .line 46
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BII)V

    .line 47
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3
    .param p1, "buf"    # [B
    .param p2, "startOffset"    # I
    .param p3, "maxWriteLen"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-ltz p2, :cond_0

    array-length v0, p1

    if-le p2, v0, :cond_1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specified startOffset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is out of allowable range (0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p1, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    .line 38
    iput p2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    .line 39
    add-int v0, p2, p3

    iput v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_endIndex:I

    .line 40
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_endIndex:I

    if-lt v0, p2, :cond_2

    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_endIndex:I

    array-length v1, p1

    if-le v0, v1, :cond_3

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculated end index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_endIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is out of allowable range ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_3
    return-void
.end method

.method private checkPosition(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 50
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_endIndex:I

    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffer overrun"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public createDelayedOutput(I)Lorg/apache/poi/util/LittleEndianOutput;
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->checkPosition(I)V

    .line 102
    new-instance v0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    iget-object v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    iget v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BII)V

    .line 103
    .local v0, "result":Lorg/apache/poi/util/LittleEndianOutput;
    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    .line 104
    return-object v0
.end method

.method public getWriteIndex()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    return v0
.end method

.method public write([B)V
    .locals 4
    .param p1, "b"    # [B

    .prologue
    .line 87
    array-length v0, p1

    .line 88
    .local v0, "len":I
    invoke-direct {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->checkPosition(I)V

    .line 89
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    iget v3, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    .line 91
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 93
    invoke-direct {p0, p3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->checkPosition(I)V

    .line 94
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    .line 96
    return-void
.end method

.method public writeByte(I)V
    .locals 3
    .param p1, "v"    # I

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->checkPosition(I)V

    .line 57
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    iget v1, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 58
    return-void
.end method

.method public writeDouble(D)V
    .locals 3
    .param p1, "v"    # D

    .prologue
    .line 61
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeLong(J)V

    .line 62
    return-void
.end method

.method public writeInt(I)V
    .locals 4
    .param p1, "v"    # I

    .prologue
    .line 65
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->checkPosition(I)V

    .line 66
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    .line 67
    .local v0, "i":I
    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    ushr-int/lit8 v3, p1, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 68
    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 69
    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    ushr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 70
    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 71
    iput v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    .line 72
    return-void
.end method

.method public writeLong(J)V
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 75
    const/4 v0, 0x0

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 76
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    .line 77
    return-void
.end method

.method public writeShort(I)V
    .locals 4
    .param p1, "v"    # I

    .prologue
    .line 80
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->checkPosition(I)V

    .line 81
    iget v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    .line 82
    .local v0, "i":I
    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    ushr-int/lit8 v3, p1, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 83
    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_buf:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 84
    iput v0, p0, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->_writeIndex:I

    .line 85
    return-void
.end method
