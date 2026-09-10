.class public Lorg/apache/commons/mail/MultiPartEmail;
.super Lorg/apache/commons/mail/Email;
.source "MultiPartEmail.java"


# instance fields
.field private boolHasAttachments:Z

.field private container:Ljavax/mail/internet/MimeMultipart;

.field private initialized:Z

.field private primaryBodyPart:Ljavax/mail/BodyPart;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/commons/mail/Email;-><init>()V

    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 3
    .param p1, "partContent"    # Ljava/lang/String;
    .param p2, "partContentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 104
    .local v0, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljavax/mail/BodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    nop

    .line 112
    return-object p0

    .line 107
    :catch_0
    move-exception v1

    .line 109
    .local v1, "me":Ljavax/mail/MessagingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addPart(Ljavax/mail/internet/MimeMultipart;)Lorg/apache/commons/mail/Email;
    .locals 2
    .param p1, "multipart"    # Ljavax/mail/internet/MimeMultipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/MultiPartEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    .local v0, "me":Ljavax/mail/MessagingException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;
    .locals 3
    .param p1, "multipart"    # Ljavax/mail/internet/MimeMultipart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 150
    .local v0, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v0, p1}, Ljavax/mail/BodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    nop

    .line 158
    return-object p0

    .line 153
    :catch_0
    move-exception v1

    .line 155
    .local v1, "me":Ljavax/mail/MessagingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public attach(Ljava/io/File;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 274
    const-string v0, "\""

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    new-instance v2, Ljavax/activation/FileDataSource;

    invoke-direct {v2, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 285
    .local v2, "fds":Ljavax/activation/FileDataSource;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "attachment"

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    return-object v0

    .line 280
    .end local v2    # "fds":Ljavax/activation/FileDataSource;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "fileName":Ljava/lang/String;
    .end local p1    # "file":Ljava/io/File;
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local p1    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 289
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/commons/mail/EmailException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot attach file \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 365
    const-string v0, "attachment"

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 390
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 391
    .local v0, "is":Ljava/io/InputStream;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v0    # "is":Ljava/io/InputStream;
    nop

    .line 398
    new-instance v0, Ljavax/activation/URLDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    return-object v0

    .line 393
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL set:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 3
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 421
    const-string v0, "Invalid Datasource"

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 433
    :catch_0
    move-exception v1

    goto :goto_1

    .line 421
    :cond_0
    const/4 v1, 0x0

    .line 422
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v1, :cond_1

    .line 425
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_1
    if-eqz v1, :cond_2

    .line 436
    .end local v1    # "is":Ljava/io/InputStream;
    nop

    .line 438
    const-string v0, "attachment"

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    return-object v0

    .line 430
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ds":Ljavax/activation/DataSource;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "description":Ljava/lang/String;
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    .local v1, "e":Ljava/io/IOException;
    .restart local p1    # "ds":Ljavax/activation/DataSource;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "description":Ljava/lang/String;
    :goto_1
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 3
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 460
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-interface {p1}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object p2

    .line 464
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 467
    .local v0, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v0, p4}, Ljavax/mail/BodyPart;->setDisposition(Ljava/lang/String;)V

    .line 468
    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->setFileName(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p3}, Ljavax/mail/BodyPart;->setDescription(Ljava/lang/String;)V

    .line 470
    new-instance v1, Ljavax/activation/DataHandler;

    invoke-direct {v1, p1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    nop

    .line 483
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/mail/MultiPartEmail;->setBoolHasAttachments(Z)V

    .line 485
    return-object p0

    .line 479
    :catch_0
    move-exception v1

    .line 481
    .local v1, "me":Ljavax/mail/MessagingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 474
    .end local v1    # "me":Ljavax/mail/MessagingException;
    :catch_1
    move-exception v1

    .line 477
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public attach(Lorg/apache/commons/mail/EmailAttachment;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 9
    .param p1, "attachment"    # Lorg/apache/commons/mail/EmailAttachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 305
    const-string v0, "\""

    const/4 v1, 0x0

    .line 307
    .local v1, "result":Lorg/apache/commons/mail/MultiPartEmail;
    if-eqz p1, :cond_2

    .line 312
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 314
    .local v2, "url":Ljava/net/URL;
    if-nez v2, :cond_1

    .line 316
    const/4 v3, 0x0

    .line 319
    .local v3, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 320
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 325
    new-instance v5, Ljavax/activation/FileDataSource;

    invoke-direct {v5, v4}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDisposition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    .line 335
    .end local v1    # "result":Lorg/apache/commons/mail/MultiPartEmail;
    .end local v4    # "file":Ljava/io/File;
    .local v0, "result":Lorg/apache/commons/mail/MultiPartEmail;
    nop

    .line 336
    .end local v3    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 323
    .end local v0    # "result":Lorg/apache/commons/mail/MultiPartEmail;
    .restart local v1    # "result":Lorg/apache/commons/mail/MultiPartEmail;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    :cond_0
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "result":Lorg/apache/commons/mail/MultiPartEmail;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local p1    # "attachment":Lorg/apache/commons/mail/EmailAttachment;
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v4    # "file":Ljava/io/File;
    .restart local v1    # "result":Lorg/apache/commons/mail/MultiPartEmail;
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local p1    # "attachment":Lorg/apache/commons/mail/EmailAttachment;
    :catch_0
    move-exception v4

    .line 334
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot attach file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 339
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDisposition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    .line 347
    .end local v1    # "result":Lorg/apache/commons/mail/MultiPartEmail;
    .restart local v0    # "result":Lorg/apache/commons/mail/MultiPartEmail;
    :goto_0
    return-object v0

    .line 309
    .end local v0    # "result":Lorg/apache/commons/mail/MultiPartEmail;
    .end local v2    # "url":Ljava/net/URL;
    .restart local v1    # "result":Lorg/apache/commons/mail/MultiPartEmail;
    :cond_2
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v2, "Invalid attachment supplied"

    invoke-direct {v0, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public buildMimeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 229
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getPrimaryBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 238
    .local v0, "body":Ljavax/mail/BodyPart;
    :try_start_1
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    goto :goto_0

    .line 240
    :catch_0
    move-exception v1

    .line 249
    .end local v0    # "body":Ljavax/mail/BodyPart;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 254
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/mail/Email;->buildMimeMessage()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    nop

    .line 260
    return-void

    .line 256
    :catch_1
    move-exception v0

    .line 258
    .local v0, "me":Ljavax/mail/MessagingException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createBodyPart()Ljavax/mail/BodyPart;
    .locals 1

    .line 535
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    return-object v0
.end method

.method protected createMimeMultipart()Ljavax/mail/internet/MimeMultipart;
    .locals 1

    .line 545
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    return-object v0
.end method

.method protected getContainer()Ljavax/mail/internet/MimeMultipart;
    .locals 1

    .line 520
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    if-nez v0, :cond_0

    .line 522
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->init()V

    .line 524
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->container:Ljavax/mail/internet/MimeMultipart;

    return-object v0
.end method

.method protected getPrimaryBodyPart()Ljavax/mail/BodyPart;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 497
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    if-nez v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->init()V

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    if-nez v0, :cond_1

    .line 505
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    .line 506
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 509
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 167
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createMimeMultipart()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->container:Ljavax/mail/internet/MimeMultipart;

    .line 173
    invoke-super {p0, v0}, Lorg/apache/commons/mail/Email;->setContent(Ljavax/mail/internet/MimeMultipart;)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    .line 176
    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBoolHasAttachments()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->boolHasAttachments:Z

    return v0
.end method

.method protected isInitialized()Z
    .locals 1

    .line 577
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    return v0
.end method

.method public setBoolHasAttachments(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 567
    iput-boolean p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->boolHasAttachments:Z

    .line 568
    return-void
.end method

.method protected setInitialized(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 587
    iput-boolean p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    .line 588
    return-void
.end method

.method public setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 191
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getPrimaryBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 199
    .local v0, "primary":Ljavax/mail/BodyPart;
    instance-of v1, v0, Ljavax/mail/internet/MimePart;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/mail/MultiPartEmail;->charset:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/MimePart;

    iget-object v2, p0, Lorg/apache/commons/mail/MultiPartEmail;->charset:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljavax/mail/internet/MimePart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v0, p1}, Ljavax/mail/BodyPart;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0    # "primary":Ljavax/mail/BodyPart;
    :goto_0
    nop

    .line 212
    return-object p0

    .line 208
    :catch_0
    move-exception v0

    .line 210
    .local v0, "me":Ljavax/mail/MessagingException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 193
    .end local v0    # "me":Ljavax/mail/MessagingException;
    :cond_1
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "aSubType"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    .line 75
    return-void
.end method
