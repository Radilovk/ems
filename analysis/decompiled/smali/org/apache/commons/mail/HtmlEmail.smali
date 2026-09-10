.class public Lorg/apache/commons/mail/HtmlEmail;
.super Lorg/apache/commons/mail/MultiPartEmail;
.source "HtmlEmail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    }
.end annotation


# static fields
.field public static final CID_LENGTH:I = 0xa

.field private static final HTML_MESSAGE_END:Ljava/lang/String; = "</pre></body></html>"

.field private static final HTML_MESSAGE_START:Ljava/lang/String; = "<html><body><pre>"


# instance fields
.field protected html:Ljava/lang/String;

.field protected inlineEmbeds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/mail/HtmlEmail$InlineImage;",
            ">;"
        }
    .end annotation
.end field

.field protected inlineImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/mail/HtmlEmail$InlineImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/apache/commons/mail/MultiPartEmail;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    .line 630
    return-void
.end method

.method private build()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 525
    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v9

    .line 526
    .local v9, "rootContainer":Ljavax/mail/internet/MimeMultipart;
    move-object v1, v9

    .line 527
    .local v1, "bodyEmbedsContainer":Ljavax/mail/internet/MimeMultipart;
    move-object v0, v9

    .line 528
    .local v0, "bodyContainer":Ljavax/mail/internet/MimeMultipart;
    const/4 v7, 0x0

    .line 529
    .local v7, "msgHtml":Ljavax/mail/internet/MimeBodyPart;
    const/4 v8, 0x0

    .line 531
    .local v8, "msgText":Ljavax/mail/internet/MimeBodyPart;
    const-string v10, "mixed"

    invoke-virtual {v9, v10}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 535
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 538
    new-instance v1, Ljavax/mail/internet/MimeMultipart;

    .end local v1    # "bodyEmbedsContainer":Ljavax/mail/internet/MimeMultipart;
    const-string v10, "related"

    invoke-direct {v1, v10}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 539
    .restart local v1    # "bodyEmbedsContainer":Ljavax/mail/internet/MimeMultipart;
    move-object v0, v1

    .line 540
    invoke-virtual {p0, v1, v13}, Lorg/apache/commons/mail/HtmlEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    .line 543
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 545
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    .end local v0    # "bodyContainer":Ljavax/mail/internet/MimeMultipart;
    const-string v10, "alternative"

    invoke-direct {v0, v10}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 546
    .restart local v0    # "bodyContainer":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v2

    .line 549
    .local v2, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v2, v0}, Ljavax/mail/BodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 550
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v2    # "bodyPart":Ljavax/mail/BodyPart;
    :cond_0
    :goto_0
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 581
    new-instance v7, Ljavax/mail/internet/MimeBodyPart;

    .end local v7    # "msgHtml":Ljavax/mail/internet/MimeBodyPart;
    invoke-direct {v7}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 582
    .restart local v7    # "msgHtml":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v0, v7, v13}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 586
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    const-string v12, "html"

    invoke-virtual {v7, v10, v11, v12}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v7}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v10, "text/html"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 595
    :cond_1
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 597
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "text/html; charset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    :cond_2
    :goto_1
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 610
    .local v5, "image":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v5}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getMbp()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    goto :goto_2

    .line 552
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "image":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    .restart local v2    # "bodyPart":Ljavax/mail/BodyPart;
    :catch_0
    move-exception v6

    .line 554
    .local v6, "me":Ljavax/mail/MessagingException;
    new-instance v10, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v10, v6}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 558
    .end local v2    # "bodyPart":Ljavax/mail/BodyPart;
    .end local v6    # "me":Ljavax/mail/MessagingException;
    :cond_3
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 564
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-gtz v10, :cond_4

    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->isBoolHasAttachments()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 568
    :cond_4
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    .end local v0    # "bodyContainer":Ljavax/mail/internet/MimeMultipart;
    const-string v10, "alternative"

    invoke-direct {v0, v10}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 569
    .restart local v0    # "bodyContainer":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {p0, v0, v13}, Lorg/apache/commons/mail/HtmlEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    goto/16 :goto_0

    .line 575
    :cond_5
    const-string v10, "alternative"

    invoke-virtual {v9, v10}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 604
    .restart local v3    # "contentType":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    const-string v11, "text/html"

    invoke-virtual {v7, v10, v11}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 614
    .end local v3    # "contentType":Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 616
    new-instance v8, Ljavax/mail/internet/MimeBodyPart;

    .end local v8    # "msgText":Ljavax/mail/internet/MimeBodyPart;
    invoke-direct {v8}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 617
    .restart local v8    # "msgText":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v0, v8, v13}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 621
    iget-object v10, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    iget-object v11, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_8
    return-void
.end method


# virtual methods
.method public buildMimeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 510
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/mail/HtmlEmail;->build()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    invoke-super {p0}, Lorg/apache/commons/mail/MultiPartEmail;->buildMimeMessage()V

    .line 517
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 514
    .local v0, "me":Ljavax/mail/MessagingException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v1, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public embed(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 322
    const/16 v1, 0xa

    invoke-static {v1}, Lorg/apache/commons/mail/EmailUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public embed(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 355
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    const-string v6, "file name cannot be null or empty"

    invoke-direct {v5, v6}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 359
    :cond_0
    const/4 v2, 0x0

    .line 362
    .local v2, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 372
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 374
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 375
    .local v3, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v3}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    check-cast v1, Ljavax/activation/FileDataSource;

    .line 378
    .local v1, "fileDataSource":Ljavax/activation/FileDataSource;
    const/4 v0, 0x0

    .line 381
    .local v0, "existingFilePath":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1}, Ljavax/activation/FileDataSource;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 389
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 391
    invoke-virtual {v3}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object v5

    .line 412
    .end local v0    # "existingFilePath":Ljava/lang/String;
    .end local v1    # "fileDataSource":Ljavax/activation/FileDataSource;
    .end local v3    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    :goto_0
    return-object v5

    .line 364
    :catch_0
    move-exception v4

    .line 366
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t get canonical path for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 383
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v0    # "existingFilePath":Ljava/lang/String;
    .restart local v1    # "fileDataSource":Ljavax/activation/FileDataSource;
    .restart local v3    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    :catch_1
    move-exception v4

    .line 385
    .restart local v4    # "ioe":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t get canonical path for file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljavax/activation/FileDataSource;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "which has already been embedded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 393
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_1
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "embedded name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is already bound to file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; existing names cannot be rebound"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 399
    .end local v0    # "existingFilePath":Ljava/lang/String;
    .end local v1    # "fileDataSource":Ljavax/activation/FileDataSource;
    .end local v3    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 401
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 403
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_4

    .line 405
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isn\'t a normal file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 407
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_5

    .line 409
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isn\'t readable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 412
    :cond_5
    new-instance v5, Ljavax/activation/FileDataSource;

    invoke-direct {v5, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public embed(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    const-string v2, "Invalid URL"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public embed(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    new-instance v4, Lorg/apache/commons/mail/EmailException;

    const-string v5, "name cannot be null or empty"

    invoke-direct {v4, v5}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 264
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    iget-object v4, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 267
    .local v1, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v1}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v3

    check-cast v3, Ljavax/activation/URLDataSource;

    .line 273
    .local v3, "urlDataSource":Ljavax/activation/URLDataSource;
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljavax/activation/URLDataSource;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    invoke-virtual {v1}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object v4

    .line 305
    .end local v1    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    .end local v3    # "urlDataSource":Ljavax/activation/URLDataSource;
    :goto_0
    return-object v4

    .line 277
    .restart local v1    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    .restart local v3    # "urlDataSource":Ljavax/activation/URLDataSource;
    :cond_1
    new-instance v4, Lorg/apache/commons/mail/EmailException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "embedded name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is already bound to URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljavax/activation/URLDataSource;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; existing names cannot be rebound"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 283
    .end local v1    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    .end local v3    # "urlDataSource":Ljavax/activation/URLDataSource;
    :cond_2
    const/4 v2, 0x0

    .line 286
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 296
    if-eqz v2, :cond_3

    .line 298
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    :cond_3
    :goto_1
    new-instance v4, Ljavax/activation/URLDataSource;

    invoke-direct {v4, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v4, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lorg/apache/commons/mail/EmailException;

    const-string v5, "Invalid URL"

    invoke-direct {v4, v5, v0}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 296
    if-eqz v2, :cond_4

    .line 298
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 302
    :cond_4
    :goto_2
    throw v4

    .line 301
    :catch_1
    move-exception v4

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_2
.end method

.method public embed(Ljavax/activation/DataSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dataSource"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v2, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    iget-object v2, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 436
    .local v1, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v1}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v1}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object v2

    .line 446
    .end local v1    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    :goto_0
    return-object v2

    .line 440
    .restart local v1    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    :cond_0
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "embedded DataSource \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is already bound to name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; existing names cannot be rebound"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 445
    .end local v1    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    :cond_1
    const/16 v2, 0xa

    invoke-static {v2}, Lorg/apache/commons/mail/EmailUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "dataSource"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 466
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    const-string v6, "name cannot be null or empty"

    invoke-direct {v5, v6}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 469
    :cond_0
    new-instance v2, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v2}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 474
    .local v2, "mbp":Ljavax/mail/internet/MimeBodyPart;
    :try_start_0
    invoke-static {p3}, Lorg/apache/commons/mail/EmailUtils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "encodedCid":Ljava/lang/String;
    new-instance v5, Ljavax/activation/DataHandler;

    invoke-direct {v5, p1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v2, v5}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 477
    invoke-virtual {v2, p2}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 478
    const-string v5, "inline"

    invoke-virtual {v2, v5}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/mail/internet/MimeBodyPart;->setContentID(Ljava/lang/String;)V

    .line 481
    new-instance v1, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    invoke-direct {v1, v0, p1, v2}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;-><init>(Ljava/lang/String;Ljavax/activation/DataSource;Ljavax/mail/internet/MimeBodyPart;)V

    .line 482
    .local v1, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 484
    return-object v0

    .line 486
    .end local v0    # "encodedCid":Ljava/lang/String;
    .end local v1    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    :catch_0
    move-exception v3

    .line 488
    .local v3, "me":Ljavax/mail/MessagingException;
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v5, v3}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 490
    .end local v3    # "me":Ljavax/mail/MessagingException;
    :catch_1
    move-exception v4

    .line 492
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v5, v4}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setHtmlMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;
    .locals 2
    .param p1, "aHtml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    const-string v2, "Invalid message supplied"

    invoke-direct {v1, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/HtmlEmail;->setTextMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;

    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "<html><body><pre>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "</pre></body></html>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 189
    .local v0, "htmlMsgBuf":Ljava/lang/StringBuffer;
    const-string v1, "<html><body><pre>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "</pre></body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/mail/HtmlEmail;->setHtmlMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;

    .line 195
    return-object p0
.end method

.method public setTextMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;
    .locals 2
    .param p1, "aText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    .line 135
    return-object p0
.end method
