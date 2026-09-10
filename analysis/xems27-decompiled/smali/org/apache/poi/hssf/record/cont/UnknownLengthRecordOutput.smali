.class final Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;
.super Ljava/lang/Object;
.source "UnknownLengthRecordOutput.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianOutput;


# static fields
.field private static final MAX_DATA_SIZE:I = 0x2020


# instance fields
.field private final _byteBuffer:[B

.field private final _dataSizeOutput:Lorg/apache/poi/util/LittleEndianOutput;

.field private final _originalOut:Lorg/apache/poi/util/LittleEndianOutput;

.field private _out:Lorg/apache/poi/util/LittleEndianOutput;

.field private _size:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianOutput;I)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p2, "sid"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_originalOut:Lorg/apache/poi/util/LittleEndianOutput;

    .line 41
    invoke-interface {p1, p2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 42
    instance-of v0, p1, Lorg/apache/poi/util/DelayableLittleEndianOutput;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/util/DelayableLittleEndianOutput;

    .line 45
    .local v0, "dleo":Lorg/apache/poi/util/DelayableLittleEndianOutput;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/apache/poi/util/DelayableLittleEndianOutput;->createDelayedOutput(I)Lorg/apache/poi/util/LittleEndianOutput;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_dataSizeOutput:Lorg/apache/poi/util/LittleEndianOutput;

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_byteBuffer:[B

    .line 47
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    .line 48
    .end local v0    # "dleo":Lorg/apache/poi/util/DelayableLittleEndianOutput;
    goto :goto_0

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_dataSizeOutput:Lorg/apache/poi/util/LittleEndianOutput;

    .line 51
    const/16 v0, 0x2020

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_byteBuffer:[B

    .line 52
    new-instance v1, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    .line 54
    :goto_0
    return-void
.end method


# virtual methods
.method public getAvailableSpace()I
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    rsub-int v0, v0, 0x2020

    return v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record already terminated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public terminate()V
    .locals 5

    .line 72
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_dataSizeOutput:Lorg/apache/poi/util/LittleEndianOutput;

    iget v1, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    invoke-interface {v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 76
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_byteBuffer:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    iget-object v2, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_originalOut:Lorg/apache/poi/util/LittleEndianOutput;

    const/4 v3, 0x0

    iget v4, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    invoke-interface {v2, v0, v3, v4}, Lorg/apache/poi/util/LittleEndianOutput;->write([BII)V

    .line 78
    iput-object v1, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    .line 79
    return-void

    .line 81
    :cond_0
    iput-object v1, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    .line 82
    return-void

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record already terminated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B

    .line 85
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    invoke-interface {v0, p1}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 86
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    .line 87
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 89
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianOutput;->write([BII)V

    .line 90
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    .line 91
    return-void
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "v"    # I

    .line 93
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    invoke-interface {v0, p1}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 94
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    .line 95
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "v"    # D

    .line 97
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    .line 98
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    .line 99
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "v"    # I

    .line 101
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    invoke-interface {v0, p1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 102
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    .line 103
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "v"    # J

    .line 105
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/util/LittleEndianOutput;->writeLong(J)V

    .line 106
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    .line 107
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .param p1, "v"    # I

    .line 109
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    invoke-interface {v0, p1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 110
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->_size:I

    .line 111
    return-void
.end method
