.class public final Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;
.super Ljava/lang/Object;
.source "ContinuableRecordOutput.java"

# interfaces
.implements Lorg/apache/poi/util/LittleEndianOutput;


# static fields
.field private static final NOPOutput:Lorg/apache/poi/util/LittleEndianOutput;


# instance fields
.field private final _out:Lorg/apache/poi/util/LittleEndianOutput;

.field private _totalPreviousRecordsSize:I

.field private _ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput$1;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput$1;-><init>()V

    sput-object v0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->NOPOutput:Lorg/apache/poi/util/LittleEndianOutput;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianOutput;I)V
    .locals 1
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;
    .param p2, "sid"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;-><init>(Lorg/apache/poi/util/LittleEndianOutput;I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    .line 38
    iput-object p1, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_totalPreviousRecordsSize:I

    .line 40
    return-void
.end method

.method public static createForCountingOnly()Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;

    sget-object v1, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->NOPOutput:Lorg/apache/poi/util/LittleEndianOutput;

    const/16 v2, -0x309

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;-><init>(Lorg/apache/poi/util/LittleEndianOutput;I)V

    return-object v0
.end method

.method private writeCharacterData(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "is16bitEncoded"    # Z

    .prologue
    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 173
    .local v2, "nChars":I
    const/4 v0, 0x0

    .line 174
    .local v0, "i":I
    if-eqz p2, :cond_3

    .line 176
    :goto_0
    sub-int v4, v2, v0

    iget-object v5, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->getAvailableSpace()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "nWritableChars":I
    move v1, v0

    .line 177
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    if-lez v3, :cond_0

    .line 178
    iget-object v4, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->writeShort(I)V

    .line 177
    add-int/lit8 v3, v3, -0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 180
    :cond_0
    if-lt v1, v2, :cond_1

    move v0, v1

    .line 199
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_2
    return-void

    .line 183
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    .line 184
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    move v0, v1

    .line 185
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 195
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    .line 196
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    move v0, v1

    .line 188
    .end local v1    # "i":I
    .end local v3    # "nWritableChars":I
    .restart local v0    # "i":I
    :cond_3
    sub-int v4, v2, v0

    iget-object v5, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->getAvailableSpace()I

    move-result v5

    div-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "nWritableChars":I
    move v1, v0

    .line 189
    .end local v0    # "i":I
    .restart local v1    # "i":I
    :goto_3
    if-lez v3, :cond_4

    .line 190
    iget-object v4, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->writeByte(I)V

    .line 189
    add-int/lit8 v3, v3, -0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 192
    :cond_4
    if-lt v1, v2, :cond_2

    move v0, v1

    .line 193
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_2
.end method


# virtual methods
.method public getAvailableSpace()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->getAvailableSpace()I

    move-result v0

    return v0
.end method

.method public getTotalSize()I
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_totalPreviousRecordsSize:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->getTotalSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method terminate()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->terminate()V

    .line 57
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B

    .prologue
    .line 202
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 203
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->write([B)V

    .line 204
    return-void
.end method

.method public write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, "i":I
    :goto_0
    sub-int v3, p3, v0

    iget-object v4, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->getAvailableSpace()I

    move-result v4

    div-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "nWritableChars":I
    move v1, v0

    .line 211
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    if-lez v2, :cond_0

    .line 212
    iget-object v3, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    add-int v4, p2, v1

    aget-byte v4, p1, v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->writeByte(I)V

    .line 211
    add-int/lit8 v2, v2, -0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 214
    :cond_0
    if-lt v1, p3, :cond_1

    .line 219
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    move v0, v1

    .line 218
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public writeByte(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 223
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->writeByte(I)V

    .line 224
    return-void
.end method

.method public writeContinue()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->terminate()V

    .line 71
    iget v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_totalPreviousRecordsSize:I

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->getTotalSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_totalPreviousRecordsSize:I

    .line 72
    new-instance v0, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_out:Lorg/apache/poi/util/LittleEndianOutput;

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;-><init>(Lorg/apache/poi/util/LittleEndianOutput;I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    .line 73
    return-void
.end method

.method public writeContinueIfRequired(I)V
    .locals 1
    .param p1, "requiredContinuousSize"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->getAvailableSpace()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinue()V

    .line 83
    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 226
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 227
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->writeDouble(D)V

    .line 228
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 230
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 231
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->writeInt(I)V

    .line 232
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 234
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 235
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->writeLong(J)V

    .line 236
    return-void
.end method

.method public writeShort(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 238
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 239
    iget-object v0, p0, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->_ulrOutput:Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cont/UnknownLengthRecordOutput;->writeShort(I)V

    .line 240
    return-void
.end method

.method public writeString(Ljava/lang/String;II)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "numberOfRichTextRuns"    # I
    .param p3, "extendedDataSize"    # I

    .prologue
    .line 142
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    .line 144
    .local v0, "is16bitEncoded":Z
    const/4 v1, 0x4

    .line 145
    .local v1, "keepTogetherSize":I
    const/4 v2, 0x0

    .line 146
    .local v2, "optionFlags":I
    if-eqz v0, :cond_0

    .line 147
    or-int/lit8 v2, v2, 0x1

    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 150
    :cond_0
    if-lez p2, :cond_1

    .line 151
    or-int/lit8 v2, v2, 0x8

    .line 152
    add-int/lit8 v1, v1, 0x2

    .line 154
    :cond_1
    if-lez p3, :cond_2

    .line 155
    or-int/lit8 v2, v2, 0x4

    .line 156
    add-int/lit8 v1, v1, 0x4

    .line 158
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 160
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 161
    if-lez p2, :cond_3

    .line 162
    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeShort(I)V

    .line 164
    :cond_3
    if-lez p3, :cond_4

    .line 165
    invoke-virtual {p0, p3}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeInt(I)V

    .line 167
    :cond_4
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeCharacterData(Ljava/lang/String;Z)V

    .line 168
    return-void
.end method

.method public writeStringData(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1}, Lorg/apache/poi/util/StringUtil;->hasMultibyte(Ljava/lang/String;)Z

    move-result v0

    .line 105
    .local v0, "is16bitEncoded":Z
    const/4 v1, 0x2

    .line 106
    .local v1, "keepTogetherSize":I
    const/4 v2, 0x0

    .line 107
    .local v2, "optionFlags":I
    if-eqz v0, :cond_0

    .line 108
    or-int/lit8 v2, v2, 0x1

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 111
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeContinueIfRequired(I)V

    .line 112
    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeByte(I)V

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/cont/ContinuableRecordOutput;->writeCharacterData(Ljava/lang/String;Z)V

    .line 114
    return-void
.end method
