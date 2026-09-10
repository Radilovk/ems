.class public Lorg/apache/commons/mail/ByteArrayDataSource;
.super Ljava/lang/Object;
.source "ByteArrayDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x200


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private name:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "aIs"    # Ljava/io/InputStream;
    .param p2, "aType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lorg/apache/commons/mail/ByteArrayDataSource;->byteArrayDataSource(Ljava/io/InputStream;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "aType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 120
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 124
    const-string v1, "iso-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 126
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 139
    :cond_0
    return-void

    .line 134
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The Character Encoding is not supported."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "data":Ljava/lang/String;
    .end local p2    # "aType":Ljava/lang/String;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "data":Ljava/lang/String;
    .restart local p2    # "aType":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    throw v0
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "aType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .line 79
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 80
    invoke-direct {p0, v0}, Lorg/apache/commons/mail/ByteArrayDataSource;->byteArrayDataSource(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    nop

    .line 86
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 89
    return-void

    .line 84
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_0
    throw v1
.end method

.method private byteArrayDataSource(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "aIs"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 155
    .local v1, "osWriter":Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 156
    .local v2, "length":I
    const/16 v3, 0x200

    :try_start_0
    new-array v3, v3, [B

    .line 158
    .local v3, "buffer":[B
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v4

    .line 159
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 160
    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v4

    .line 163
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    move v2, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 165
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 168
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v2    # "length":I
    .end local v3    # "buffer":[B
    nop

    .line 175
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 177
    iget-object v2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 181
    :cond_1
    nop

    .line 183
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 186
    return-void

    .line 173
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 177
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_3

    .line 179
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 181
    :cond_3
    if-eqz v1, :cond_4

    .line 183
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_4
    throw v2
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "application/octet-stream"

    :cond_0
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 245
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 246
    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 223
    iput-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 224
    return-void
.end method
