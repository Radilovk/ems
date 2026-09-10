.class public Lorg/apache/poi/ddf/EscherClientAnchorRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "EscherClientAnchorRecord.java"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtClientAnchor"

.field public static final RECORD_ID:S = -0xff0s


# instance fields
.field private field_1_flag:S

.field private field_2_col1:S

.field private field_3_dx1:S

.field private field_4_row1:S

.field private field_5_dy1:S

.field private field_6_col2:S

.field private field_7_dx2:S

.field private field_8_row2:S

.field private field_9_dy2:S

.field private remainingData:[B

.field private shortRecord:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "recordFactory"    # Lorg/apache/poi/ddf/EscherRecordFactory;

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->readHeader([BI)I

    move-result v0

    .line 62
    .local v0, "bytesRemaining":I
    add-int/lit8 v1, p2, 0x8

    .line 63
    .local v1, "pos":I
    const/4 v2, 0x0

    .line 66
    .local v2, "size":I
    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    add-int v4, v1, v2

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    add-int/lit8 v2, v2, 0x2

    .line 73
    add-int v4, v1, v2

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    add-int/lit8 v2, v2, 0x2

    .line 74
    add-int v4, v1, v2

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    add-int/lit8 v2, v2, 0x2

    .line 75
    add-int v4, v1, v2

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    add-int/lit8 v2, v2, 0x2

    .line 76
    const/16 v4, 0x12

    if-lt v0, v4, :cond_1

    .line 77
    add-int v4, v1, v2

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    add-int/lit8 v2, v2, 0x2

    .line 78
    add-int v4, v1, v2

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    add-int/lit8 v2, v2, 0x2

    .line 79
    add-int v4, v1, v2

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    add-int/lit8 v2, v2, 0x2

    .line 80
    add-int v4, v1, v2

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    add-int/lit8 v2, v2, 0x2

    .line 81
    add-int v4, v1, v2

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    add-int/lit8 v2, v2, 0x2

    .line 82
    iput-boolean v3, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    goto :goto_0

    .line 84
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    .line 87
    :goto_0
    sub-int/2addr v0, v2

    .line 88
    new-array v4, v0, [B

    iput-object v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    .line 89
    add-int v5, v1, v2

    invoke-static {p1, v5, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    add-int/lit8 v3, v2, 0x8

    add-int/2addr v3, v0

    return v3
.end method

.method public getCol1()S
    .locals 1

    .line 223
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    return v0
.end method

.method public getCol2()S
    .locals 1

    .line 288
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    return v0
.end method

.method public getDx1()S
    .locals 1

    .line 239
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    return v0
.end method

.method public getDx2()S
    .locals 1

    .line 305
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    return v0
.end method

.method public getDy1()S
    .locals 1

    .line 271
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    return v0
.end method

.method public getDy2()S
    .locals 1

    .line 339
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    return v0
.end method

.method public getFlag()S
    .locals 1

    .line 207
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    return v0
.end method

.method public getRecordId()S
    .locals 1

    .line 126
    const/16 v0, -0xff0

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    .line 130
    const-string v0, "ClientAnchor"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 2

    .line 122
    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getRemainingData()[B
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    return-object v0
.end method

.method public getRow1()S
    .locals 1

    .line 255
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    return v0
.end method

.method public getRow2()S
    .locals 1

    .line 322
    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 7
    .param p1, "offset"    # I
    .param p2, "data"    # [B
    .param p3, "listener"    # Lorg/apache/poi/ddf/EscherSerializationListener;

    .line 95
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    .line 97
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    .line 98
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 99
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRecordId()S

    move-result v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 100
    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    array-length v0, v0

    iget-boolean v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    const/16 v3, 0x12

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/16 v2, 0x12

    :goto_0
    add-int/2addr v0, v2

    .line 101
    .local v0, "remainingBytes":I
    add-int/lit8 v2, p1, 0x4

    invoke-static {p2, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 102
    add-int/lit8 v2, p1, 0x8

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 103
    add-int/lit8 v2, p1, 0xa

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 104
    add-int/lit8 v2, p1, 0xc

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 105
    add-int/lit8 v2, p1, 0xe

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 106
    iget-boolean v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    if-nez v2, :cond_2

    .line 107
    add-int/lit8 v2, p1, 0x10

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 108
    add-int/lit8 v2, p1, 0x12

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 109
    add-int/lit8 v2, p1, 0x14

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 110
    add-int/lit8 v2, p1, 0x16

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 111
    add-int/lit8 v2, p1, 0x18

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    .line 113
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    iget-boolean v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    if-eqz v5, :cond_3

    const/16 v5, 0x10

    goto :goto_1

    :cond_3
    const/16 v5, 0x1a

    :goto_1
    add-int/2addr v5, p1

    iget-object v6, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    array-length v6, v6

    invoke-static {v2, v1, p2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    add-int/lit8 v1, p1, 0x8

    iget-boolean v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    if-eqz v2, :cond_4

    const/16 v3, 0x8

    :cond_4
    add-int/2addr v1, v3

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 116
    .local v1, "pos":I
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRecordId()S

    move-result v2

    sub-int v3, v1, p1

    invoke-interface {p3, v1, v2, v3, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    .line 117
    sub-int v2, v1, p1

    return v2
.end method

.method public setCol1(S)V
    .locals 0
    .param p1, "field_2_col1"    # S

    .line 231
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    .line 232
    return-void
.end method

.method public setCol2(S)V
    .locals 1
    .param p1, "field_6_col2"    # S

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    .line 297
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    .line 298
    return-void
.end method

.method public setDx1(S)V
    .locals 0
    .param p1, "field_3_dx1"    # S

    .line 247
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    .line 248
    return-void
.end method

.method public setDx2(S)V
    .locals 1
    .param p1, "field_7_dx2"    # S

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    .line 314
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    .line 315
    return-void
.end method

.method public setDy1(S)V
    .locals 1
    .param p1, "field_5_dy1"    # S

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    .line 280
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    .line 281
    return-void
.end method

.method public setDy2(S)V
    .locals 1
    .param p1, "field_9_dy2"    # S

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    .line 348
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    .line 349
    return-void
.end method

.method public setFlag(S)V
    .locals 0
    .param p1, "field_1_flag"    # S

    .line 215
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    .line 216
    return-void
.end method

.method public setRemainingData([B)V
    .locals 0
    .param p1, "remainingData"    # [B

    .line 364
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    .line 365
    return-void
.end method

.method public setRow1(S)V
    .locals 0
    .param p1, "field_4_row1"    # S

    .line 263
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    .line 264
    return-void
.end method

.method public setRow2(S)V
    .locals 1
    .param p1, "field_8_row2"    # S

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    .line 331
    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    .line 332
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 140
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "nl":Ljava/lang/String;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 146
    .local v1, "b":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v1, v6}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 147
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .local v2, "extraData":Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v2    # "extraData":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 151
    .restart local v2    # "extraData":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    const-string v2, "error\n"

    .line 153
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  RecordId: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, -0xff0

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Version: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getVersion()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Instance: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getInstance()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Col1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  DX1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Row1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  DY1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Col2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  DX2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Row2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  DY2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Extra Data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "tab"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 176
    .local v0, "b":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;I)V

    .line 177
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .local v1, "extraData":Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v1    # "extraData":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 181
    .restart local v1    # "extraData":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    const-string v1, "error\n"

    .line 183
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "No Data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    const-string v1, "No Data"

    .line 186
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRecordId()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getVersion()S

    move-result v5

    invoke-static {v5}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getInstance()S

    move-result v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->formatXmlRecordHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<Flag>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</Flag>\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<Col1>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</Col1>\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<DX1>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</DX1>\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<Row1>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</Row1>\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<DY1>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</DY1>\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<Col2>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</Col2>\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<DX2>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</DX2>\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<Row2>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</Row2>\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<DY2>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "</DY2>\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<ExtraData>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</ExtraData>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
