.class Lorg/apache/poi/hpsf/Blob;
.super Ljava/lang/Object;
.source "Blob.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _value:[B


# direct methods
.method constructor <init>([BI)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    .line 31
    .local v0, "size":I
    if-nez v0, :cond_0

    .line 33
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/poi/hpsf/Blob;->_value:[B

    .line 34
    return-void

    .line 37
    :cond_0
    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1, v0}, Lorg/apache/poi/util/LittleEndian;->getByteArray([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/hpsf/Blob;->_value:[B

    .line 39
    return-void
.end method


# virtual methods
.method getSize()I
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/poi/hpsf/Blob;->_value:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
