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

    .prologue
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

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 104
    .local v0, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljavax/mail/BodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

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

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/mail/MultiPartEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

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

    .prologue
    .line 147
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v0

    .line 150
    .local v0, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v0, p1}, Ljavax/mail/BodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

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

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 280
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" does not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/commons/mail/EmailException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot attach file \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 283
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    new-instance v1, Ljavax/activation/FileDataSource;

    invoke-direct {v1, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 285
    .local v1, "fds":Ljavax/activation/FileDataSource;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "attachment"

    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
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

    .prologue
    .line 365
    const-string v0, "attachment"

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v0

    return-object v0
.end method

.method public attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 390
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 391
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    new-instance v2, Ljavax/activation/URLDataSource;

    invoke-direct {v2, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v2, p2, p3, p4}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v2

    return-object v2

    .line 393
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URL set:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 4
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 421
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 422
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 428
    :cond_0
    if-nez v1, :cond_2

    .line 430
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    const-string v3, "Invalid Datasource"

    invoke-direct {v2, v3}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    const-string v3, "Invalid Datasource"

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 421
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 438
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_2
    const-string v2, "attachment"

    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v2

    return-object v2
.end method

.method public attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 4
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

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

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/mail/BodyPart;->setFileName(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p3}, Ljavax/mail/BodyPart;->setDescription(Ljava/lang/String;)V

    .line 470
    new-instance v3, Ljavax/activation/DataHandler;

    invoke-direct {v3, p1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v0, v3}, Ljavax/mail/BodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 483
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/commons/mail/MultiPartEmail;->setBoolHasAttachments(Z)V

    .line 485
    return-object p0

    .line 474
    :catch_0
    move-exception v2

    .line 477
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v3, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 479
    .end local v2    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 481
    .local v1, "me":Ljavax/mail/MessagingException;
    new-instance v3, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v3, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public attach(Lorg/apache/commons/mail/EmailAttachment;)Lorg/apache/commons/mail/MultiPartEmail;
    .locals 9
    .param p1, "attachment"    # Lorg/apache/commons/mail/EmailAttachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v3, 0x0

    .line 307
    .local v3, "result":Lorg/apache/commons/mail/MultiPartEmail;
    if-nez p1, :cond_0

    .line 309
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    const-string v6, "Invalid attachment supplied"

    invoke-direct {v5, v6}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 312
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getURL()Ljava/net/URL;

    move-result-object v4

    .line 314
    .local v4, "url":Ljava/net/URL;
    if-nez v4, :cond_2

    .line 316
    const/4 v2, 0x0

    .line 319
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 320
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 323
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot attach file \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 325
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v5, Ljavax/activation/FileDataSource;

    invoke-direct {v5, v1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDisposition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 347
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 339
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/commons/mail/EmailAttachment;->getDisposition()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/apache/commons/mail/MultiPartEmail;->attach(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/mail/MultiPartEmail;

    move-result-object v3

    goto :goto_0
.end method

.method public buildMimeMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/mail/MultiPartEmail;->primaryBodyPart:Ljavax/mail/BodyPart;

    if-eqz v2, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getPrimaryBodyPart()Ljavax/mail/BodyPart;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    .local v0, "body":Ljavax/mail/BodyPart;
    :try_start_1
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    .end local v0    # "body":Ljavax/mail/BodyPart;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 254
    :cond_1
    invoke-super {p0}, Lorg/apache/commons/mail/Email;->buildMimeMessage()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    return-void

    .line 256
    :catch_0
    move-exception v1

    .line 258
    .local v1, "me":Ljavax/mail/MessagingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 240
    .end local v1    # "me":Ljavax/mail/MessagingException;
    .restart local v0    # "body":Ljavax/mail/BodyPart;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected createBodyPart()Ljavax/mail/BodyPart;
    .locals 1

    .prologue
    .line 535
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    return-object v0
.end method

.method protected createMimeMultipart()Ljavax/mail/internet/MimeMultipart;
    .locals 1

    .prologue
    .line 545
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    return-object v0
.end method

.method protected getContainer()Ljavax/mail/internet/MimeMultipart;
    .locals 1

    .prologue
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

    .prologue
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

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->createMimeMultipart()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->container:Ljavax/mail/internet/MimeMultipart;

    .line 173
    iget-object v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->container:Ljavax/mail/internet/MimeMultipart;

    invoke-super {p0, v0}, Lorg/apache/commons/mail/Email;->setContent(Ljavax/mail/internet/MimeMultipart;)V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    .line 176
    return-void
.end method

.method public isBoolHasAttachments()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->boolHasAttachments:Z

    return v0
.end method

.method protected isInitialized()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    return v0
.end method

.method public setBoolHasAttachments(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 567
    iput-boolean p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->boolHasAttachments:Z

    .line 568
    return-void
.end method

.method protected setInitialized(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 587
    iput-boolean p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->initialized:Z

    .line 588
    return-void
.end method

.method public setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    const-string v3, "Invalid message supplied"

    invoke-direct {v2, v3}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/MultiPartEmail;->getPrimaryBodyPart()Ljavax/mail/BodyPart;

    move-result-object v1

    .line 199
    .local v1, "primary":Ljavax/mail/BodyPart;
    instance-of v2, v1, Ljavax/mail/internet/MimePart;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/mail/MultiPartEmail;->charset:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    check-cast v1, Ljavax/mail/internet/MimePart;

    .end local v1    # "primary":Ljavax/mail/BodyPart;
    iget-object v2, p0, Lorg/apache/commons/mail/MultiPartEmail;->charset:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljavax/mail/internet/MimePart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-object p0

    .line 205
    .restart local v1    # "primary":Ljavax/mail/BodyPart;
    :cond_1
    invoke-virtual {v1, p1}, Ljavax/mail/BodyPart;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v1    # "primary":Ljavax/mail/BodyPart;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "me":Ljavax/mail/MessagingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .param p1, "aSubType"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/apache/commons/mail/MultiPartEmail;->subType:Ljava/lang/String;

    .line 75
    return-void
.end method
