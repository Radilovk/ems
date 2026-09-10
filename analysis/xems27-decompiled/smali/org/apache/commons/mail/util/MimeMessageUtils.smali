.class public final Lorg/apache/commons/mail/util/MimeMessageUtils;
.super Ljava/lang/Object;
.source "MimeMessageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static createMimeMessage(Ljavax/mail/Session;Ljava/io/File;)Ljavax/mail/internet/MimeMessage;
    .locals 2
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    .line 89
    .local v0, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 90
    invoke-static {p0, v0}, Lorg/apache/commons/mail/util/MimeMessageUtils;->createMimeMessage(Ljavax/mail/Session;Ljava/io/InputStream;)Ljavax/mail/internet/MimeMessage;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    nop

    .line 96
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    .line 94
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw v1
.end method

.method public static createMimeMessage(Ljavax/mail/Session;Ljava/io/InputStream;)Ljavax/mail/internet/MimeMessage;
    .locals 1
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v0, p0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static createMimeMessage(Ljavax/mail/Session;Ljava/lang/String;)Ljavax/mail/internet/MimeMessage;
    .locals 3
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    .line 131
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 132
    .local v1, "byteSource":[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v2

    .line 133
    invoke-static {p0, v0}, Lorg/apache/commons/mail/util/MimeMessageUtils;->createMimeMessage(Ljavax/mail/Session;Ljava/io/InputStream;)Ljavax/mail/internet/MimeMessage;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    nop

    .line 139
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v2

    .line 137
    .end local v1    # "byteSource":[B
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_0
    throw v1
.end method

.method public static createMimeMessage(Ljavax/mail/Session;[B)Ljavax/mail/internet/MimeMessage;
    .locals 2
    .param p0, "session"    # Ljavax/mail/Session;
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    .line 61
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v1

    .line 62
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, p0, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    nop

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_0
    throw v1
.end method

.method public static writeMimeMessage(Ljavax/mail/internet/MimeMessage;Ljava/io/File;)V
    .locals 4
    .param p0, "mimeMessage"    # Ljavax/mail/internet/MimeMessage;
    .param p1, "resultFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    const/4 v0, 0x0

    .line 160
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create the following parent directories: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "mimeMessage":Ljavax/mail/internet/MimeMessage;
    .end local p1    # "resultFile":Ljava/io/File;
    throw v1

    .line 167
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "mimeMessage":Ljavax/mail/internet/MimeMessage;
    .restart local p1    # "resultFile":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 168
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 170
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const/4 v0, 0x0

    .line 175
    if-eqz v0, :cond_2

    .line 179
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :goto_1
    goto :goto_2

    .line 181
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 187
    :cond_2
    :goto_2
    return-void

    .line 175
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 179
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    goto :goto_3

    .line 181
    :catch_1
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    throw v1
.end method
