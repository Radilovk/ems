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

    .prologue
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

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 120
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 124
    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    const-string v2, "iso-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 125
    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 126
    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 139
    :cond_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The Character Encoding is not supported."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v0    # "uex":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    throw v1
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "aType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v2, ""

    iput-object v2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .line 79
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/commons/mail/ByteArrayDataSource;->byteArrayDataSource(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V

    .line 89
    :cond_0
    return-void

    .line 84
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_1
    throw v2

    .line 84
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_0
.end method

.method private byteArrayDataSource(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "aIs"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 155
    .local v4, "osWriter":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 156
    .local v3, "length":I
    const/16 v6, 0x200

    :try_start_0
    new-array v2, v6, [B

    .line 158
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .local v1, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v6, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 160
    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 163
    .end local v4    # "osWriter":Ljava/io/BufferedOutputStream;
    .local v5, "osWriter":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    .line 165
    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "osWriter":Ljava/io/BufferedOutputStream;
    .restart local v4    # "osWriter":Ljava/io/BufferedOutputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "buffer":[B
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 177
    :cond_0
    iget-object v7, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v7, :cond_1

    .line 179
    iget-object v7, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 181
    :cond_1
    if-eqz v4, :cond_2

    .line 183
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    :cond_2
    throw v6

    .line 167
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "osWriter":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "osWriter":Ljava/io/BufferedOutputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 168
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    if-eqz v1, :cond_4

    .line 175
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 177
    :cond_4
    iget-object v6, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v6, :cond_5

    .line 179
    iget-object v6, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 181
    :cond_5
    if-eqz v5, :cond_6

    .line 183
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 186
    :cond_6
    return-void

    .line 173
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "buffer":[B
    .end local v5    # "osWriter":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "osWriter":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "buffer":[B
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_1
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "application/octet-stream"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/io/IOException;

    const-string v1, "no data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 245
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    .line 246
    iget-object v0, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->baos:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/apache/commons/mail/ByteArrayDataSource;->name:Ljava/lang/String;

    .line 224
    return-void
.end method
