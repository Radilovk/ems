.class public final Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;
.super Lorg/apache/poi/hssf/record/SubRecord;
.source "EmbeddedObjectRefSubRecord.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B

.field private static logger:Lorg/apache/poi/util/POILogger; = null

.field public static final sid:S = 0x9s


# instance fields
.field private field_1_unknown_int:I

.field private field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private field_2_unknownFormulaData:[B

.field private field_3_unicode_flag:Z

.field private field_4_ole_classname:Ljava/lang/String;

.field private field_4_unknownByte:Ljava/lang/Byte;

.field private field_5_stream_id:Ljava/lang/Integer;

.field private field_6_unknown:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->logger:Lorg/apache/poi/util/POILogger;

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 69
    sget-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 71
    return-void

    .line 68
    nop

    :array_0
    .array-data 1
        0x2t
        0x6ct
        0x6at
        0x16t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;I)V
    .locals 14
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 84
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v7

    .line 85
    .local v7, "streamIdOffset":I
    add-int/lit8 v6, p2, -0x2

    .line 87
    .local v6, "remaining":I
    sub-int v1, v6, v7

    .line 88
    .local v1, "dataLenAfterFormula":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    .line 89
    .local v3, "formulaSize":I
    add-int/lit8 v6, v6, -0x2

    .line 90
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v10

    iput v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    .line 91
    add-int/lit8 v6, v6, -0x4

    .line 92
    invoke-static {p1, v3}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    move-result-object v2

    .line 93
    .local v2, "formulaRawBytes":[B
    sub-int/2addr v6, v3

    .line 94
    invoke-static {v2}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRefPtg([B)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 95
    iget-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v10, :cond_0

    .line 99
    iput-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 105
    :goto_0
    add-int/lit8 v10, v1, 0x3

    if-lt v6, v10, :cond_7

    .line 106
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v9

    .line 107
    .local v9, "tag":I
    const/4 v8, 0x1

    .line 108
    .local v8, "stringByteCount":I
    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    .line 109
    new-instance v10, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v11, "Expected byte 0x03 here"

    invoke-direct {v10, v11}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 101
    .end local v8    # "stringByteCount":I
    .end local v9    # "tag":I
    :cond_0
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    goto :goto_0

    .line 111
    .restart local v8    # "stringByteCount":I
    .restart local v9    # "tag":I
    :cond_1
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v4

    .line 112
    .local v4, "nChars":I
    add-int/lit8 v8, v8, 0x2

    .line 113
    if-lez v4, :cond_6

    .line 115
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v10

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    .line 116
    add-int/lit8 v8, v8, 0x1

    .line 117
    iget-boolean v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v10, :cond_5

    .line 118
    invoke-static {p1, v4}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 119
    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v8, v10, 0x4

    .line 131
    .end local v4    # "nChars":I
    .end local v9    # "tag":I
    :goto_2
    sub-int/2addr v6, v8

    .line 133
    add-int v10, v8, v3

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_2

    .line 134
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v0

    .line 135
    .local v0, "b":I
    add-int/lit8 v6, v6, -0x1

    .line 136
    iget-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 137
    int-to-byte v10, v0

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    .line 140
    .end local v0    # "b":I
    :cond_2
    sub-int v5, v6, v1

    .line 142
    .local v5, "nUnexpectedPadding":I
    if-lez v5, :cond_3

    .line 143
    sget-object v10, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v11, 0x7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Discarding "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " unexpected padding bytes "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 144
    invoke-static {p1, v5}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    .line 145
    sub-int/2addr v6, v5

    .line 149
    :cond_3
    const/4 v10, 0x4

    if-lt v1, v10, :cond_8

    .line 150
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    .line 151
    add-int/lit8 v6, v6, -0x4

    .line 155
    :goto_3
    invoke-static {p1, v6}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    move-result-object v10

    iput-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    .line 156
    return-void

    .line 115
    .end local v5    # "nUnexpectedPadding":I
    .restart local v4    # "nChars":I
    .restart local v9    # "tag":I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 121
    :cond_5
    invoke-static {p1, v4}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 122
    add-int/lit8 v8, v4, 0x4

    goto :goto_2

    .line 125
    :cond_6
    const-string v10, ""

    iput-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    goto :goto_2

    .line 128
    .end local v4    # "nChars":I
    .end local v8    # "stringByteCount":I
    .end local v9    # "tag":I
    :cond_7
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 129
    const/4 v8, 0x0

    .restart local v8    # "stringByteCount":I
    goto :goto_2

    .line 153
    .restart local v5    # "nUnexpectedPadding":I
    :cond_8
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    goto :goto_3
.end method

.method private getDataSize(I)I
    .locals 2
    .param p1, "idOffset"    # I

    .prologue
    .line 211
    add-int/lit8 v0, p1, 0x2

    .line 212
    .local v0, "result":I
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 213
    add-int/lit8 v0, v0, 0x4

    .line 215
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    array-length v1, v1

    add-int/2addr v1, v0

    return v1
.end method

.method private getStreamIDOffset(I)I
    .locals 3
    .param p1, "formulaSize"    # I

    .prologue
    .line 183
    const/4 v0, 0x6

    .line 184
    .local v0, "result":I
    add-int/2addr v0, p1

    .line 187
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 189
    const/4 v1, 0x0

    .line 203
    .local v1, "stringLen":I
    :cond_0
    :goto_0
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 206
    :cond_1
    return v0

    .line 191
    .end local v1    # "stringLen":I
    :cond_2
    add-int/lit8 v0, v0, 0x3

    .line 192
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 193
    .restart local v1    # "stringLen":I
    if-lez v1, :cond_0

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 195
    iget-boolean v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v2, :cond_3

    .line 196
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    goto :goto_0

    .line 198
    :cond_3
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private static readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B
    .locals 4
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "size"    # I

    .prologue
    .line 171
    if-gez p1, :cond_0

    .line 172
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    if-nez p1, :cond_1

    .line 175
    sget-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    .line 179
    :goto_0
    return-object v0

    .line 177
    :cond_1
    new-array v0, p1, [B

    .line 178
    .local v0, "result":[B
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    goto :goto_0
.end method

.method private static readRefPtg([B)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p0, "formulaRawBytes"    # [B

    .prologue
    .line 159
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    .local v0, "in":Lorg/apache/poi/util/LittleEndianInput;
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    .line 161
    .local v1, "ptgSid":B
    sparse-switch v1, :sswitch_data_0

    .line 167
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 162
    :sswitch_0
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    goto :goto_0

    .line 163
    :sswitch_1
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    goto :goto_0

    .line 164
    :sswitch_2
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    goto :goto_0

    .line 165
    :sswitch_3
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    goto :goto_0

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_2
        0x25 -> :sswitch_0
        0x3a -> :sswitch_3
        0x3b -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 309
    return-object p0
.end method

.method protected getDataSize()I
    .locals 3

    .prologue
    .line 218
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    array-length v0, v2

    .line 219
    .local v0, "formulaSize":I
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamIDOffset(I)I

    move-result v1

    .line 220
    .local v1, "idOffset":I
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getDataSize(I)I

    move-result v2

    return v2

    .line 218
    .end local v0    # "formulaSize":I
    .end local v1    # "idOffset":I
    :cond_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    goto :goto_0
.end method

.method public getOLEClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectData()[B
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x9

    return v0
.end method

.method public getStreamId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 8
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .prologue
    const/4 v6, 0x0

    .line 225
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    array-length v1, v5

    .line 226
    .local v1, "formulaSize":I
    :goto_0
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamIDOffset(I)I

    move-result v2

    .line 227
    .local v2, "idOffset":I
    invoke-direct {p0, v2}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getDataSize(I)I

    move-result v0

    .line 230
    .local v0, "dataSize":I
    const/16 v5, 0x9

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 231
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 233
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 234
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 235
    iget v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 237
    const/16 v3, 0xc

    .line 239
    .local v3, "pos":I
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v5, :cond_2

    .line 240
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 244
    :goto_1
    add-int/2addr v3, v1

    .line 247
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 249
    const/4 v4, 0x0

    .line 271
    .local v4, "stringLen":I
    :cond_0
    :goto_2
    add-int/lit8 v5, v3, -0x6

    sub-int v5, v2, v5

    packed-switch v5, :pswitch_data_0

    .line 278
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad padding calculation ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 225
    .end local v0    # "dataSize":I
    .end local v1    # "formulaSize":I
    .end local v2    # "idOffset":I
    .end local v3    # "pos":I
    .end local v4    # "stringLen":I
    :cond_1
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v1

    goto :goto_0

    .line 242
    .restart local v0    # "dataSize":I
    .restart local v1    # "formulaSize":I
    .restart local v2    # "idOffset":I
    .restart local v3    # "pos":I
    :cond_2
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v5, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_1

    .line 251
    :cond_3
    const/4 v5, 0x3

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 252
    add-int/lit8 v3, v3, 0x1

    .line 253
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 254
    .restart local v4    # "stringLen":I
    invoke-interface {p1, v4}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 255
    add-int/lit8 v3, v3, 0x2

    .line 256
    if-lez v4, :cond_0

    .line 257
    iget-boolean v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_3
    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 258
    add-int/lit8 v3, v3, 0x1

    .line 260
    iget-boolean v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v5, :cond_5

    .line 261
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-static {v5, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 262
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v3, v5

    goto :goto_2

    :cond_4
    move v5, v6

    .line 257
    goto :goto_3

    .line 264
    :cond_5
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-static {v5, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 265
    add-int/2addr v3, v4

    goto :goto_2

    .line 273
    :pswitch_0
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    if-nez v5, :cond_7

    :goto_4
    invoke-interface {p1, v6}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 274
    add-int/lit8 v3, v3, 0x1

    .line 281
    :pswitch_1
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 282
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 283
    add-int/lit8 v3, v3, 0x4

    .line 285
    :cond_6
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 286
    return-void

    .line 273
    :cond_7
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->intValue()I

    move-result v6

    goto :goto_4

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOleClassname(Ljava/lang/String;)V
    .locals 0
    .param p1, "oleClassname"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setStorageId(I)V
    .locals 1
    .param p1, "storageId"    # I

    .prologue
    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    .line 348
    return-void
.end method

.method public setUnknownFormulaData([B)V
    .locals 0
    .param p1, "formularData"    # [B

    .prologue
    .line 339
    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 340
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 314
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[ftPictFmla]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string v1, "    .f2unknown     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v1, :cond_4

    .line 317
    const-string v1, "    .f3unknown     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 322
    const-string v1, "    .unicodeFlag   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v1, "    .oleClassname  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    if-eqz v1, :cond_1

    .line 326
    const-string v1, "    .f4unknown   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 329
    const-string v1, "    .streamId      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    array-length v1, v1

    if-lez v1, :cond_3

    .line 332
    const-string v1, "    .f7unknown     = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    :cond_3
    const-string v1, "[/ftPictFmla]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 319
    :cond_4
    const-string v1, "    .formula       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
