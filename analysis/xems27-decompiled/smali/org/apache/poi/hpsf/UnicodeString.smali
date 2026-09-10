.class Lorg/apache/poi/hpsf/UnicodeString;
.super Ljava/lang/Object;
.source "UnicodeString.java"


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

    .line 27
    const-class v0, Lorg/apache/poi/hpsf/UnicodeString;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/UnicodeString;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method constructor <init>([BI)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    .line 34
    .local v0, "length":I
    add-int/lit8 v1, p2, 0x4

    .line 36
    .local v1, "dataOffset":I
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/poi/hpsf/UnicodeString;->validLength(I[BI)Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "valid":Z
    rem-int/lit8 v3, p2, 0x4

    .line 42
    .local v3, "past4byte":I
    if-eqz v3, :cond_0

    .line 43
    add-int/2addr p2, v3

    .line 44
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    .line 45
    add-int/lit8 v1, p2, 0x4

    .line 47
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/poi/hpsf/UnicodeString;->validLength(I[BI)Z

    move-result v2

    .line 50
    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    new-instance v4, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnicodeString started at offset #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not NULL-terminated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/poi/hpsf/IllegalPropertySetDataException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    .end local v2    # "valid":Z
    .end local v3    # "past4byte":I
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 59
    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    .line 60
    return-void

    .line 63
    :cond_3
    mul-int/lit8 v2, v0, 0x2

    invoke-static {p1, v1, v2}, Lorg/apache/poi/util/LittleEndian;->getByteArray([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    .line 64
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method getValue()[B
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    return-object v0
.end method

.method toJavaString()Ljava/lang/String;
    .locals 6

    .line 101
    iget-object v0, p0, Lorg/apache/poi/hpsf/UnicodeString;->_value:[B

    array-length v1, v0

    if-nez v1, :cond_0

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    array-length v1, v0

    shr-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/StringUtil;->getFromUnicodeLE([BII)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 108
    .local v1, "terminator":I
    const/4 v3, -0x1

    const/4 v4, 0x5

    if-ne v1, v3, :cond_1

    .line 110
    sget-object v2, Lorg/apache/poi/hpsf/UnicodeString;->logger:Lorg/apache/poi/util/POILogger;

    const-string v3, "String terminator (\\0) for UnicodeString property value not found.Continue without trimming and hope for the best."

    invoke-virtual {v2, v4, v3}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 114
    return-object v0

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_2

    .line 118
    sget-object v3, Lorg/apache/poi/hpsf/UnicodeString;->logger:Lorg/apache/poi/util/POILogger;

    const-string v5, "String terminator (\\0) for UnicodeString property value occured before the end of string. Trimming and hope for the best."

    invoke-virtual {v3, v4, v5}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 123
    :cond_2
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method validLength(I[BI)Z
    .locals 3
    .param p1, "length"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I

    .line 72
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 73
    return v0

    .line 76
    :cond_0
    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p3

    .line 77
    .local v1, "endOffset":I
    array-length v2, p2

    if-gt v1, v2, :cond_1

    .line 79
    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p2, v2

    if-nez v2, :cond_1

    add-int/lit8 v2, v1, -0x2

    aget-byte v2, p2, v2

    if-nez v2, :cond_1

    .line 81
    return v0

    .line 86
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
