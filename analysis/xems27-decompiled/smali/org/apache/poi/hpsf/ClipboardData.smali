.class Lorg/apache/poi/hpsf/ClipboardData;
.super Ljava/lang/Object;
.source "ClipboardData.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _format:I

.field private _value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lorg/apache/poi/hpsf/ClipboardData;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/ClipboardData;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>([BI)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    .line 40
    .local v0, "size":I
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 42
    sget-object v1, Lorg/apache/poi/hpsf/ClipboardData;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ClipboardData at offset "

    const-string v5, " size less than 4 bytes (doesn\'t even have format field!). Setting to format == 0 and hope for the best"

    invoke-virtual {v1, v2, v4, v3, v5}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    .line 47
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    .line 48
    return-void

    .line 51
    :cond_0
    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    iput v1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    .line 52
    add-int/lit8 v1, p2, 0x8

    add-int/lit8 v2, v0, -0x4

    invoke-static {p1, v1, v2}, Lorg/apache/poi/util/LittleEndian;->getByteArray([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    .line 54
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method getValue()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    return-object v0
.end method

.method toByteArray()[B
    .locals 5

    .line 68
    invoke-virtual {p0}, Lorg/apache/poi/hpsf/ClipboardData;->getSize()I

    move-result v0

    new-array v0, v0, [B

    .line 69
    .local v0, "result":[B
    iget-object v1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v1, v1

    const/4 v2, 0x4

    add-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 71
    iget v1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 72
    iget-object v1, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v2, v1

    const/16 v4, 0x8

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object v0
.end method

.method write(Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 80
    iget v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_format:I

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 81
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 82
    iget-object v0, p0, Lorg/apache/poi/hpsf/ClipboardData;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method
