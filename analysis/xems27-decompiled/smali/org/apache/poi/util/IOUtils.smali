.class public final Lorg/apache/poi/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/apache/poi/util/IOUtils;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/IOUtils;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static calculateChecksum([B)J
    .locals 3
    .param p0, "data"    # [B

    .line 170
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 171
    .local v0, "sum":Ljava/util/zip/Checksum;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Ljava/util/zip/Checksum;->update([BII)V

    .line 172
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 5
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 184
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

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

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 189
    .end local v0    # "exc":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "inp"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 162
    .local v0, "buff":[B
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    move v2, v1

    .local v2, "count":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 163
    if-lez v2, :cond_0

    .line 164
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 167
    :cond_1
    return-void
.end method

.method public static peekFirst8Bytes(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/poi/EmptyFileException;
        }
    .end annotation

    .line 49
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 51
    new-array v0, v0, [B

    .line 52
    .local v0, "header":[B
    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 54
    .local v1, "read":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 58
    instance-of v2, p0, Ljava/io/PushbackInputStream;

    if-eqz v2, :cond_0

    .line 59
    move-object v2, p0

    check-cast v2, Ljava/io/PushbackInputStream;

    .line 60
    .local v2, "pin":Ljava/io/PushbackInputStream;
    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 61
    .end local v2    # "pin":Ljava/io/PushbackInputStream;
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 65
    :goto_0
    return-object v0

    .line 55
    :cond_1
    new-instance v2, Lorg/apache/poi/EmptyFileException;

    invoke-direct {v2}, Lorg/apache/poi/EmptyFileException;-><init>()V

    throw v2
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

    .line 106
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "total":I
    :goto_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 122
    .local v1, "got":I
    if-gez v1, :cond_1

    .line 123
    if-nez v0, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    return v2

    .line 125
    :cond_1
    add-int/2addr v0, v1

    .line 126
    if-ne v0, p3, :cond_2

    .line 127
    return v0

    .line 129
    .end local v1    # "got":I
    :cond_2
    goto :goto_0
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p0, "channel"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "total":I
    :goto_0
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 145
    .local v1, "got":I
    if-gez v1, :cond_1

    .line 146
    if-nez v0, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    return v2

    .line 148
    :cond_1
    add-int/2addr v0, v1

    .line 149
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_2

    .line 152
    .end local v1    # "got":I
    :cond_2
    goto :goto_0

    .line 150
    .restart local v1    # "got":I
    :cond_3
    :goto_2
    return v0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x1000

    new-array v1, v1, [B

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
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    new-array v0, p1, [B

    .line 98
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 99
    return-object v0
.end method
