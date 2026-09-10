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
    .locals 12
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p2, "size"    # I

    .line 77
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/SubRecord;-><init>()V

    .line 84
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readShort()S

    move-result v0

    .line 85
    .local v0, "streamIdOffset":I
    add-int/lit8 v1, p2, -0x2

    .line 87
    .local v1, "remaining":I
    sub-int v2, v1, v0

    .line 88
    .local v2, "dataLenAfterFormula":I
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v3

    .line 89
    .local v3, "formulaSize":I
    add-int/lit8 v1, v1, -0x2

    .line 90
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v4

    iput v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    .line 91
    add-int/lit8 v1, v1, -0x4

    .line 92
    invoke-static {p1, v3}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    move-result-object v4

    .line 93
    .local v4, "formulaRawBytes":[B
    sub-int/2addr v1, v3

    .line 94
    invoke-static {v4}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRefPtg([B)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 95
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 99
    iput-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    goto :goto_0

    .line 101
    :cond_0
    iput-object v6, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 105
    :goto_0
    add-int/lit8 v5, v2, 0x3

    if-lt v1, v5, :cond_5

    .line 106
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v5

    .line 107
    .local v5, "tag":I
    const/4 v7, 0x1

    .line 108
    .local v7, "stringByteCount":I
    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    .line 111
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readUShort()I

    move-result v8

    .line 112
    .local v8, "nChars":I
    add-int/lit8 v7, v7, 0x2

    .line 113
    if-lez v8, :cond_3

    .line 115
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v9

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    .line 116
    add-int/lit8 v7, v7, 0x1

    .line 117
    if-eqz v10, :cond_2

    .line 118
    invoke-static {p1, v8}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 119
    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v7, v9

    goto :goto_2

    .line 121
    :cond_2
    invoke-static {p1, v8}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 122
    add-int/2addr v7, v8

    goto :goto_2

    .line 125
    :cond_3
    const-string v9, ""

    iput-object v9, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 127
    .end local v5    # "tag":I
    .end local v8    # "nChars":I
    :goto_2
    goto :goto_3

    .line 109
    .restart local v5    # "tag":I
    :cond_4
    new-instance v6, Lorg/apache/poi/hssf/record/RecordFormatException;

    const-string v8, "Expected byte 0x03 here"

    invoke-direct {v6, v8}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 128
    .end local v5    # "tag":I
    .end local v7    # "stringByteCount":I
    :cond_5
    iput-object v6, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 129
    const/4 v7, 0x0

    .line 131
    .restart local v7    # "stringByteCount":I
    :goto_3
    sub-int/2addr v1, v7

    .line 133
    add-int v5, v7, v3

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    .line 134
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v5

    .line 135
    .local v5, "b":I
    add-int/lit8 v1, v1, -0x1

    .line 136
    iget-object v8, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v8, :cond_6

    .line 137
    int-to-byte v8, v5

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    iput-object v8, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    .line 140
    .end local v5    # "b":I
    :cond_6
    sub-int v5, v1, v2

    .line 142
    .local v5, "nUnexpectedPadding":I
    if-lez v5, :cond_7

    .line 143
    sget-object v8, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v9, 0x7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Discarding "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " unexpected padding bytes "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 144
    invoke-static {p1, v5}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    .line 145
    sub-int/2addr v1, v5

    .line 149
    :cond_7
    const/4 v8, 0x4

    if-lt v2, v8, :cond_8

    .line 150
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    .line 151
    add-int/lit8 v1, v1, -0x4

    goto :goto_4

    .line 153
    :cond_8
    iput-object v6, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    .line 155
    :goto_4
    invoke-static {p1, v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B

    move-result-object v6

    iput-object v6, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    .line 156
    return-void
.end method

.method private getDataSize(I)I
    .locals 2
    .param p1, "idOffset"    # I

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

    .line 183
    const/4 v0, 0x6

    .line 184
    .local v0, "result":I
    add-int/2addr v0, p1

    .line 187
    iget-object v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 189
    const/4 v1, 0x0

    .local v1, "stringLen":I
    goto :goto_0

    .line 191
    .end local v1    # "stringLen":I
    :cond_0
    add-int/lit8 v0, v0, 0x3

    .line 192
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 193
    .restart local v1    # "stringLen":I
    if-lez v1, :cond_2

    .line 194
    add-int/lit8 v0, v0, 0x1

    .line 195
    iget-boolean v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v2, :cond_1

    .line 196
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    goto :goto_0

    .line 198
    :cond_1
    add-int/2addr v0, v1

    .line 203
    :cond_2
    :goto_0
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 206
    :cond_3
    return v0
.end method

.method private static readRawData(Lorg/apache/poi/util/LittleEndianInput;I)[B
    .locals 3
    .param p0, "in"    # Lorg/apache/poi/util/LittleEndianInput;
    .param p1, "size"    # I

    .line 171
    if-ltz p1, :cond_1

    .line 174
    if-nez p1, :cond_0

    .line 175
    sget-object v0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 177
    :cond_0
    new-array v0, p1, [B

    .line 178
    .local v0, "result":[B
    invoke-interface {p0, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 179
    return-object v0

    .line 172
    .end local v0    # "result":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readRefPtg([B)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3
    .param p0, "formulaRawBytes"    # [B

    .line 159
    new-instance v0, Lorg/apache/poi/util/LittleEndianInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    .line 160
    .local v0, "in":Lorg/apache/poi/util/LittleEndianInput;
    invoke-interface {v0}, Lorg/apache/poi/util/LittleEndianInput;->readByte()B

    move-result v1

    .line 161
    .local v1, "ptgSid":B
    const/16 v2, 0x24

    if-eq v1, v2, :cond_3

    const/16 v2, 0x25

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    .line 167
    const/4 v2, 0x0

    return-object v2

    .line 163
    :cond_0
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v2

    .line 165
    :cond_1
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v2

    .line 162
    :cond_2
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v2

    .line 164
    :cond_3
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-object v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 309
    return-object p0
.end method

.method protected getDataSize()I
    .locals 3

    .line 218
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

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
.end method

.method public getOLEClassName()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectData()[B
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 74
    const/16 v0, 0x9

    return v0
.end method

.method public getStreamId()Ljava/lang/Integer;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 8
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 225
    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    array-length v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/Ptg;->getSize()I

    move-result v0

    .line 226
    .local v0, "formulaSize":I
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getStreamIDOffset(I)I

    move-result v1

    .line 227
    .local v1, "idOffset":I
    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->getDataSize(I)I

    move-result v2

    .line 230
    .local v2, "dataSize":I
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 231
    invoke-interface {p1, v2}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 233
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 234
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 235
    iget v3, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    invoke-interface {p1, v3}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 237
    const/16 v3, 0xc

    .line 239
    .local v3, "pos":I
    iget-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v4, :cond_1

    .line 240
    iget-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    invoke-interface {p1, v4}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    goto :goto_1

    .line 242
    :cond_1
    invoke-virtual {v4, p1}, Lorg/apache/poi/ss/formula/ptg/Ptg;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 244
    :goto_1
    add-int/2addr v3, v0

    .line 247
    iget-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 249
    const/4 v4, 0x0

    .local v4, "stringLen":I
    goto :goto_2

    .line 251
    .end local v4    # "stringLen":I
    :cond_2
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 252
    add-int/lit8 v3, v3, 0x1

    .line 253
    iget-object v4, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 254
    .restart local v4    # "stringLen":I
    invoke-interface {p1, v4}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 255
    add-int/lit8 v3, v3, 0x2

    .line 256
    if-lez v4, :cond_4

    .line 257
    iget-boolean v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 258
    add-int/lit8 v3, v3, 0x1

    .line 260
    iget-boolean v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    if-eqz v5, :cond_3

    .line 261
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-static {v5, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 262
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v3, v5

    goto :goto_2

    .line 264
    :cond_3
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-static {v5, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 265
    add-int/2addr v3, v4

    .line 271
    :cond_4
    :goto_2
    add-int/lit8 v5, v3, -0x6

    sub-int v5, v1, v5

    if-eqz v5, :cond_7

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 273
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Byte;->intValue()I

    move-result v5

    :goto_3
    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    .line 274
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 278
    :cond_6
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad padding calculation ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    :cond_7
    :goto_4
    nop

    .line 281
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v5, :cond_8

    .line 282
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 283
    add-int/lit8 v3, v3, 0x4

    .line 285
    :cond_8
    iget-object v5, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    invoke-interface {p1, v5}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 286
    return-void
.end method

.method public setOleClassname(Ljava/lang/String;)V
    .locals 0
    .param p1, "oleClassname"    # Ljava/lang/String;

    .line 343
    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setStorageId(I)V
    .locals 1
    .param p1, "storageId"    # I

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

    .line 339
    iput-object p1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    .line 340
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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

    iget v1, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_1_unknown_int:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    if-nez v2, :cond_0

    .line 317
    const-string v2, "    .f3unknown     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_unknownFormulaData:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 319
    :cond_0
    const-string v2, "    .formula       = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_2_refPtg:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/Ptg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 322
    const-string v2, "    .unicodeFlag   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_3_unicode_flag:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-string v2, "    .oleClassname  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_ole_classname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    if-eqz v2, :cond_2

    .line 326
    const-string v2, "    .f4unknown   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_4_unknownByte:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->byteToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 329
    const-string v2, "    .streamId      = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_5_stream_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    :cond_3
    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    array-length v2, v2

    if-lez v2, :cond_4

    .line 332
    const-string v2, "    .f7unknown     = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/EmbeddedObjectRefSubRecord;->field_6_unknown:[B

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    :cond_4
    const-string v1, "[/ftPictFmla]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
