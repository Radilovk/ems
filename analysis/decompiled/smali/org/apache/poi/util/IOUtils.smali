.class public final Lorg/apache/poi/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/poi/util/IOUtils;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/IOUtils;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static calculateChecksum([B)J
    .locals 4
    .param p0, "data"    # [B

    .prologue
    .line 170
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 171
    .local v0, "sum":Ljava/util/zip/Checksum;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-interface {v0, p0, v1, v2}, Ljava/util/zip/Checksum;->update([BII)V

    .line 172
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 5
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 184
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "exc":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/poi/util/IOUtils;->logger:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to close resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "inp"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 162
    .local v0, "buff":[B
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 163
    if-lez v1, :cond_0

    .line 164
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 167
    :cond_1
    return-void
.end method

.method public static peekFirst8Bytes(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EmptyFileException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 49
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 51
    new-array v0, v3, [B

    .line 52
    .local v0, "header":[B
    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 54
    .local v2, "read":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 55
    new-instance v3, Lorg/apache/poi/EmptyFileException;

    invoke-direct {v3}, Lorg/apache/poi/EmptyFileException;-><init>()V

    throw v3

    .line 58
    :cond_0
    instance-of v3, p0, Ljava/io/PushbackInputStream;

    if-eqz v3, :cond_1

    move-object v1, p0

    .line 59
    check-cast v1, Ljava/io/PushbackInputStream;

    .line 60
    .local v1, "pin":Ljava/io/PushbackInputStream;
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 65
    .end local v1    # "pin":Ljava/io/PushbackInputStream;
    :goto_0
    return-object v0

    .line 62
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    goto :goto_0
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "total":I
    :cond_0
    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {p0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 122
    .local v0, "got":I
    if-gez v0, :cond_2

    .line 123
    if-nez v1, :cond_1

    const/4 v3, -0x1

    :goto_0
    move v2, v1

    .line 127
    .end local v1    # "total":I
    .local v2, "total":I
    :goto_1
    return v3

    .end local v2    # "total":I
    .restart local v1    # "total":I
    :cond_1
    move v3, v1

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    add-int/2addr v1, v0

    .line 126
    if-ne v1, p3, :cond_0

    move v2, v1

    .end local v1    # "total":I
    .restart local v2    # "total":I
    move v3, v1

    .line 127
    goto :goto_1
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 144
    .local v1, "total":I
    :cond_0
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 145
    .local v0, "got":I
    if-gez v0, :cond_2

    .line 146
    if-nez v1, :cond_1

    const/4 v3, -0x1

    :goto_0
    move v2, v1

    .line 150
    .end local v1    # "total":I
    .local v2, "total":I
    :goto_1
    return v3

    .end local v2    # "total":I
    .restart local v1    # "total":I
    :cond_1
    move v3, v1

    .line 146
    goto :goto_0

    .line 148
    :cond_2
    add-int/2addr v1, v0

    .line 149
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_0

    :cond_3
    move v2, v1

    .end local v1    # "total":I
    .restart local v2    # "total":I
    move v3, v1

    .line 150
    goto :goto_1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    new-array v1, v3, [B

    .line 75
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 76
    .local v2, "read":I
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 78
    if-lez v2, :cond_0

    .line 79
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static toByteArray(Ljava/nio/ByteBuffer;I)[B
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 97
    :cond_0
    new-array v0, p1, [B

    .line 98
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
