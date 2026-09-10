.class Lorg/apache/poi/hpsf/Filetime;
.super Ljava/lang/Object;
.source "Filetime.java"


# static fields
.field static final SIZE:I = 0x8


# instance fields
.field private _dwHighDateTime:I

.field private _dwLowDateTime:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    .line 42
    iput p2, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    .line 43
    return-void
.end method

.method constructor <init>([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    add-int/lit8 v0, p2, 0x0

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    .line 35
    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    .line 37
    return-void
.end method


# virtual methods
.method getHigh()J
    .locals 2

    .line 47
    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method getLow()J
    .locals 2

    .line 52
    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method toByteArray()[B
    .locals 3

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 58
    .local v0, "result":[B
    iget v1, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 59
    iget v1, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    .line 61
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

    .line 66
    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwLowDateTime:I

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 67
    iget v0, p0, Lorg/apache/poi/hpsf/Filetime;->_dwHighDateTime:I

    invoke-static {v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt(ILjava/io/OutputStream;)V

    .line 68
    const/16 v0, 0x8

    return v0
.end method
