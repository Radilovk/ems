.class public final Lorg/apache/poi/hssf/record/HyperlinkRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "HyperlinkRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;
    }
.end annotation


# static fields
.field static final FILE_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

.field private static final FILE_TAIL:[B

.field static final HLINK_ABS:I = 0x2

.field static final HLINK_LABEL:I = 0x14

.field static final HLINK_PLACE:I = 0x8

.field private static final HLINK_TARGET_FRAME:I = 0x80

.field private static final HLINK_UNC_PATH:I = 0x100

.field static final HLINK_URL:I = 0x1

.field static final STD_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

.field private static final TAIL_SIZE:I

.field static final URL_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

.field private static final URL_TAIL:[B

.field private static logger:Lorg/apache/poi/util/POILogger; = null

.field public static final sid:S = 0x1b8s


# instance fields
.field private _address:Ljava/lang/String;

.field private _fileOpts:I

.field private _guid:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

.field private _label:Ljava/lang/String;

.field private _linkOpts:I

.field private _moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

.field private _range:Lorg/apache/poi/ss/util/CellRangeAddress;

.field private _shortFilename:Ljava/lang/String;

.field private _targetFrame:Ljava/lang/String;

.field private _textMark:Ljava/lang/String;

.field private _uninterpretedTail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->logger:Lorg/apache/poi/util/POILogger;

    .line 216
    const-string v0, "79EAC9D0-BAF9-11CE-8C82-00AA004BA90B"

    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parse(Ljava/lang/String;)Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->STD_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 217
    const-string v0, "79EAC9E0-BAF9-11CE-8C82-00AA004BA90B"

    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parse(Ljava/lang/String;)Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 218
    const-string v0, "00000303-0000-0000-C000-000000000046"

    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->parse(Ljava/lang/String;)Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 220
    const-string v0, "79 58 81 F4  3B 1D 7F 48   AF 2C 82 5D  C4 85 27 63   00 00 00 00  A5 AB 00 00"

    invoke-static {v0}, Lorg/apache/poi/util/HexRead;->readFromString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_TAIL:[B

    .line 222
    const-string v0, "FF FF AD DE  00 00 00 00   00 00 00 00  00 00 00 00   00 00 00 00  00 00 00 00"

    invoke-static {v0}, Lorg/apache/poi/util/HexRead;->readFromString(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_TAIL:[B

    .line 224
    array-length v0, v0

    sput v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 261
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 6
    .param p1, "in"    # Lorg/apache/poi/hssf/record/RecordInputStream;

    .line 439
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    .line 440
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 442
    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 448
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    .line 449
    .local v0, "streamVersion":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 452
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    .line 454
    and-int/lit8 v2, v2, 0x14

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    .line 456
    .local v2, "label_len":I
    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    .line 459
    .end local v2    # "label_len":I
    :cond_0
    iget v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    .line 460
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    .line 461
    .local v2, "len":I
    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    .line 464
    .end local v2    # "len":I
    :cond_1
    iget v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_2

    .line 465
    iput-object v4, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 466
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    .line 467
    .local v2, "nChars":I
    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    .line 470
    .end local v2    # "nChars":I
    :cond_2
    iget v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_7

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_7

    .line 471
    new-instance v2, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-direct {v2, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    iput-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 473
    sget-object v3, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 474
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    .line 481
    .local v2, "length":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v3

    .line 482
    .local v3, "remaining":I
    if-ne v2, v3, :cond_3

    .line 483
    div-int/lit8 v1, v2, 0x2

    .line 484
    .local v1, "nChars":I
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    .line 485
    .end local v1    # "nChars":I
    goto :goto_0

    .line 486
    :cond_3
    sget v4, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    sub-int v4, v2, v4

    div-int/2addr v4, v1

    .line 487
    .local v4, "nChars":I
    invoke-virtual {p1, v4}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    .line 496
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_TAIL:[B

    invoke-static {v1, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->readTail([BLorg/apache/poi/util/LittleEndianInput;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    .line 498
    .end local v2    # "length":I
    .end local v3    # "remaining":I
    .end local v4    # "nChars":I
    :goto_0
    goto :goto_1

    :cond_4
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 499
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    .line 501
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    .line 502
    .local v1, "len":I
    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->readCompressedUnicode(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    .line 503
    sget-object v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_TAIL:[B

    invoke-static {v2, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->readTail([BLorg/apache/poi/util/LittleEndianInput;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    .line 504
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v2

    .line 505
    .local v2, "size":I
    if-lez v2, :cond_5

    .line 506
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v3

    .line 510
    .local v3, "charDataSize":I
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v4

    .line 512
    .local v4, "usKeyValue":I
    div-int/lit8 v5, v3, 0x2

    invoke-static {p1, v5}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    .line 513
    .end local v3    # "charDataSize":I
    .end local v4    # "usKeyValue":I
    goto :goto_1

    .line 514
    :cond_5
    iput-object v4, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    goto :goto_1

    .line 516
    .end local v1    # "len":I
    .end local v2    # "size":I
    :cond_6
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->STD_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 517
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v1

    iput v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    .line 519
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    .line 521
    .restart local v1    # "len":I
    new-array v2, v1, [B

    .line 522
    .local v2, "path_bytes":[B
    invoke-virtual {p1, v2}, Lorg/apache/poi/hssf/record/RecordInputStream;->readFully([B)V

    .line 524
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    nop

    .line 528
    .end local v1    # "len":I
    .end local v2    # "path_bytes":[B
    :cond_7
    :goto_1
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    .line 530
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v1

    .line 531
    .restart local v1    # "len":I
    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUnicodeLEString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    .line 534
    .end local v1    # "len":I
    :cond_8
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v1

    if-lez v1, :cond_9

    .line 535
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hyperlink data remains: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readRemainder()[B

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 540
    :cond_9
    return-void

    .line 450
    :cond_a
    new-instance v1, Lorg/apache/poi/hssf/record/RecordFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream Version must be 0x2 but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static appendNullTerm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 345
    if-nez p0, :cond_0

    .line 346
    const/4 v0, 0x0

    return-object v0

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static cleanString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 335
    if-nez p0, :cond_0

    .line 336
    const/4 v0, 0x0

    return-object v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 339
    .local v1, "idx":I
    if-gez v1, :cond_1

    .line 340
    return-object p0

    .line 342
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readTail([BLorg/apache/poi/util/LittleEndianInput;)[B
    .locals 1
    .param p0, "expectedTail"    # [B
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 644
    sget v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    new-array v0, v0, [B

    .line 645
    .local v0, "result":[B
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    .line 654
    return-object v0
.end method

.method private static writeTail([BLorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0
    .param p0, "tail"    # [B
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 657
    invoke-interface {p1, p0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    .line 658
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 750
    new-instance v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;-><init>()V

    .line 751
    .local v0, "rec":Lorg/apache/poi/hssf/record/HyperlinkRecord;
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 752
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 753
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    iput v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    .line 754
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    iput v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    .line 755
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    .line 756
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    .line 757
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 758
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    .line 759
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    .line 760
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    .line 761
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    iput-object v1, v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    .line 762
    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 378
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 380
    :cond_1
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_2
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSize()I
    .locals 3

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "size":I
    add-int/lit8 v0, v0, 0x8

    .line 599
    add-int/lit8 v0, v0, 0x10

    .line 600
    add-int/lit8 v0, v0, 0x4

    .line 601
    add-int/lit8 v0, v0, 0x4

    .line 602
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_0

    .line 603
    add-int/lit8 v0, v0, 0x4

    .line 604
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 606
    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 607
    add-int/lit8 v0, v0, 0x4

    .line 608
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 610
    :cond_1
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    .line 611
    add-int/lit8 v0, v0, 0x4

    .line 612
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 614
    :cond_2
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_4

    .line 615
    add-int/lit8 v0, v0, 0x10

    .line 616
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 617
    add-int/lit8 v0, v0, 0x4

    .line 618
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 619
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    if-eqz v1, :cond_4

    .line 620
    sget v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 622
    :cond_3
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 623
    add-int/lit8 v0, v0, 0x2

    .line 624
    add-int/lit8 v0, v0, 0x4

    .line 625
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 626
    sget v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    add-int/2addr v0, v1

    .line 627
    add-int/lit8 v0, v0, 0x4

    .line 628
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 629
    add-int/lit8 v0, v0, 0x6

    .line 630
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 635
    :cond_4
    :goto_0
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 636
    add-int/lit8 v0, v0, 0x4

    .line 637
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 639
    :cond_5
    return v0
.end method

.method public getFileOptions()I
    .locals 1

    .line 435
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    return v0
.end method

.method public getFirstColumn()I
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstColumn()I

    move-result v0

    return v0
.end method

.method public getFirstRow()I
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getFirstRow()I

    move-result v0

    return v0
.end method

.method getGuid()Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelOptions()I
    .locals 1

    .line 428
    const/4 v0, 0x2

    return v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastColumn()I

    move-result v0

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellRangeAddress;->getLastRow()I

    move-result v0

    return v0
.end method

.method getLinkOptions()I
    .locals 1

    .line 421
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    return v0
.end method

.method getMoniker()Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    return-object v0
.end method

.method public getShortFilename()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSid()S
    .locals 1

    .line 661
    const/16 v0, 0x1b8

    return v0
.end method

.method public getTargetFrame()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextMark()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->cleanString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDocumentLink()Z
    .locals 1

    .line 705
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFileLink()Z
    .locals 2

    .line 698
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v1, v0, 0x1

    if-lez v1, :cond_0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUrlLink()Z
    .locals 2

    .line 691
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v1, v0, 0x1

    if-lez v1, :cond_0

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newDocumentLink()V
    .locals 2

    .line 740
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 741
    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->STD_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 742
    const/16 v0, 0x1c

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    .line 743
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLabel(Ljava/lang/String;)V

    .line 744
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 745
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setAddress(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setTextMark(Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method public newFileLink()V
    .locals 2

    .line 725
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 726
    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->STD_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 727
    const/16 v0, 0x15

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    .line 728
    iput v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    .line 729
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLabel(Ljava/lang/String;)V

    .line 730
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 731
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setAddress(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setShortFilename(Ljava/lang/String;)V

    .line 733
    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_TAIL:[B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    .line 734
    return-void
.end method

.method public newUrlLink()V
    .locals 2

    .line 712
    new-instance v0, Lorg/apache/poi/ss/util/CellRangeAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 713
    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->STD_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 714
    const/16 v0, 0x17

    iput v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    .line 715
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setLabel(Ljava/lang/String;)V

    .line 716
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iput-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    .line 717
    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->setAddress(Ljava/lang/String;)V

    .line 718
    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_TAIL:[B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    .line 719
    return-void
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 543
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 545
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 546
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 547
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 549
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 551
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 553
    :cond_0
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 555
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_targetFrame:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 558
    :cond_1
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_2

    .line 559
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 560
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 563
    :cond_2
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_6

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_6

    .line 564
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->serialize(Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 565
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->URL_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 566
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    if-nez v1, :cond_3

    .line 567
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 568
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 570
    :cond_3
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->TAIL_SIZE:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 571
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 572
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    invoke-static {v0, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->writeTail([BLorg/apache/poi/util/LittleEndianOutput;)V

    goto :goto_0

    .line 574
    :cond_4
    sget-object v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 575
    iget v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_fileOpts:I

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 576
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 577
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/poi/util/StringUtil;->putCompressedUnicode(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 578
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_uninterpretedTail:[B

    invoke-static {v1, p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->writeTail([BLorg/apache/poi/util/LittleEndianOutput;)V

    .line 579
    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 580
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    goto :goto_0

    .line 582
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 583
    .local v1, "addrLen":I
    add-int/lit8 v0, v1, 0x6

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 584
    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 585
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    .line 586
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 590
    .end local v1    # "addrLen":I
    :cond_6
    :goto_0
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 591
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    .line 592
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/poi/util/StringUtil;->putUnicodeLE(Ljava/lang/String;Lorg/apache/poi/util/LittleEndianOutput;)V

    .line 594
    :cond_7
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 392
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->FILE_MONIKER:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    goto :goto_0

    .line 394
    :cond_0
    iget v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 395
    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    goto :goto_0

    .line 397
    :cond_1
    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_address:Ljava/lang/String;

    .line 398
    :goto_0
    return-void
.end method

.method public setFirstColumn(I)V
    .locals 1
    .param p1, "col"    # I

    .line 274
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->setFirstColumn(I)V

    .line 275
    return-void
.end method

.method public setFirstRow(I)V
    .locals 1
    .param p1, "col"    # I

    .line 302
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->setFirstRow(I)V

    .line 303
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 366
    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_label:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setLastColumn(I)V
    .locals 1
    .param p1, "col"    # I

    .line 288
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->setLastColumn(I)V

    .line 289
    return-void
.end method

.method public setLastRow(I)V
    .locals 1
    .param p1, "col"    # I

    .line 316
    iget-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->setLastRow(I)V

    .line 317
    return-void
.end method

.method public setShortFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "shortFilename"    # Ljava/lang/String;

    .line 405
    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_shortFilename:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setTextMark(Ljava/lang/String;)V
    .locals 1
    .param p1, "textMark"    # Ljava/lang/String;

    .line 412
    invoke-static {p1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->appendNullTerm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_textMark:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 666
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 668
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[HYPERLINK RECORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    const-string v1, "    .range   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_range:Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    const-string v2, "    .guid    = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_guid:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    const-string v2, "    .linkOpts= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->intToHex(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    const-string v2, "    .label   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    iget v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 674
    const-string v2, "    .targetFrame= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getTargetFrame()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    :cond_0
    iget v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    if-eqz v2, :cond_1

    .line 677
    const-string v2, "    .moniker   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_moniker:Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/record/HyperlinkRecord$GUID;->formatAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 679
    :cond_1
    iget v2, p0, Lorg/apache/poi/hssf/record/HyperlinkRecord;->_linkOpts:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    .line 680
    const-string v2, "    .textMark= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getTextMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    :cond_2
    const-string v2, "    .address   = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 683
    const-string v1, "[/HYPERLINK RECORD]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 684
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
