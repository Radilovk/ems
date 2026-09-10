.class public final Lorg/apache/poi/hssf/record/ObjRecord;
.super Lorg/apache/poi/hssf/record/Record;
.source "ObjRecord.java"


# static fields
.field private static MAX_PAD_ALIGNMENT:I = 0x0

.field private static final NORMAL_PAD_ALIGNMENT:I = 0x2

.field public static final sid:S = 0x5ds


# instance fields
.field private _isPaddedToQuadByteMultiple:Z

.field private final _uninterpretedData:[B

.field private subrecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/SubRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x4

    sput v0, Lorg/apache/poi/hssf/record/ObjRecord;->MAX_PAD_ALIGNMENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 11
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 60
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/Record;-><init>()V

    .line 72
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v6

    .line 73
    .local v6, "subRecordData":[B
    invoke-static {v6, v8}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v7

    const/16 v9, 0x15

    if-eq v7, v9, :cond_0

    .line 77
    iput-object v6, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    .line 78
    iput-object v10, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 119
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {v4, v0}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v4, "subRecStream":Lorg/apache/poi/util/LittleEndianInputStream;
    invoke-static {v4, v8}, Lorg/apache/poi/hssf/record/SubRecord;->createSubRecord(Lorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;

    .line 94
    .local v1, "cmo":Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;
    iget-object v7, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/CommonObjectDataSubRecord;->getObjectType()S

    move-result v7

    invoke-static {v4, v7}, Lorg/apache/poi/hssf/record/SubRecord;->createSubRecord(Lorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/hssf/record/SubRecord;

    move-result-object v5

    .line 97
    .local v5, "subRecord":Lorg/apache/poi/hssf/record/SubRecord;
    iget-object v7, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v5}, Lorg/apache/poi/hssf/record/SubRecord;->isTerminating()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 102
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 103
    .local v3, "nRemainingBytes":I
    if-lez v3, :cond_6

    .line 105
    array-length v7, v6

    sget v9, Lorg/apache/poi/hssf/record/ObjRecord;->MAX_PAD_ALIGNMENT:I

    rem-int/2addr v7, v9

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    .line 106
    iget-boolean v7, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    if-eqz v7, :cond_3

    sget v7, Lorg/apache/poi/hssf/record/ObjRecord;->MAX_PAD_ALIGNMENT:I

    :goto_2
    if-lt v3, v7, :cond_5

    .line 107
    invoke-static {v6, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->canPaddingBeDiscarded([BI)Z

    move-result v7

    if-nez v7, :cond_4

    .line 108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Leftover "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes in subrecord data "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "msg":Ljava/lang/String;
    new-instance v7, Lorg/apache/poi/hssf/record/RecordFormatException;

    invoke-direct {v7, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    move v7, v8

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 v7, 0x2

    goto :goto_2

    .line 112
    :cond_4
    iput-boolean v8, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    .line 118
    :cond_5
    :goto_3
    iput-object v10, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    goto :goto_0

    .line 116
    :cond_6
    iput-boolean v8, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    goto :goto_3
.end method

.method private static canPaddingBeDiscarded([BI)Z
    .locals 2
    .param p0, "data"    # [B
    .param p1, "nRemainingBytes"    # I

    .prologue
    .line 132
    array-length v1, p0

    sub-int v0, v1, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 133
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    .line 137
    :goto_1
    return v1

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addSubRecord(ILorg/apache/poi/hssf/record/SubRecord;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/apache/poi/hssf/record/SubRecord;

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    return-void
.end method

.method public addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z
    .locals 1
    .param p1, "o"    # Lorg/apache/poi/hssf/record/SubRecord;

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearSubRecords()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 226
    new-instance v1, Lorg/apache/poi/hssf/record/ObjRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/ObjRecord;-><init>()V

    .line 228
    .local v1, "rec":Lorg/apache/poi/hssf/record/ObjRecord;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 229
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/SubRecord;

    .line 230
    .local v2, "record":Lorg/apache/poi/hssf/record/SubRecord;
    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/SubRecord;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/hssf/record/SubRecord;

    invoke-virtual {v1, v3}, Lorg/apache/poi/hssf/record/ObjRecord;->addSubRecord(Lorg/apache/poi/hssf/record/SubRecord;)Z

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "record":Lorg/apache/poi/hssf/record/SubRecord;
    :cond_0
    return-object v1
.end method

.method public getRecordSize()I
    .locals 4

    .prologue
    .line 157
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x4

    .line 174
    :goto_0
    return v3

    .line 160
    :cond_0
    const/4 v2, 0x0

    .line 161
    .local v2, "size":I
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 162
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/SubRecord;

    .line 163
    .local v1, "record":Lorg/apache/poi/hssf/record/SubRecord;
    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/SubRecord;->getDataSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    .line 161
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 165
    .end local v1    # "record":Lorg/apache/poi/hssf/record/SubRecord;
    :cond_1
    iget-boolean v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_isPaddedToQuadByteMultiple:Z

    if-eqz v3, :cond_2

    .line 166
    :goto_2
    sget v3, Lorg/apache/poi/hssf/record/ObjRecord;->MAX_PAD_ALIGNMENT:I

    rem-int v3, v2, v3

    if-eqz v3, :cond_3

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 170
    :cond_2
    :goto_3
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_3

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 174
    :cond_3
    add-int/lit8 v3, v2, 0x4

    goto :goto_0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 205
    const/16 v0, 0x5d

    return v0
.end method

.method public getSubRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/poi/hssf/record/SubRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    return-object v0
.end method

.method public serialize(I[B)I
    .locals 7
    .param p1, "offset"    # I
    .param p2, "data"    # [B

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/ObjRecord;->getRecordSize()I

    move-result v4

    .line 180
    .local v4, "recSize":I
    add-int/lit8 v0, v4, -0x4

    .line 181
    .local v0, "dataSize":I
    new-instance v3, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;

    invoke-direct {v3, p2, p1, v4}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;-><init>([BII)V

    .line 183
    .local v3, "out":Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;
    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 184
    invoke-virtual {v3, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeShort(I)V

    .line 186
    iget-object v6, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    if-nez v6, :cond_1

    .line 188
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 189
    iget-object v6, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/hssf/record/SubRecord;

    .line 190
    .local v5, "record":Lorg/apache/poi/hssf/record/SubRecord;
    invoke-virtual {v5, v3}, Lorg/apache/poi/hssf/record/SubRecord;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v5    # "record":Lorg/apache/poi/hssf/record/SubRecord;
    :cond_0
    add-int v1, p1, v0

    .line 194
    .local v1, "expectedEndIx":I
    :goto_1
    invoke-virtual {v3}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->getWriteIndex()I

    move-result v6

    if-ge v6, v1, :cond_2

    .line 195
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeByte(I)V

    goto :goto_1

    .line 198
    .end local v1    # "expectedEndIx":I
    .end local v2    # "i":I
    :cond_1
    iget-object v6, p0, Lorg/apache/poi/hssf/record/ObjRecord;->_uninterpretedData:[B

    invoke-virtual {v3, v6}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    .line 200
    :cond_2
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v3, "[OBJ]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 147
    iget-object v3, p0, Lorg/apache/poi/hssf/record/ObjRecord;->subrecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/SubRecord;

    .line 148
    .local v1, "record":Lorg/apache/poi/hssf/record/SubRecord;
    const-string v3, "SUBRECORD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    .end local v1    # "record":Lorg/apache/poi/hssf/record/SubRecord;
    :cond_0
    const-string v3, "[/OBJ]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
