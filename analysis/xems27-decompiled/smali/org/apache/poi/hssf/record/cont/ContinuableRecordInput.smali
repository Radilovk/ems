.class public Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;
.super Ljava/lang/Object;
.source "ContinuableRecordInput.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianInput;


# instance fields
.field private final _in:Lorg/apache/poi/hssf/record/RecordInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 56
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFully([B)V
    .locals 1
    .param p1, "buf"    # [B

    .line 110
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 111
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 113
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([BII)V

    .line 114
    return-void
.end method

.method public readInt()I
    .locals 6

    .line 80
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    .line 81
    .local v0, "ch1":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    .line 82
    .local v1, "ch2":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v2

    .line 83
    .local v2, "ch3":I
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v3

    .line 84
    .local v3, "ch4":I
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v0, 0x0

    add-int/2addr v4, v5

    return v4
.end method

.method public readLong()J
    .locals 13

    .line 88
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    .line 89
    .local v0, "b0":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    .line 90
    .local v1, "b1":I
    iget-object v2, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v2

    .line 91
    .local v2, "b2":I
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v3

    .line 92
    .local v3, "b3":I
    iget-object v4, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v4

    .line 93
    .local v4, "b4":I
    iget-object v5, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v5

    .line 94
    .local v5, "b5":I
    iget-object v6, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v6

    .line 95
    .local v6, "b6":I
    iget-object v7, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v7}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v7

    .line 96
    .local v7, "b7":I
    int-to-long v8, v7

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v4

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v3

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    shl-int/lit8 v10, v2, 0x10

    int-to-long v10, v10

    add-long/2addr v8, v10

    shl-int/lit8 v10, v1, 0x8

    int-to-long v10, v10

    add-long/2addr v8, v10

    shl-int/lit8 v10, v0, 0x0

    int-to-long v10, v10

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public readShort()S
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method public readUByte()I
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->_in:Lorg/apache/poi/hssf/record/RecordInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    return v0
.end method

.method public readUShort()I
    .locals 4

    .line 74
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->readUByte()I

    move-result v0

    .line 75
    .local v0, "ch1":I
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordInput;->readUByte()I

    move-result v1

    .line 76
    .local v1, "ch2":I
    shl-int/lit8 v2, v1, 0x8

    shl-int/lit8 v3, v0, 0x0

    add-int/2addr v2, v3

    return v2
.end method
