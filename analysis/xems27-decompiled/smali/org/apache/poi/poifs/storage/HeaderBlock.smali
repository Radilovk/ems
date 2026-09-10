.class public final Lorg/apache/poi/poifs/storage/HeaderBlock;
.super Ljava/lang/Object;
.source "HeaderBlock.java"

# interfaces
.implements Lorg/apache/poi/poifs/storage/HeaderBlockConstants;


# static fields
.field private static final _default_value:B = -0x1t

.field private static final _logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _bat_count:I

.field private final _data:[B

.field private _property_start:I

.field private _sbat_count:I

.field private _sbat_start:I

.field private _xbat_count:I

.field private _xbat_start:I

.field private final bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->readFirst512(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>([B)V

    .line 109
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v0

    sub-int/2addr v0, v1

    .line 111
    .local v0, "rest":I
    new-array v1, v0, [B

    .line 112
    .local v1, "tmp":[B
    invoke-static {p1, v1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    .line 114
    .end local v0    # "rest":I
    .end local v1    # "tmp":[B
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>([B)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/common/POIFSBigBlockSize;)V
    .locals 6
    .param p1, "bigBlockSize"    # Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 200
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    .line 201
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 204
    new-instance v0, Lorg/apache/poi/util/LongField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v2, 0x0

    const-wide v3, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/poi/util/LongField;-><init>(IJ[B)V

    .line 205
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x8

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 206
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0xc

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 207
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x10

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 208
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x14

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 209
    new-instance v0, Lorg/apache/poi/util/ShortField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x18

    const/16 v4, 0x3b

    invoke-direct {v0, v3, v4, v1}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 210
    new-instance v0, Lorg/apache/poi/util/ShortField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x1a

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 211
    new-instance v0, Lorg/apache/poi/util/ShortField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x1c

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4, v1}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 213
    new-instance v0, Lorg/apache/poi/util/ShortField;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getHeaderValue()S

    move-result v1

    iget-object v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v5, 0x1e

    invoke-direct {v0, v5, v1, v3}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 214
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x20

    const/4 v5, 0x6

    invoke-direct {v0, v3, v5, v1}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 215
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x24

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 216
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x28

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 217
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x34

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 218
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x38

    const/16 v5, 0x1000

    invoke-direct {v0, v3, v5, v1}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 221
    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    .line 222
    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    .line 223
    iput v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    .line 224
    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    .line 225
    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    .line 226
    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    .line 227
    return-void
.end method

.method private constructor <init>([B)V
    .locals 17
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object v1, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    .line 124
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v3

    .line 126
    .local v3, "signature":J
    const-wide v5, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    const/16 v8, 0x9

    cmp-long v9, v3, v5

    if-eqz v9, :cond_c

    .line 128
    sget-object v9, Lorg/apache/poi/poifs/common/POIFSConstants;->OOXML_FILE_HEADER:[B

    .line 129
    .local v9, "OOXML_FILE_HEADER":[B
    iget-object v10, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v11, v10, v2

    aget-byte v12, v9, v2

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-ne v11, v12, :cond_1

    aget-byte v11, v10, v15

    aget-byte v12, v9, v15

    if-ne v11, v12, :cond_1

    aget-byte v11, v10, v14

    aget-byte v12, v9, v14

    if-ne v11, v12, :cond_1

    aget-byte v10, v10, v13

    aget-byte v11, v9, v13

    if-eq v10, v11, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    new-instance v2, Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;

    const-string v5, "The supplied data appears to be in the Office 2007+ XML. You are calling the part of POI that deals with OLE2 Office Documents. You need to call a different part of POI to process this data (eg XSSF instead of HSSF)"

    invoke-direct {v2, v5}, Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_1
    :goto_0
    iget-object v10, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v11, v10, v2

    const/16 v12, 0x20

    const/16 v5, 0x10

    const/4 v6, 0x5

    const/16 v16, 0x7

    const/4 v2, 0x4

    const/4 v7, 0x6

    if-ne v11, v8, :cond_4

    aget-byte v11, v10, v15

    if-nez v11, :cond_4

    aget-byte v11, v10, v14

    if-ne v11, v2, :cond_4

    aget-byte v11, v10, v13

    if-nez v11, :cond_4

    aget-byte v11, v10, v2

    if-nez v11, :cond_4

    aget-byte v11, v10, v6

    if-nez v11, :cond_4

    aget-byte v11, v10, v7

    if-eq v11, v5, :cond_2

    aget-byte v11, v10, v7

    if-eq v11, v12, :cond_2

    aget-byte v10, v10, v7

    const/16 v11, 0x40

    if-ne v10, v11, :cond_4

    :cond_2
    iget-object v10, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v10, v10, v16

    if-eqz v10, :cond_3

    goto :goto_1

    .line 142
    :cond_3
    new-instance v2, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v5, "The supplied data appears to be in BIFF2 format. HSSF only supports the BIFF8 format, try OldExcelExtractor"

    invoke-direct {v2, v5}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_4
    :goto_1
    iget-object v10, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v11, 0x0

    aget-byte v12, v10, v11

    if-ne v12, v8, :cond_7

    aget-byte v11, v10, v15

    if-ne v11, v14, :cond_7

    aget-byte v11, v10, v14

    if-ne v11, v7, :cond_7

    aget-byte v11, v10, v13

    if-nez v11, :cond_7

    aget-byte v11, v10, v2

    if-nez v11, :cond_7

    aget-byte v11, v10, v6

    if-nez v11, :cond_7

    aget-byte v11, v10, v7

    if-eq v11, v5, :cond_5

    aget-byte v11, v10, v7

    const/16 v12, 0x20

    if-eq v11, v12, :cond_5

    aget-byte v10, v10, v7

    const/16 v11, 0x40

    if-ne v10, v11, :cond_7

    :cond_5
    iget-object v10, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v10, v10, v16

    if-eqz v10, :cond_6

    goto :goto_2

    .line 151
    :cond_6
    new-instance v2, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v5, "The supplied data appears to be in BIFF3 format. HSSF only supports the BIFF8 format, try OldExcelExtractor"

    invoke-direct {v2, v5}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :cond_7
    :goto_2
    iget-object v10, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v11, 0x0

    aget-byte v11, v10, v11

    if-ne v11, v8, :cond_b

    aget-byte v8, v10, v15

    if-ne v8, v2, :cond_b

    aget-byte v8, v10, v14

    if-ne v8, v7, :cond_b

    aget-byte v8, v10, v13

    if-nez v8, :cond_b

    aget-byte v2, v10, v2

    if-nez v2, :cond_b

    aget-byte v2, v10, v6

    if-nez v2, :cond_b

    .line 157
    aget-byte v2, v10, v7

    if-eq v2, v5, :cond_8

    aget-byte v2, v10, v7

    const/16 v5, 0x20

    if-eq v2, v5, :cond_8

    aget-byte v2, v10, v7

    const/16 v5, 0x40

    if-ne v2, v5, :cond_9

    :cond_8
    iget-object v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v2, v2, v16

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v5, v2, v7

    if-nez v5, :cond_b

    aget-byte v2, v2, v16

    if-ne v2, v15, :cond_b

    .line 161
    :cond_a
    new-instance v2, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v5, "The supplied data appears to be in BIFF4 format. HSSF only supports the BIFF8 format, try OldExcelExtractor"

    invoke-direct {v2, v5}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_b
    new-instance v2, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid header signature; read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lorg/apache/poi/poifs/storage/HeaderBlock;->longToHex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v6, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    invoke-static {v6, v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->longToHex(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - Your file appears "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "not to be a valid OLE2 document"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    .end local v9    # "OOXML_FILE_HEADER":[B
    :cond_c
    iget-object v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v5, 0x1e

    aget-byte v6, v2, v5

    const/16 v7, 0xc

    if-ne v6, v7, :cond_d

    .line 176
    sget-object v2, Lorg/apache/poi/poifs/common/POIFSConstants;->LARGER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_3

    .line 177
    :cond_d
    aget-byte v2, v2, v5

    if-ne v2, v8, :cond_e

    .line 178
    sget-object v2, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 184
    :goto_3
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v5, 0x2c

    invoke-direct {v2, v5, v1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    .line 185
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v5, 0x30

    iget-object v6, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v2, v5, v6}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    .line 186
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v5, 0x3c

    iget-object v6, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v2, v5, v6}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    .line 187
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    iget-object v5, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v6, 0x40

    invoke-direct {v2, v6, v5}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    .line 188
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v5, 0x44

    iget-object v6, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v2, v5, v6}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    .line 189
    new-instance v2, Lorg/apache/poi/util/IntegerField;

    const/16 v5, 0x48

    iget-object v6, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v2, v5, v6}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v2}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v2

    iput v2, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    .line 190
    return-void

    .line 180
    :cond_e
    new-instance v2, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported blocksize  (2^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v5, v7, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "). Expected 2^9 or 2^12."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static alertShortRead(II)Ljava/io/IOException;
    .locals 5
    .param p0, "pRead"    # I
    .param p1, "expectedReadSize"    # I

    .line 246
    if-gez p0, :cond_0

    .line 248
    const/4 v0, 0x0

    .local v0, "read":I
    goto :goto_0

    .line 250
    .end local v0    # "read":I
    :cond_0
    move v0, p0

    .line 252
    .restart local v0    # "read":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    const-string v2, "s"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read entire header; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " read; expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private static longToHex(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .line 241
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/apache/poi/util/HexDump;->longToHex(J)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static readFirst512(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    const/16 v0, 0x200

    new-array v1, v0, [B

    .line 233
    .local v1, "data":[B
    invoke-static {p0, v1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 234
    .local v2, "bsCount":I
    if-ne v2, v0, :cond_0

    .line 237
    return-object v1

    .line 235
    :cond_0
    invoke-static {v2, v0}, Lorg/apache/poi/poifs/storage/HeaderBlock;->alertShortRead(II)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getBATArray()[I
    .locals 4

    .line 328
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [I

    .line 329
    .local v0, "result":[I
    const/16 v1, 0x4c

    .line 330
    .local v1, "offset":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 331
    iget-object v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-static {v3, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    aput v3, v0, v2

    .line 332
    add-int/lit8 v1, v1, 0x4

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v2    # "j":I
    :cond_0
    return-object v0
.end method

.method public getBATCount()I
    .locals 1

    .line 309
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    return v0
.end method

.method public getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getPropertyStart()I
    .locals 1

    .line 265
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    return v0
.end method

.method public getSBATCount()I
    .locals 1

    .line 283
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    return v0
.end method

.method public getSBATStart()I
    .locals 1

    .line 280
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    return v0
.end method

.method public getXBATCount()I
    .locals 1

    .line 359
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    return v0
.end method

.method public getXBATIndex()I
    .locals 1

    .line 372
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    return v0
.end method

.method public setBATArray([I)V
    .locals 6
    .param p1, "bat_array"    # [I

    .line 341
    array-length v0, p1

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 342
    .local v0, "count":I
    rsub-int/lit8 v1, v0, 0x6d

    .line 344
    .local v1, "blank":I
    const/16 v2, 0x4c

    .line 345
    .local v2, "offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 346
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget v5, p1, v3

    invoke-static {v4, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 347
    add-int/lit8 v2, v2, 0x4

    .line 345
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 350
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v5, -0x1

    invoke-static {v4, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 351
    add-int/lit8 v2, v2, 0x4

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 353
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public setBATCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 316
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    .line 317
    return-void
.end method

.method public setPropertyStart(I)V
    .locals 0
    .param p1, "startBlock"    # I

    .line 273
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    .line 274
    return-void
.end method

.method public setSBATBlockCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 302
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    .line 303
    return-void
.end method

.method public setSBATStart(I)V
    .locals 0
    .param p1, "startBlock"    # I

    .line 293
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    .line 294
    return-void
.end method

.method public setXBATCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 365
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    .line 366
    return-void
.end method

.method public setXBATStart(I)V
    .locals 0
    .param p1, "startBlock"    # I

    .line 378
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    .line 379
    return-void
.end method

.method writeData(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x2c

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 402
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x30

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 403
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x3c

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 404
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x40

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 405
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x44

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 406
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    iget v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v3, 0x48

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 409
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v1, 0x0

    const/16 v2, 0x200

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 412
    const/16 v0, 0x200

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 413
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
