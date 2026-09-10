.class public Lorg/apache/poi/hssf/record/DConRefRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "DConRefRecord.java"


# static fields
.field public static final sid:S = 0x51s


# instance fields
.field private _unused:[B

.field private charCount:I

.field private charType:I

.field private firstCol:I

.field private firstRow:I

.field private lastCol:I

.field private lastRow:I

.field private path:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 4
    .param p1, "inStream"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 165
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v1

    const/16 v2, 0x51

    if-eq v1, v2, :cond_0

    .line 166
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong sid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    .line 169
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    .line 170
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    .line 171
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    .line 173
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    .line 174
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    .line 177
    iget v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    iget v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    add-int/lit8 v2, v2, 0x1

    mul-int v0, v1, v2

    .line 179
    .local v0, "byteLength":I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    .line 180
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 182
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 183
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    .line 185
    :cond_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x2

    .line 113
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "offset":I
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    const/16 v3, 0x51

    if-eq v2, v3, :cond_0

    .line 116
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v3, "incompatible sid."

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 120
    add-int/lit8 v1, v1, 0x2

    .line 122
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    .line 123
    add-int/lit8 v1, v1, 0x2

    .line 124
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    .line 125
    add-int/lit8 v1, v1, 0x2

    .line 126
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    .line 127
    add-int/lit8 v1, v1, 0x1

    .line 128
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    .line 131
    add-int/lit8 v1, v1, 0x2

    .line 132
    iget v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    if-ge v2, v4, :cond_1

    .line 133
    new-instance v2, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v3, "Character count must be >= 2"

    invoke-direct {v2, v3}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_1
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUByte([BI)S

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    .line 137
    add-int/lit8 v1, v1, 0x1

    .line 144
    iget v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    iget v3, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    and-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    mul-int v0, v2, v3

    .line 146
    .local v0, "byteLength":I
    invoke-static {p1, v1, v0}, Lorg/apache/poi/util/LittleEndian;->getByteArray([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    .line 147
    add-int/lit8 v1, v0, 0xd

    .line 153
    iget-object v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_2

    .line 154
    iget v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v1, v2}, Lorg/apache/poi/util/LittleEndian;->getByteArray([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    .line 156
    :cond_2
    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    array-length v1, v1

    add-int/lit8 v0, v1, 0x9

    .line 195
    .local v0, "sz":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 196
    iget-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 197
    :cond_0
    return v0
.end method

.method public getFirstColumn()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    return v0
.end method

.method public getPath()[B
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    iget-object v1, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getReadablePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    iget-object v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    if-eqz v2, :cond_1

    .line 290
    const/4 v0, 0x1

    .line 291
    .local v0, "offset":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    aget-byte v2, v2, v0

    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    iget-object v3, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    array-length v3, v3

    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 297
    .local v1, "out":Ljava/lang/String;
    const-string v2, "\u0003"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .end local v0    # "offset":I
    .end local v1    # "out":Ljava/lang/String;
    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 217
    const/16 v0, 0x51

    return v0
.end method

.method public isExternalRef()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    iget-object v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    aget-byte v2, v2, v1

    if-ne v2, v0, :cond_0

    .line 312
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    .line 203
    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 204
    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 205
    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 206
    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 207
    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 208
    iget v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 209
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 210
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->path:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->_unused:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 212
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "[DCONREF]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, "    .ref\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, "        .firstrow   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstRow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, "        .lastrow    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastRow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, "        .firstcol   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->firstCol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, "        .lastcol    = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->lastCol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, "    .cch            = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v1, "    .stFile\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "        .h          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/DConRefRecord;->charType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v1, "        .rgb        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/DConRefRecord;->getReadablePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "[/DCONREF]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
