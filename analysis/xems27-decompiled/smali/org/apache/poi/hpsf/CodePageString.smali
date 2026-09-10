.class Lorg/apache/poi/hpsf/CodePageString;
.super Ljava/lang/Object;
.source "CodePageString.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private _value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/apache/poi/hpsf/CodePageString;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/CodePageString;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/CodePageString;->setJavaValue(Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method constructor <init>([BI)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "startOffset"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    move v0, p2

    .line 41
    .local v0, "offset":I
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    .line 42
    .local v1, "size":I
    add-int/lit8 v0, v0, 0x4

    .line 44
    invoke-static {p1, v0, v1}, Lorg/apache/poi/util/LittleEndian;->getByteArray([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    .line 45
    if-eqz v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    aget-byte v2, v2, v3

    if-eqz v2, :cond_0

    .line 49
    sget-object v2, Lorg/apache/poi/hpsf/CodePageString;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CodePageString started at offset #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is not NULL-terminated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method getJavaValue(I)Ljava/lang/String;
    .locals 6
    .param p1, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 66
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 67
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    invoke-static {v1, p1}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BI)Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 71
    .local v3, "terminator":I
    const/4 v4, 0x5

    if-ne v3, v0, :cond_1

    .line 73
    sget-object v0, Lorg/apache/poi/hpsf/CodePageString;->logger:Lorg/apache/poi/util/POILogger;

    const-string v2, "String terminator (\\0) for CodePageString property value not found.Continue without trimming and hope for the best."

    invoke-virtual {v0, v4, v2}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 77
    return-object v1

    .line 79
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_2

    .line 81
    sget-object v0, Lorg/apache/poi/hpsf/CodePageString;->logger:Lorg/apache/poi/util/POILogger;

    const-string v5, "String terminator (\\0) for CodePageString property value occured before the end of string. Trimming and hope for the best."

    invoke-virtual {v0, v4, v5}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 86
    :cond_2
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSize()I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method setJavaValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "stringNT":Ljava/lang/String;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {v0, p2}, Lorg/apache/poi/util/CodePageUtil;->getBytesInCodePage(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    .line 102
    :goto_0
    return-void
.end method

.method write(Ljava/io/OutputStream;)I
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length v0, v0

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 107
    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 108
    iget-object v0, p0, Lorg/apache/poi/hpsf/CodePageString;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
