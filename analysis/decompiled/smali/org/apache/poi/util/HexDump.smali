.class public Lorg/apache/poi/util/HexDump;
.super Ljava/lang/Object;
.source "HexDump.java"


# static fields
.field public static final EOL:Ljava/lang/String;

.field private static final _hexcodes:[C

.field private static final _shifts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    .line 39
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/HexDump;->_hexcodes:[C

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/poi/util/HexDump;->_shifts:[I

    return-void

    :array_0
    .array-data 4
        0x3c
        0x38
        0x34
        0x30
        0x2c
        0x28
        0x24
        0x20
        0x1c
        0x18
        0x14
        0x10
        0xc
        0x8
        0x4
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static byteToHex(I)[C
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 457
    int-to-long v0, p0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/HexDump;->toHexChars(JI)[C

    move-result-object v0

    return-object v0
.end method

.method private static dump(B)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # B

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 239
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 241
    sget-object v2, Lorg/apache/poi/util/HexDump;->_hexcodes:[C

    sget-object v3, Lorg/apache/poi/util/HexDump;->_shifts:[I

    add-int/lit8 v4, v1, 0x6

    aget v3, v3, v4

    shr-int v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static dump(J)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # J

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 227
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 228
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 230
    sget-object v2, Lorg/apache/poi/util/HexDump;->_hexcodes:[C

    sget-object v3, Lorg/apache/poi/util/HexDump;->_shifts:[I

    sget-object v4, Lorg/apache/poi/util/HexDump;->_shifts:[I

    array-length v4, v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x8

    aget v3, v3, v4

    shr-long v4, p0, v3

    long-to-int v3, v4

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static dump([BJI)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "index"    # I

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x20

    .line 176
    if-ltz p3, :cond_0

    array-length v6, p0

    if-lt p3, v6, :cond_1

    .line 178
    :cond_0
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "illegal index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into array of length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 182
    :cond_1
    int-to-long v6, p3

    add-long v2, p1, v6

    .line 183
    .local v2, "display_offset":J
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v6, 0x4a

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 185
    .local v0, "buffer":Ljava/lang/StringBuffer;
    move v4, p3

    .local v4, "j":I
    :goto_0
    array-length v6, p0

    if-ge v4, v6, :cond_7

    .line 187
    array-length v6, p0

    sub-int v1, v6, v4

    .line 189
    .local v1, "chars_read":I
    if-le v1, v9, :cond_2

    .line 191
    const/16 v1, 0x10

    .line 193
    :cond_2
    invoke-static {v2, v3}, Lorg/apache/poi/util/HexDump;->dump(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    if-ge v5, v9, :cond_4

    .line 196
    if-ge v5, v1, :cond_3

    .line 198
    add-int v6, v5, v4

    aget-byte v6, p0, v6

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->dump(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :goto_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 202
    :cond_3
    const-string v6, "  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 206
    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_6

    .line 208
    add-int v6, v5, v4

    aget-byte v6, p0, v6

    if-lt v6, v8, :cond_5

    add-int v6, v5, v4

    aget-byte v6, p0, v6

    const/16 v7, 0x7f

    if-ge v6, v7, :cond_5

    .line 210
    add-int v6, v5, v4

    aget-byte v6, p0, v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 206
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 214
    :cond_5
    const/16 v6, 0x2e

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 217
    :cond_6
    sget-object v6, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 185
    add-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 220
    .end local v1    # "chars_read":I
    .end local v5    # "k":I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static dump(Ljava/io/InputStream;Ljava/io/PrintStream;II)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "start"    # I
    .param p3, "bytesToDump"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 389
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 390
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    if-ne p3, v2, :cond_0

    .line 392
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 393
    .local v9, "c":I
    :goto_0
    if-eq v9, v2, :cond_1

    .line 395
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 396
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    goto :goto_0

    .line 401
    .end local v9    # "c":I
    :cond_0
    move v7, p3

    .local v7, "bytesRemaining":I
    move v8, v7

    .line 402
    .end local v7    # "bytesRemaining":I
    .local v8, "bytesRemaining":I
    :goto_1
    add-int/lit8 v7, v8, -0x1

    .end local v8    # "bytesRemaining":I
    .restart local v7    # "bytesRemaining":I
    if-lez v8, :cond_1

    .line 404
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 405
    .restart local v9    # "c":I
    if-ne v9, v2, :cond_2

    .line 412
    .end local v7    # "bytesRemaining":I
    .end local v9    # "c":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 413
    .local v1, "data":[B
    const-wide/16 v2, 0x0

    array-length v6, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;II)V

    .line 414
    return-void

    .line 408
    .end local v1    # "data":[B
    .restart local v7    # "bytesRemaining":I
    .restart local v9    # "c":I
    :cond_2
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v8, v7

    .line 409
    .end local v7    # "bytesRemaining":I
    .restart local v8    # "bytesRemaining":I
    goto :goto_1
.end method

.method public static declared-synchronized dump([BJLjava/io/OutputStream;I)V
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "stream"    # Ljava/io/OutputStream;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 158
    const-class v7, Lorg/apache/poi/util/HexDump;

    monitor-enter v7

    :try_start_0
    array-length v0, p0

    sub-int v6, v0, p4

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/util/HexDump;->dump([BJLjava/io/OutputStream;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit v7

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static dump([BJLjava/io/OutputStream;II)V
    .locals 11
    .param p0, "data"    # [B
    .param p1, "offset"    # J
    .param p3, "stream"    # Ljava/io/OutputStream;
    .param p4, "index"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 71
    array-length v7, p0

    if-nez v7, :cond_1

    .line 73
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No Data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/OutputStream;->write([B)V

    .line 74
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 134
    :cond_0
    return-void

    .line 77
    :cond_1
    if-ltz p4, :cond_2

    array-length v7, p0

    if-lt p4, v7, :cond_3

    .line 79
    :cond_2
    new-instance v7, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " into array of length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 83
    :cond_3
    if-nez p3, :cond_4

    .line 85
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "cannot write to nullstream"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 88
    :cond_4
    int-to-long v8, p4

    add-long v4, p1, v8

    .line 89
    .local v4, "display_offset":J
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v7, 0x4a

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 92
    .local v0, "buffer":Ljava/lang/StringBuffer;
    array-length v7, p0

    add-int v8, p4, p5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 93
    .local v2, "data_length":I
    move v3, p4

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 95
    sub-int v1, v2, v3

    .line 97
    .local v1, "chars_read":I
    const/16 v7, 0x10

    if-le v1, v7, :cond_5

    .line 99
    const/16 v1, 0x10

    .line 101
    :cond_5
    invoke-static {v4, v5}, Lorg/apache/poi/util/HexDump;->dump(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    const/16 v7, 0x10

    if-ge v6, v7, :cond_7

    .line 106
    if-ge v6, v1, :cond_6

    .line 108
    add-int v7, v6, v3

    aget-byte v7, p0, v7

    invoke-static {v7}, Lorg/apache/poi/util/HexDump;->dump(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    :goto_2
    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 112
    :cond_6
    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 116
    :cond_7
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_9

    .line 118
    add-int v7, v6, v3

    aget-byte v7, p0, v7

    const/16 v8, 0x20

    if-lt v7, v8, :cond_8

    add-int v7, v6, v3

    aget-byte v7, p0, v7

    const/16 v8, 0x7f

    if-ge v7, v8, :cond_8

    .line 120
    add-int v7, v6, v3

    aget-byte v7, p0, v7

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 124
    :cond_8
    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 127
    :cond_9
    sget-object v7, Lorg/apache/poi/util/HexDump;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/OutputStream;->write([B)V

    .line 129
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 130
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 131
    int-to-long v8, v1

    add-long/2addr v4, v8

    .line 93
    add-int/lit8 v3, v3, 0x10

    goto :goto_0
.end method

.method public static intToHex(I)[C
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 445
    int-to-long v0, p0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/HexDump;->toHexChars(JI)[C

    move-result-object v0

    return-object v0
.end method

.method public static longToHex(J)[C
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 439
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lorg/apache/poi/util/HexDump;->toHexChars(JI)[C

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 461
    new-instance v1, Ljava/io/File;

    aget-object v3, p0, v6

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 463
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    new-array v0, v3, [B

    .line 464
    .local v0, "b":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 465
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5, v6}, Lorg/apache/poi/util/HexDump;->dump([BJI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 467
    return-void
.end method

.method public static shortToHex(I)[C
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 451
    int-to-long v0, p0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/HexDump;->toHexChars(JI)[C

    move-result-object v0

    return-object v0
.end method

.method public static toHex(B)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # B

    .prologue
    .line 343
    int-to-long v0, p0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/HexDump;->toHex(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex(I)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 354
    int-to-long v0, p0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/HexDump;->toHex(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 365
    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lorg/apache/poi/util/HexDump;->toHex(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toHex(JI)Ljava/lang/String;
    .locals 8
    .param p0, "value"    # J
    .param p2, "digits"    # I

    .prologue
    .line 371
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 372
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 374
    sget-object v2, Lorg/apache/poi/util/HexDump;->_hexcodes:[C

    sget-object v3, Lorg/apache/poi/util/HexDump;->_shifts:[I

    rsub-int/lit8 v4, p2, 0x10

    add-int/2addr v4, v0

    aget v3, v3, v4

    shr-long v4, p0, v3

    const-wide/16 v6, 0xf

    and-long/2addr v4, v6

    long-to-int v3, v4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toHex(S)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # S

    .prologue
    .line 332
    int-to-long v0, p0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/HexDump;->toHex(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # [B

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v0, "retVal":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 258
    if-lez v1, :cond_0

    .line 259
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_0
    aget-byte v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toHex([BI)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # [B
    .param p1, "bytesPerLine"    # I

    .prologue
    .line 299
    array-length v6, p0

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    .line 301
    .local v0, "digits":I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 302
    .local v2, "formatString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 303
    const/16 v6, 0x30

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    :cond_0
    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, "format":Ljava/text/DecimalFormat;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    .local v4, "retVal":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    const/4 v3, -0x1

    .line 309
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_3

    .line 311
    add-int/lit8 v3, v3, 0x1

    if-ne v3, p1, :cond_2

    .line 313
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 314
    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const/4 v3, 0x0

    .line 319
    :cond_1
    :goto_2
    aget-byte v6, p0, v5

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 316
    :cond_2
    if-lez v5, :cond_1

    .line 317
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 321
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static toHex([S)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # [S

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 276
    .local v0, "retVal":Ljava/lang/StringBuffer;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 279
    if-lez v1, :cond_0

    .line 280
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    :cond_0
    aget-short v2, p0, v1

    invoke-static {v2}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static toHexChars(JI)[C
    .locals 10
    .param p0, "pValue"    # J
    .param p2, "nBytes"    # I

    .prologue
    const/4 v8, 0x1

    .line 419
    mul-int/lit8 v4, p2, 0x2

    add-int/lit8 v0, v4, 0x2

    .line 422
    .local v0, "charPos":I
    new-array v1, v0, [C

    .line 424
    .local v1, "result":[C
    move-wide v2, p0

    .line 426
    .local v2, "value":J
    :cond_0
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lorg/apache/poi/util/HexDump;->_hexcodes:[C

    const-wide/16 v6, 0xf

    and-long/2addr v6, v2

    long-to-int v5, v6

    aget-char v4, v4, v5

    aput-char v4, v1, v0

    .line 427
    const/4 v4, 0x4

    ushr-long/2addr v2, v4

    .line 428
    if-gt v0, v8, :cond_0

    .line 431
    const/4 v4, 0x0

    const/16 v5, 0x30

    aput-char v5, v1, v4

    .line 432
    const/16 v4, 0x78

    aput-char v4, v1, v8

    .line 433
    return-object v1
.end method
