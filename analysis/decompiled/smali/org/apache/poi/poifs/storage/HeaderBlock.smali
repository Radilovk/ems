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

    .prologue
    .line 45
    const-class v0, Lorg/apache/poi/poifs/storage/HeaderBlock;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p1}, Lorg/apache/poi/poifs/storage/HeaderBlock;->readFirst512(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;-><init>([B)V

    .line 109
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    const/16 v3, 0x200

    if-eq v2, v3, :cond_0

    .line 110
    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v2}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v2

    add-int/lit16 v0, v2, -0x200

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

    .prologue
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

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 200
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    .line 201
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 204
    new-instance v0, Lorg/apache/poi/util/LongField;

    const-wide v2, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v4, v2, v3, v1}, Lorg/apache/poi/util/LongField;-><init>(IJ[B)V

    .line 205
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x8

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 206
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0xc

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 207
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x10

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 208
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x14

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 209
    new-instance v0, Lorg/apache/poi/util/ShortField;

    const/16 v1, 0x18

    const/16 v2, 0x3b

    iget-object v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 210
    new-instance v0, Lorg/apache/poi/util/ShortField;

    const/16 v1, 0x1a

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 211
    new-instance v0, Lorg/apache/poi/util/ShortField;

    const/16 v1, 0x1c

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 213
    new-instance v0, Lorg/apache/poi/util/ShortField;

    const/16 v1, 0x1e

    invoke-virtual {p1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getHeaderValue()S

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/util/ShortField;-><init>(IS[B)V

    .line 214
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x20

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 215
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x24

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 216
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x28

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 217
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x34

    iget-object v2, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 218
    new-instance v0, Lorg/apache/poi/util/IntegerField;

    const/16 v1, 0x38

    const/16 v2, 0x1000

    iget-object v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 221
    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    .line 222
    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    .line 223
    iput v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    .line 224
    iput v5, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    .line 225
    iput v5, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    .line 226
    iput v5, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    .line 227
    return-void
.end method

.method private constructor <init>([B)V
    .locals 11
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x6

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    .line 124
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-static {v1, v7}, Lorg/apache/poi/util/LittleEndian;->getLong([BI)J

    move-result-wide v2

    .line 126
    .local v2, "signature":J
    const-wide v4, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    cmp-long v1, v2, v4

    if-eqz v1, :cond_9

    .line 128
    sget-object v0, Lorg/apache/poi/poifs/common/POIFSConstants;->OOXML_FILE_HEADER:[B

    .line 129
    .local v0, "OOXML_FILE_HEADER":[B
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v7

    aget-byte v4, v0, v7

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v8

    aget-byte v4, v0, v8

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v9

    aget-byte v4, v0, v9

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v10

    aget-byte v4, v0, v10

    if-ne v1, v4, :cond_0

    .line 133
    new-instance v1, Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;

    const-string v4, "The supplied data appears to be in the Office 2007+ XML. You are calling the part of POI that deals with OLE2 Office Documents. You need to call a different part of POI to process this data (eg XSSF instead of HSSF)"

    invoke-direct {v1, v4}, Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v7

    const/16 v4, 0x9

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v8

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v9

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v10

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v4, 0x4

    aget-byte v1, v1, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v4, 0x5

    aget-byte v1, v1, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v6

    const/16 v4, 0x10

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v6

    const/16 v4, 0x20

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v6

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v4, 0x7

    aget-byte v1, v1, v4

    if-nez v1, :cond_2

    .line 142
    new-instance v1, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v4, "The supplied data appears to be in BIFF2 format. HSSF only supports the BIFF8 format, try OldExcelExtractor"

    invoke-direct {v1, v4}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_2
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v7

    const/16 v4, 0x9

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v8

    if-ne v1, v9, :cond_4

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v9

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v10

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v4, 0x4

    aget-byte v1, v1, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v4, 0x5

    aget-byte v1, v1, v4

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v6

    const/16 v4, 0x10

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v6

    const/16 v4, 0x20

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v6

    const/16 v4, 0x40

    if-ne v1, v4, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v4, 0x7

    aget-byte v1, v1, v4

    if-nez v1, :cond_4

    .line 151
    new-instance v1, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v4, "The supplied data appears to be in BIFF3 format. HSSF only supports the BIFF8 format, try OldExcelExtractor"

    invoke-direct {v1, v4}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_4
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v7

    const/16 v4, 0x9

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v8

    const/4 v4, 0x4

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v9

    if-ne v1, v6, :cond_8

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v10

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v4, 0x4

    aget-byte v1, v1, v4

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v4, 0x5

    aget-byte v1, v1, v4

    if-nez v1, :cond_8

    .line 157
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v6

    const/16 v4, 0x10

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v6

    const/16 v4, 0x20

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v6

    const/16 v4, 0x40

    if-ne v1, v4, :cond_6

    :cond_5
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v4, 0x7

    aget-byte v1, v1, v4

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget-byte v1, v1, v6

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v4, 0x7

    aget-byte v1, v1, v4

    if-ne v1, v8, :cond_8

    .line 161
    :cond_7
    new-instance v1, Lorg/apache/poi/hssf/OldExcelFormatException;

    const-string v4, "The supplied data appears to be in BIFF4 format. HSSF only supports the BIFF8 format, try OldExcelExtractor"

    invoke-direct {v1, v4}, Lorg/apache/poi/hssf/OldExcelFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_8
    new-instance v1, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid header signature; read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lorg/apache/poi/poifs/storage/HeaderBlock;->longToHex(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide v6, -0x1ee54e5e1fee3030L    # -5.8639378995972355E159

    invoke-static {v6, v7}, Lorg/apache/poi/poifs/storage/HeaderBlock;->longToHex(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Your file appears "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "not to be a valid OLE2 document"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/poi/poifs/filesystem/NotOLE2FileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    .end local v0    # "OOXML_FILE_HEADER":[B
    :cond_9
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v4, 0x1e

    aget-byte v1, v1, v4

    const/16 v4, 0xc

    if-ne v1, v4, :cond_a

    .line 176
    sget-object v1, Lorg/apache/poi/poifs/common/POIFSConstants;->LARGER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    .line 184
    :goto_0
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v4, 0x2c

    invoke-direct {v1, v4, p1}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    .line 185
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v4, 0x30

    iget-object v5, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v4, v5}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    .line 186
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v4, 0x3c

    iget-object v5, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v4, v5}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    .line 187
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v4, 0x40

    iget-object v5, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v4, v5}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    .line 188
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v4, 0x44

    iget-object v5, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v4, v5}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    .line 189
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v4, 0x48

    iget-object v5, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v4, v5}, Lorg/apache/poi/util/IntegerField;-><init>(I[B)V

    invoke-virtual {v1}, Lorg/apache/poi/util/IntegerField;->get()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    .line 190
    return-void

    .line 177
    :cond_a
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v4, 0x1e

    aget-byte v1, v1, v4

    const/16 v4, 0x9

    if-ne v1, v4, :cond_b

    .line 178
    sget-object v1, Lorg/apache/poi/poifs/common/POIFSConstants;->SMALLER_BIG_BLOCK_SIZE_DETAILS:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    iput-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    goto :goto_0

    .line 180
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported blocksize  (2^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v6, 0x1e

    aget-byte v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "). Expected 2^9 or 2^12."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static alertShortRead(II)Ljava/io/IOException;
    .locals 5
    .param p0, "pRead"    # I
    .param p1, "expectedReadSize"    # I

    .prologue
    .line 246
    if-gez p0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 252
    .local v0, "read":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " byte"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read entire header; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read; expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 250
    .end local v0    # "read":I
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    move v0, p0

    .restart local v0    # "read":I
    goto :goto_0

    .line 252
    :cond_1
    const-string v2, "s"

    goto :goto_1
.end method

.method private static longToHex(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .prologue
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

    .prologue
    const/16 v2, 0x200

    .line 232
    new-array v1, v2, [B

    .line 233
    .local v1, "data":[B
    invoke-static {p0, v1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    .line 234
    .local v0, "bsCount":I
    if-eq v0, v2, :cond_0

    .line 235
    invoke-static {v0, v2}, Lorg/apache/poi/poifs/storage/HeaderBlock;->alertShortRead(II)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 237
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBATArray()[I
    .locals 5

    .prologue
    .line 328
    iget v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    const/16 v4, 0x6d

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-array v2, v3, [I

    .line 329
    .local v2, "result":[I
    const/16 v1, 0x4c

    .line 330
    .local v1, "offset":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 331
    iget-object v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-static {v3, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    aput v3, v2, v0

    .line 332
    add-int/lit8 v1, v1, 0x4

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    return-object v2
.end method

.method public getBATCount()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    return v0
.end method

.method public getBigBlockSize()Lorg/apache/poi/poifs/common/POIFSBigBlockSize;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    return-object v0
.end method

.method public getPropertyStart()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    return v0
.end method

.method public getSBATCount()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    return v0
.end method

.method public getSBATStart()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    return v0
.end method

.method public getXBATCount()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    return v0
.end method

.method public getXBATIndex()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    return v0
.end method

.method public setBATArray([I)V
    .locals 6
    .param p1, "bat_array"    # [I

    .prologue
    .line 341
    array-length v4, p1

    const/16 v5, 0x6d

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 342
    .local v1, "count":I
    rsub-int/lit8 v0, v1, 0x6d

    .line 344
    .local v0, "blank":I
    const/16 v3, 0x4c

    .line 345
    .local v3, "offset":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 346
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    aget v5, p1, v2

    invoke-static {v4, v3, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 347
    add-int/lit8 v3, v3, 0x4

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 350
    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/4 v5, -0x1

    invoke-static {v4, v3, v5}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 351
    add-int/lit8 v3, v3, 0x4

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 353
    :cond_1
    return-void
.end method

.method public setBATCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 316
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    .line 317
    return-void
.end method

.method public setPropertyStart(I)V
    .locals 0
    .param p1, "startBlock"    # I

    .prologue
    .line 273
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    .line 274
    return-void
.end method

.method public setSBATBlockCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 302
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    .line 303
    return-void
.end method

.method public setSBATStart(I)V
    .locals 0
    .param p1, "startBlock"    # I

    .prologue
    .line 293
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    .line 294
    return-void
.end method

.method public setXBATCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 365
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    .line 366
    return-void
.end method

.method public setXBATStart(I)V
    .locals 0
    .param p1, "startBlock"    # I

    .prologue
    .line 378
    iput p1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    .line 379
    return-void
.end method

.method writeData(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 401
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x2c

    iget v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_bat_count:I

    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 402
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x30

    iget v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_property_start:I

    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 403
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x3c

    iget v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_start:I

    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 404
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x40

    iget v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_sbat_count:I

    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 405
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x44

    iget v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_start:I

    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 406
    new-instance v1, Lorg/apache/poi/util/IntegerField;

    const/16 v2, 0x48

    iget v3, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_xbat_count:I

    iget-object v4, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/poi/util/IntegerField;-><init>(II[B)V

    .line 409
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->_data:[B

    const/16 v2, 0x200

    invoke-virtual {p1, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 412
    const/16 v0, 0x200

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/poi/poifs/storage/HeaderBlock;->bigBlockSize:Lorg/apache/poi/poifs/common/POIFSBigBlockSize;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/common/POIFSBigBlockSize;->getBigBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 413
    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_0
    return-void
.end method
