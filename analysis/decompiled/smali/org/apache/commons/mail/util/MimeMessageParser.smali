.class public Lorg/apache/commons/mail/util/MimeMessageParser;
.super Ljava/lang/Object;
.source "MimeMessageParser.java"


# instance fields
.field private final attachmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/activation/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private final cidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavax/activation/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private htmlContent:Ljava/lang/String;

.field private isMultiPart:Z

.field private final mimeMessage:Ljavax/mail/internet/MimeMessage;

.field private plainContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 1
    .param p1, "message"    # Ljavax/mail/internet/MimeMessage;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    .line 84
    iput-object p1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->isMultiPart:Z

    .line 86
    return-void
.end method

.method private getBaseMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fullMimeType"    # Ljava/lang/String;

    .prologue
    .line 450
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 451
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 453
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 455
    .end local p1    # "fullMimeType":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getContent(Ljava/io/InputStream;)[B
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 428
    .local v1, "isReader":Ljava/io/BufferedInputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 430
    .local v3, "osWriter":Ljava/io/BufferedOutputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 432
    invoke-virtual {v3, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 436
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 437
    .local v4, "result":[B
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 439
    return-object v4
.end method

.method private isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z
    .locals 3
    .param p1, "part"    # Ljavax/mail/internet/MimePart;
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 251
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 255
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    :goto_0
    return v2

    .line 253
    :catch_0
    move-exception v1

    .line 255
    .local v1, "ex":Ljavax/mail/internet/ParseException;
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private stripContentId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 228
    const/4 v0, 0x0

    .line 230
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\<\\>]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected createDataSource(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)Ljavax/activation/DataSource;
    .locals 7
    .param p1, "parent"    # Ljavax/mail/Multipart;
    .param p2, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    .line 272
    .local v2, "dataHandler":Ljavax/activation/DataHandler;
    invoke-virtual {v2}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v3

    .line 273
    .local v3, "dataSource":Ljavax/activation/DataSource;
    invoke-interface {v3}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/commons/mail/util/MimeMessageParser;->getBaseMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "contentType":Ljava/lang/String;
    invoke-interface {v3}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/commons/mail/util/MimeMessageParser;->getContent(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 275
    .local v0, "content":[B
    new-instance v5, Ljavax/mail/util/ByteArrayDataSource;

    invoke-direct {v5, v0, v1}, Ljavax/mail/util/ByteArrayDataSource;-><init>([BLjava/lang/String;)V

    .line 276
    .local v5, "result":Ljavax/mail/util/ByteArrayDataSource;
    invoke-virtual {p0, p2, v3}, Lorg/apache/commons/mail/util/MimeMessageParser;->getDataSourceName(Ljavax/mail/Part;Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "dataSourceName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljavax/mail/util/ByteArrayDataSource;->setName(Ljava/lang/String;)V

    .line 279
    return-object v5
.end method

.method public findAttachmentByCid(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/activation/DataSource;

    .line 379
    .local v0, "dataSource":Ljavax/activation/DataSource;
    return-object v0
.end method

.method public findAttachmentByName(Ljava/lang/String;)Ljavax/activation/DataSource;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/mail/util/MimeMessageParser;->getAttachmentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 356
    invoke-virtual {p0}, Lorg/apache/commons/mail/util/MimeMessageParser;->getAttachmentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/activation/DataSource;

    .line 357
    .local v0, "dataSource":Ljavax/activation/DataSource;
    invoke-interface {v0}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    .end local v0    # "dataSource":Ljavax/activation/DataSource;
    :goto_1
    return-object v0

    .line 354
    .restart local v0    # "dataSource":Ljavax/activation/DataSource;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "dataSource":Ljavax/activation/DataSource;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/activation/DataSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    return-object v0
.end method

.method public getBcc()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/mail/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    sget-object v2, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    .line 127
    .local v0, "recipients":[Ljavax/mail/Address;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getCc()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/mail/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    sget-object v2, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    .line 117
    .local v0, "recipients":[Ljavax/mail/Address;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getContentIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getDataSourceName(Ljavax/mail/Part;Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 2
    .param p1, "part"    # Ljavax/mail/Part;
    .param p2, "dataSource"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-interface {p2}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 398
    :cond_0
    invoke-interface {p1}, Ljavax/mail/Part;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 401
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 403
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    .line 407
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    .line 137
    .local v0, "addresses":[Ljavax/mail/Address;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 139
    :cond_0
    const/4 v1, 0x0

    .line 141
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHtmlContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeMessage()Ljavax/mail/internet/MimeMessage;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    return-object v0
.end method

.method public getPlainContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTo()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v0

    .line 151
    .local v0, "addresses":[Ljavax/mail/Address;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 153
    :cond_0
    const/4 v1, 0x0

    .line 155
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/mail/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    sget-object v2, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v0

    .line 107
    .local v0, "recipients":[Ljavax/mail/Address;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public hasAttachments()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasHtmlContent()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlainContent()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultipart()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->isMultiPart:Z

    return v0
.end method

.method public parse()Lorg/apache/commons/mail/util/MimeMessageParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->mimeMessage:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/mail/util/MimeMessageParser;->parse(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)V

    .line 97
    return-object p0
.end method

.method protected parse(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)V
    .locals 7
    .param p1, "parent"    # Ljavax/mail/Multipart;
    .param p2, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const-string v5, "text/plain"

    invoke-direct {p0, p2, v5}, Lorg/apache/commons/mail/util/MimeMessageParser;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, "attachment"

    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getDisposition()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 181
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->plainContent:Ljava/lang/String;

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v5, "text/html"

    invoke-direct {p0, p2, v5}, Lorg/apache/commons/mail/util/MimeMessageParser;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "attachment"

    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getDisposition()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 188
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->htmlContent:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_2
    const-string v5, "multipart/*"

    invoke-direct {p0, p2, v5}, Lorg/apache/commons/mail/util/MimeMessageParser;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->isMultiPart:Z

    .line 195
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/Multipart;

    .line 196
    .local v4, "mp":Ljavax/mail/Multipart;
    invoke-virtual {v4}, Ljavax/mail/Multipart;->getCount()I

    move-result v1

    .line 200
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 202
    invoke-virtual {v4, v3}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v5

    check-cast v5, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/mail/util/MimeMessageParser;->parse(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)V

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "mp":Ljavax/mail/Multipart;
    :cond_3
    invoke-interface {p2}, Ljavax/mail/internet/MimePart;->getContentID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/commons/mail/util/MimeMessageParser;->stripContentId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/mail/util/MimeMessageParser;->createDataSource(Ljavax/mail/Multipart;Ljavax/mail/internet/MimePart;)Ljavax/activation/DataSource;

    move-result-object v2

    .line 209
    .local v2, "ds":Ljavax/activation/DataSource;
    if-eqz v0, :cond_4

    .line 211
    iget-object v5, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->cidMap:Ljava/util/Map;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_4
    iget-object v5, p0, Lorg/apache/commons/mail/util/MimeMessageParser;->attachmentList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
