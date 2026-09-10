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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/mail/HtmlEmail$InlineImage;",
            ">;"
        }
    .end annotation
.end field

.field protected inlineImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->getContainer()Ljavax/mail/internet/MimeMultipart;

    move-result-object v0

    .line 526
    .local v0, "rootContainer":Ljavax/mail/internet/MimeMultipart;
    move-object v1, v0

    .line 527
    .local v1, "bodyEmbedsContainer":Ljavax/mail/internet/MimeMultipart;
    move-object v2, v0

    .line 528
    .local v2, "bodyContainer":Ljavax/mail/internet/MimeMultipart;
    const/4 v3, 0x0

    .line 529
    .local v3, "msgHtml":Ljavax/mail/internet/MimeBodyPart;
    const/4 v4, 0x0

    .line 531
    .local v4, "msgText":Ljavax/mail/internet/MimeBodyPart;
    const-string v5, "mixed"

    invoke-virtual {v0, v5}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 535
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "alternative"

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 538
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    const-string v8, "related"

    invoke-direct {v5, v8}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 539
    move-object v2, v1

    .line 540
    invoke-virtual {p0, v1, v7}, Lorg/apache/commons/mail/HtmlEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    .line 543
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 545
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v5, v6}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 546
    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->createBodyPart()Ljavax/mail/BodyPart;

    move-result-object v5

    .line 549
    .local v5, "bodyPart":Ljavax/mail/BodyPart;
    :try_start_0
    invoke-virtual {v5, v2}, Ljavax/mail/BodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 550
    invoke-virtual {v1, v5, v7}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    nop

    .line 556
    .end local v5    # "bodyPart":Ljavax/mail/BodyPart;
    goto :goto_1

    .line 552
    .restart local v5    # "bodyPart":Ljavax/mail/BodyPart;
    :catch_0
    move-exception v6

    .line 554
    .local v6, "me":Ljavax/mail/MessagingException;
    new-instance v7, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v7, v6}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 558
    .end local v5    # "bodyPart":Ljavax/mail/BodyPart;
    .end local v6    # "me":Ljavax/mail/MessagingException;
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 564
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-gtz v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/mail/HtmlEmail;->isBoolHasAttachments()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {v0, v6}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    goto :goto_1

    .line 568
    :cond_2
    :goto_0
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v5, v6}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 569
    invoke-virtual {p0, v2, v7}, Lorg/apache/commons/mail/HtmlEmail;->addPart(Ljavax/mail/internet/MimeMultipart;I)Lorg/apache/commons/mail/Email;

    .line 579
    :cond_3
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 581
    new-instance v5, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v5}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    move-object v3, v5

    .line 582
    invoke-virtual {v2, v3, v7}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 586
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    const-string v8, "html"

    invoke-virtual {v3, v5, v6, v8}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v3}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, "contentType":Ljava/lang/String;
    const-string v6, "text/html"

    if-eqz v5, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 595
    :cond_4
    iget-object v8, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-static {v8}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 597
    iget-object v6, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "text/html; charset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 604
    :cond_5
    iget-object v8, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    invoke-virtual {v3, v8, v6}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    :cond_6
    :goto_2
    iget-object v6, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 610
    .local v8, "image":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v8}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getMbp()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 611
    .end local v8    # "image":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    goto :goto_3

    .line 614
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/commons/mail/EmailUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 616
    new-instance v5, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v5}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    move-object v4, v5

    .line 617
    invoke-virtual {v2, v4, v7}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;I)V

    .line 621
    iget-object v5, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/commons/mail/HtmlEmail;->charset:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 510
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/mail/HtmlEmail;->build()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    nop

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
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 322
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

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

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 359
    const/4 v0, 0x0

    .line 362
    .local v0, "filePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 368
    nop

    .line 372
    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 375
    .local v1, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v1}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v2

    check-cast v2, Ljavax/activation/FileDataSource;

    .line 378
    .local v2, "fileDataSource":Ljavax/activation/FileDataSource;
    const/4 v3, 0x0

    .line 381
    .local v3, "existingFilePath":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljavax/activation/FileDataSource;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    .line 388
    nop

    .line 389
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    invoke-virtual {v1}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 393
    :cond_0
    new-instance v4, Lorg/apache/commons/mail/EmailException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "embedded name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' is already bound to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; existing names cannot be rebound"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 383
    :catch_0
    move-exception v4

    .line 385
    .local v4, "ioe":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/mail/EmailException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t get canonical path for file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljavax/activation/FileDataSource;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "which has already been embedded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 399
    .end local v1    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    .end local v2    # "fileDataSource":Ljavax/activation/FileDataSource;
    .end local v3    # "existingFilePath":Ljava/lang/String;
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "file "

    if-eqz v1, :cond_4

    .line 403
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    new-instance v1, Ljavax/activation/FileDataSource;

    invoke-direct {v1, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 409
    :cond_2
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t readable"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_3
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t a normal file"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_4
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :catch_1
    move-exception v1

    .line 366
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t get canonical path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 355
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_5
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "file name cannot be null or empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 215
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

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
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 257
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 267
    .local v0, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    check-cast v1, Ljavax/activation/URLDataSource;

    .line 273
    .local v1, "urlDataSource":Ljavax/activation/URLDataSource;
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/activation/URLDataSource;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 277
    :cond_0
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "embedded name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' is already bound to URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/activation/URLDataSource;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; existing names cannot be rebound"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    .end local v0    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    .end local v1    # "urlDataSource":Ljavax/activation/URLDataSource;
    :cond_1
    const/4 v0, 0x0

    .line 286
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 296
    if-eqz v0, :cond_2

    .line 298
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    .line 303
    goto :goto_1

    .line 302
    :cond_2
    :goto_0
    nop

    .line 305
    :goto_1
    new-instance v1, Ljavax/activation/URLDataSource;

    invoke-direct {v1, p1}, Ljavax/activation/URLDataSource;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v1, p2}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 294
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 288
    :catch_1
    move-exception v1

    .line 290
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    const-string v3, "Invalid URL"

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "is":Ljava/io/InputStream;
    .end local p1    # "url":Ljava/net/URL;
    .end local p2    # "name":Ljava/lang/String;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "is":Ljava/io/InputStream;
    .restart local p1    # "url":Ljava/net/URL;
    .restart local p2    # "name":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_3

    .line 298
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 301
    :catch_2
    move-exception v2

    goto :goto_4

    .line 302
    :cond_3
    :goto_3
    nop

    :goto_4
    throw v1

    .line 259
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_4
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "name cannot be null or empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public embed(Ljavax/activation/DataSource;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dataSource"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    .line 436
    .local v0, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getCid()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 440
    :cond_0
    new-instance v1, Lorg/apache/commons/mail/EmailException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "embedded DataSource \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is already bound to name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; existing names cannot be rebound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    .end local v0    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    :cond_1
    const/16 v0, 0xa

    invoke-static {v0}, Lorg/apache/commons/mail/EmailUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/mail/HtmlEmail;->embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public embed(Ljavax/activation/DataSource;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dataSource"    # Ljavax/activation/DataSource;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 464
    invoke-static {p2}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 474
    .local v0, "mbp":Ljavax/mail/internet/MimeBodyPart;
    :try_start_0
    invoke-static {p3}, Lorg/apache/commons/mail/EmailUtils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "encodedCid":Ljava/lang/String;
    new-instance v2, Ljavax/activation/DataHandler;

    invoke-direct {v2, p1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 477
    invoke-virtual {v0, p2}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 478
    const-string v2, "inline"

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeBodyPart;->setContentID(Ljava/lang/String;)V

    .line 481
    new-instance v2, Lorg/apache/commons/mail/HtmlEmail$InlineImage;

    invoke-direct {v2, v1, p1, v0}, Lorg/apache/commons/mail/HtmlEmail$InlineImage;-><init>(Ljava/lang/String;Ljavax/activation/DataSource;Ljavax/mail/internet/MimeBodyPart;)V

    .line 482
    .local v2, "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    iget-object v3, p0, Lorg/apache/commons/mail/HtmlEmail;->inlineEmbeds:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    return-object v1

    .line 490
    .end local v1    # "encodedCid":Ljava/lang/String;
    .end local v2    # "ii":Lorg/apache/commons/mail/HtmlEmail$InlineImage;
    :catch_0
    move-exception v1

    .line 492
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 486
    .end local v1    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 488
    .local v1, "me":Ljavax/mail/MessagingException;
    new-instance v2, Lorg/apache/commons/mail/EmailException;

    invoke-direct {v2, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 466
    .end local v0    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    .end local v1    # "me":Ljavax/mail/MessagingException;
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "name cannot be null or empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHtmlMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;
    .locals 2
    .param p1, "aHtml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iput-object p1, p0, Lorg/apache/commons/mail/HtmlEmail;->html:Ljava/lang/String;

    .line 155
    return-object p0

    .line 151
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMsg(Ljava/lang/String;)Lorg/apache/commons/mail/Email;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 176
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lorg/apache/commons/mail/HtmlEmail;->setTextMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;

    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "<html><body><pre>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    const-string v3, "</pre></body></html>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 189
    .local v0, "htmlMsgBuf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/mail/HtmlEmail;->setHtmlMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;

    .line 195
    return-object p0

    .line 178
    .end local v0    # "htmlMsgBuf":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextMsg(Ljava/lang/String;)Lorg/apache/commons/mail/HtmlEmail;
    .locals 2
    .param p1, "aText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/mail/EmailException;
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lorg/apache/commons/mail/EmailUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iput-object p1, p0, Lorg/apache/commons/mail/HtmlEmail;->text:Ljava/lang/String;

    .line 135
    return-object p0

    .line 131
    :cond_0
    new-instance v0, Lorg/apache/commons/mail/EmailException;

    const-string v1, "Invalid message supplied"

    invoke-direct {v0, v1}, Lorg/apache/commons/mail/EmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
