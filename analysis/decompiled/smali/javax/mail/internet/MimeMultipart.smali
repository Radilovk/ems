.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# instance fields
.field protected allowEmpty:Z

.field protected complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected ignoreExistingBoundaryParameter:Z

.field protected ignoreMissingBoundaryParameter:Z

.field protected ignoreMissingEndBoundary:Z

.field protected parsed:Z

.field protected preamble:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 193
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "subtype"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 208
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 120
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 128
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 135
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 143
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 152
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 162
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 172
    iput-boolean v4, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 181
    iput-boolean v4, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    .line 212
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Ljavax/mail/internet/ContentType;

    const-string v2, "multipart"

    invoke-direct {v1, v2, p1, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 214
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "boundary"

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->initializeProperties()V

    .line 217
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljavax/mail/BodyPart;)V
    .locals 3
    .param p1, "subtype"    # Ljava/lang/String;
    .param p2, "parts"    # [Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 245
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 247
    return-void

    .line 245
    :cond_0
    aget-object v0, p2, v1

    .line 246
    .local v0, "bp":Ljavax/mail/BodyPart;
    invoke-super {p0, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 4
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 269
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 120
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 128
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 135
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 143
    iput-object v3, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 162
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 172
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 181
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    .line 271
    instance-of v1, p1, Ljavax/mail/MessageAware;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 272
    check-cast v1, Ljavax/mail/MessageAware;

    invoke-interface {v1}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 273
    .local v0, "mc":Ljavax/mail/MessageContext;
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 276
    .end local v0    # "mc":Ljavax/mail/MessageContext;
    :cond_0
    instance-of v1, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v1, :cond_1

    .line 278
    check-cast p1, Ljavax/mail/MultipartDataSource;

    .end local p1    # "ds":Ljavax/activation/DataSource;
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 287
    :goto_0
    return-void

    .line 284
    .restart local p1    # "ds":Ljavax/activation/DataSource;
    :cond_1
    iput-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 285
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 286
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    goto :goto_0
.end method

.method public varargs constructor <init>([Ljavax/mail/BodyPart;)V
    .locals 3
    .param p1, "parts"    # [Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-direct {p0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 229
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 231
    return-void

    .line 229
    :cond_0
    aget-object v0, p1, v1

    .line 230
    .local v0, "bp":Ljavax/mail/BodyPart;
    invoke-super {p0, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static allDashes(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 921
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 925
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 922
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    .line 923
    const/4 v1, 0x0

    goto :goto_1

    .line 921
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createMimeBodyPartIs(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1026
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1029
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1026
    :goto_0
    return-object v0

    .line 1027
    :catchall_0
    move-exception v0

    .line 1029
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1033
    :goto_1
    throw v0

    .line 1030
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 944
    if-nez p3, :cond_1

    .line 945
    const/4 v1, 0x0

    .line 955
    :cond_0
    :goto_0
    return v1

    .line 946
    :cond_1
    const/4 v1, 0x0

    .line 947
    .local v1, "total":I
    :goto_1
    if-gtz p3, :cond_3

    .line 955
    :cond_2
    if-gtz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 948
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 949
    .local v0, "bsize":I
    if-lez v0, :cond_2

    .line 951
    add-int/2addr p2, v0

    .line 952
    add-int/2addr v1, v0

    .line 953
    sub-int/2addr p3, v0

    goto :goto_1
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 963
    :goto_0
    cmp-long v2, p2, v4

    if-gtz v2, :cond_0

    .line 969
    return-void

    .line 964
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 965
    .local v0, "cur":J
    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    .line 966
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "can\'t skip"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 967
    :cond_1
    sub-long/2addr p2, v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 419
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 439
    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 985
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1020
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .locals 1
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1003
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 348
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .locals 5
    .param p1, "CID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 363
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 364
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 370
    const/4 v2, 0x0

    :cond_0
    monitor-exit p0

    return-object v2

    .line 365
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    .line 366
    .local v2, "part":Ljavax/mail/internet/MimeBodyPart;
    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 364
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 335
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreamble()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 473
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initializeProperties()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 300
    .line 301
    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    .line 300
    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 304
    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 303
    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 307
    const-string v0, "mail.mime.multipart.ignoreexistingboundaryparameter"

    .line 306
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 310
    const-string v0, "mail.mime.multipart.allowempty"

    .line 309
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    .line 311
    return-void
.end method

.method public declared-synchronized isComplete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 459
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    move/from16 v43, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v43, :cond_0

    .line 915
    :goto_0
    monitor-exit p0

    return-void

    .line 578
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->initializeProperties()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    const/16 v25, 0x0

    .line 581
    .local v25, "in":Ljava/io/InputStream;
    const/16 v38, 0x0

    .line 582
    .local v38, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v40, 0x0

    .local v40, "start":J
    const-wide/16 v18, 0x0

    .line 585
    .local v18, "end":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v25

    .line 586
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    move/from16 v43, v0

    if-nez v43, :cond_1

    .line 587
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    move/from16 v43, v0

    if-nez v43, :cond_1

    .line 588
    move-object/from16 v0, v25

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v43, v0

    if-nez v43, :cond_1

    .line 589
    new-instance v26, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v25    # "in":Ljava/io/InputStream;
    .local v26, "in":Ljava/io/InputStream;
    move-object/from16 v25, v26

    .line 593
    .end local v26    # "in":Ljava/io/InputStream;
    .restart local v25    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    move-object/from16 v0, v25

    instance-of v0, v0, Ljavax/mail/internet/SharedInputStream;

    move/from16 v43, v0

    if-eqz v43, :cond_2

    .line 594
    move-object/from16 v0, v25

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object/from16 v38, v0

    .line 596
    :cond_2
    new-instance v15, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-direct {v15, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 597
    .local v15, "cType":Ljavax/mail/internet/ContentType;
    const/4 v11, 0x0

    .line 598
    .local v11, "boundary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    move/from16 v43, v0

    if-nez v43, :cond_3

    .line 599
    const-string v43, "boundary"

    move-object/from16 v0, v43

    invoke-virtual {v15, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 600
    .local v12, "bp":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 601
    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "--"

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 603
    .end local v12    # "bp":Ljava/lang/String;
    :cond_3
    if-nez v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    move/from16 v43, v0

    if-nez v43, :cond_4

    .line 604
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    move/from16 v43, v0

    if-nez v43, :cond_4

    .line 605
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "Missing boundary parameter"

    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 575
    .end local v11    # "boundary":Ljava/lang/String;
    .end local v15    # "cType":Ljavax/mail/internet/ContentType;
    .end local v18    # "end":J
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v38    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v40    # "start":J
    :catchall_0
    move-exception v43

    monitor-exit p0

    throw v43

    .line 590
    .restart local v18    # "end":J
    .restart local v25    # "in":Ljava/io/InputStream;
    .restart local v38    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v40    # "start":J
    :catch_0
    move-exception v20

    .line 591
    .local v20, "ex":Ljava/lang/Exception;
    :try_start_4
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "No inputstream from datasource"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v43
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 609
    .end local v20    # "ex":Ljava/lang/Exception;
    .restart local v11    # "boundary":Ljava/lang/String;
    .restart local v15    # "cType":Ljavax/mail/internet/ContentType;
    :cond_4
    :try_start_5
    new-instance v31, Lcom/sun/mail/util/LineInputStream;

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 610
    .local v31, "lin":Lcom/sun/mail/util/LineInputStream;
    const/16 v35, 0x0

    .line 612
    .local v35, "preamblesb":Ljava/lang/StringBuffer;
    const/16 v33, 0x0

    .line 613
    .local v33, "lineSeparator":Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual/range {v31 .. v31}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v32

    .local v32, "line":Ljava/lang/String;
    if-nez v32, :cond_8

    .line 675
    :cond_6
    :goto_2
    if-eqz v35, :cond_7

    .line 676
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 678
    :cond_7
    if-nez v32, :cond_12

    .line 679
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    move/from16 v43, v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v43, :cond_11

    .line 908
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 909
    :catch_1
    move-exception v43

    goto/16 :goto_0

    .line 621
    :cond_8
    :try_start_7
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    add-int/lit8 v24, v43, -0x1

    .local v24, "i":I
    :goto_3
    if-gez v24, :cond_a

    .line 626
    :cond_9
    const/16 v43, 0x0

    add-int/lit8 v44, v24, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 627
    if-eqz v11, :cond_c

    .line 628
    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_6

    .line 630
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v44

    add-int/lit8 v44, v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_e

    .line 631
    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_e

    const-string v43, "--"

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_e

    .line 632
    const/16 v32, 0x0

    .line 633
    goto :goto_2

    .line 622
    :cond_a
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 623
    .local v14, "c":C
    const/16 v43, 0x20

    move/from16 v0, v43

    if-eq v14, v0, :cond_b

    const/16 v43, 0x9

    move/from16 v0, v43

    if-ne v14, v0, :cond_9

    .line 621
    :cond_b
    add-int/lit8 v24, v24, -0x1

    goto :goto_3

    .line 641
    .end local v14    # "c":C
    :cond_c
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_e

    const-string v43, "--"

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_e

    .line 642
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    const/16 v44, 0x4

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_d

    invoke-static/range {v32 .. v32}, Ljavax/mail/internet/MimeMultipart;->allDashes(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_e

    .line 650
    :cond_d
    move-object/from16 v11, v32

    .line 651
    goto/16 :goto_2

    .line 657
    :cond_e
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v43

    if-lez v43, :cond_5

    .line 660
    if-nez v33, :cond_f

    .line 663
    :try_start_8
    const-string v43, "line.separator"

    const-string v44, "\n"

    invoke-static/range {v43 .. v44}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v33

    .line 669
    :cond_f
    :goto_4
    if-nez v35, :cond_10

    .line 670
    :try_start_9
    new-instance v35, Ljava/lang/StringBuffer;

    .end local v35    # "preamblesb":Ljava/lang/StringBuffer;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    add-int/lit8 v43, v43, 0x2

    move-object/from16 v0, v35

    move/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 671
    .restart local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_10
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 904
    .end local v24    # "i":I
    .end local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v32    # "line":Ljava/lang/String;
    .end local v33    # "lineSeparator":Ljava/lang/String;
    .end local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_2
    move-exception v29

    .line 905
    .local v29, "ioex":Ljava/io/IOException;
    :try_start_a
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "IO Error"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v43
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 906
    .end local v29    # "ioex":Ljava/io/IOException;
    :catchall_1
    move-exception v43

    .line 908
    :try_start_b
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 912
    :goto_5
    :try_start_c
    throw v43
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 664
    .restart local v24    # "i":I
    .restart local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v32    # "line":Ljava/lang/String;
    .restart local v33    # "lineSeparator":Ljava/lang/String;
    .restart local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_3
    move-exception v20

    .line 665
    .local v20, "ex":Ljava/lang/SecurityException;
    :try_start_d
    const-string v33, "\n"

    goto :goto_4

    .line 682
    .end local v20    # "ex":Ljava/lang/SecurityException;
    .end local v24    # "i":I
    :cond_11
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "Missing start boundary"

    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 686
    :cond_12
    invoke-static {v11}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 687
    .local v10, "bndbytes":[B
    array-length v9, v10

    .line 694
    .local v9, "bl":I
    const/16 v43, 0x100

    move/from16 v0, v43

    new-array v8, v0, [I

    .line 695
    .local v8, "bcs":[I
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_6
    move/from16 v0, v24

    if-lt v0, v9, :cond_13

    .line 699
    new-array v0, v9, [I

    move-object/from16 v22, v0

    .line 701
    .local v22, "gss":[I
    move/from16 v24, v9

    :goto_7
    if-gtz v24, :cond_14

    .line 717
    add-int/lit8 v43, v9, -0x1

    const/16 v44, 0x1

    aput v44, v22, v43
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 723
    const/16 v16, 0x0

    .line 725
    .local v16, "done":Z
    :goto_8
    if-eqz v16, :cond_18

    .line 908
    :goto_9
    :try_start_e
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 914
    :goto_a
    const/16 v43, 0x1

    :try_start_f
    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    .line 696
    .end local v16    # "done":Z
    .end local v22    # "gss":[I
    :cond_13
    :try_start_10
    aget-byte v43, v10, v24

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    add-int/lit8 v44, v24, 0x1

    aput v44, v8, v43

    .line 695
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 703
    .restart local v22    # "gss":[I
    :cond_14
    add-int/lit8 v30, v9, -0x1

    .local v30, "j":I
    :goto_b
    move/from16 v0, v30

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    .line 714
    :goto_c
    if-gtz v30, :cond_17

    .line 701
    :cond_15
    add-int/lit8 v24, v24, -0x1

    goto :goto_7

    .line 705
    :cond_16
    aget-byte v43, v10, v30

    sub-int v44, v30, v24

    aget-byte v44, v10, v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_15

    .line 707
    add-int/lit8 v43, v30, -0x1

    aput v24, v22, v43

    .line 703
    add-int/lit8 v30, v30, -0x1

    goto :goto_b

    .line 715
    :cond_17
    add-int/lit8 v30, v30, -0x1

    aput v24, v22, v30

    goto :goto_c

    .line 726
    .end local v30    # "j":I
    .restart local v16    # "done":Z
    :cond_18
    const/16 v23, 0x0

    .line 727
    .local v23, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v38, :cond_1c

    .line 728
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v40

    .line 730
    :cond_19
    invoke-virtual/range {v31 .. v31}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_1a

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v43

    if-gtz v43, :cond_19

    .line 732
    :cond_1a
    if-nez v32, :cond_1d

    .line 733
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    move/from16 v43, v0

    if-nez v43, :cond_1b

    .line 734
    new-instance v43, Ljavax/mail/MessagingException;

    .line 735
    const-string v44, "missing multipart end boundary"

    .line 734
    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 737
    :cond_1b
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    goto :goto_9

    .line 742
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v23

    .line 745
    :cond_1d
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->markSupported()Z

    move-result v43

    if-nez v43, :cond_1e

    .line 746
    new-instance v43, Ljavax/mail/MessagingException;

    const-string v44, "Stream doesn\'t support mark"

    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 748
    :cond_1e
    const/4 v13, 0x0

    .line 750
    .local v13, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v38, :cond_1f

    .line 751
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 765
    .restart local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    :goto_d
    new-array v0, v9, [B

    move-object/from16 v28, v0

    .line 766
    .local v28, "inbuf":[B
    new-array v0, v9, [B

    move-object/from16 v37, v0

    .line 767
    .local v37, "previnbuf":[B
    const/16 v27, 0x0

    .line 768
    .local v27, "inSize":I
    const/16 v36, 0x0

    .line 770
    .local v36, "prevSize":I
    const/16 v21, 0x1

    .line 776
    .local v21, "first":Z
    :goto_e
    add-int/lit8 v43, v9, 0x4

    move/from16 v0, v43

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v43, v0

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 777
    const/16 v17, 0x0

    .line 778
    .local v17, "eolLen":I
    const/16 v43, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v9}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v27

    .line 779
    move/from16 v0, v27

    if-ge v0, v9, :cond_23

    .line 781
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    move/from16 v43, v0

    if-nez v43, :cond_20

    .line 782
    new-instance v43, Ljavax/mail/MessagingException;

    .line 783
    const-string v44, "missing multipart end boundary"

    .line 782
    invoke-direct/range {v43 .. v44}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 753
    .end local v17    # "eolLen":I
    .end local v21    # "first":Z
    .end local v27    # "inSize":I
    .end local v28    # "inbuf":[B
    .end local v36    # "prevSize":I
    .end local v37    # "previnbuf":[B
    :cond_1f
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    goto :goto_d

    .line 784
    .restart local v17    # "eolLen":I
    .restart local v21    # "first":Z
    .restart local v27    # "inSize":I
    .restart local v28    # "inbuf":[B
    .restart local v36    # "prevSize":I
    .restart local v37    # "previnbuf":[B
    :cond_20
    if-eqz v38, :cond_21

    .line 785
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v18

    .line 786
    :cond_21
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 787
    const/16 v16, 0x1

    .line 890
    :cond_22
    :goto_f
    if-eqz v38, :cond_32

    .line 891
    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    move-wide/from16 v3, v18

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPartIs(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v34

    .line 902
    .local v34, "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-super {v0, v1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    goto/16 :goto_8

    .line 792
    .end local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    :cond_23
    add-int/lit8 v24, v9, -0x1

    :goto_11
    if-gez v24, :cond_29

    .line 796
    :cond_24
    if-gez v24, :cond_2d

    .line 797
    const/16 v17, 0x0

    .line 798
    if-nez v21, :cond_26

    .line 801
    add-int/lit8 v43, v36, -0x1

    aget-byte v6, v37, v43

    .line 802
    .local v6, "b":I
    const/16 v43, 0xd

    move/from16 v0, v43

    if-eq v6, v0, :cond_25

    const/16 v43, 0xa

    move/from16 v0, v43

    if-ne v6, v0, :cond_26

    .line 803
    :cond_25
    const/16 v17, 0x1

    .line 804
    const/16 v43, 0xa

    move/from16 v0, v43

    if-ne v6, v0, :cond_26

    const/16 v43, 0x2

    move/from16 v0, v36

    move/from16 v1, v43

    if-lt v0, v1, :cond_26

    .line 805
    add-int/lit8 v43, v36, -0x2

    aget-byte v6, v37, v43

    .line 806
    const/16 v43, 0xd

    move/from16 v0, v43

    if-ne v6, v0, :cond_26

    .line 807
    const/16 v17, 0x2

    .line 811
    .end local v6    # "b":I
    :cond_26
    if-nez v21, :cond_27

    if-lez v17, :cond_2c

    .line 812
    :cond_27
    if-eqz v38, :cond_28

    .line 815
    invoke-interface/range {v38 .. v38}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v44

    int-to-long v0, v9

    move-wide/from16 v46, v0

    sub-long v44, v44, v46

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v18, v44, v46

    .line 818
    :cond_28
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 819
    .local v7, "b2":I
    const/16 v43, 0x2d

    move/from16 v0, v43

    if-ne v7, v0, :cond_2b

    .line 820
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v43

    const/16 v44, 0x2d

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2b

    .line 821
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 822
    const/16 v16, 0x1

    .line 823
    goto/16 :goto_f

    .line 793
    .end local v7    # "b2":I
    :cond_29
    aget-byte v43, v28, v24

    aget-byte v44, v10, v24

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_24

    .line 792
    add-int/lit8 v24, v24, -0x1

    goto :goto_11

    .line 828
    .restart local v7    # "b2":I
    :cond_2a
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v7

    .line 827
    :cond_2b
    const/16 v43, 0x20

    move/from16 v0, v43

    if-eq v7, v0, :cond_2a

    const/16 v43, 0x9

    move/from16 v0, v43

    if-eq v7, v0, :cond_2a

    .line 830
    const/16 v43, 0xa

    move/from16 v0, v43

    if-eq v7, v0, :cond_22

    .line 832
    const/16 v43, 0xd

    move/from16 v0, v43

    if-ne v7, v0, :cond_2c

    .line 833
    const/16 v43, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 834
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->read()I

    move-result v43

    const/16 v44, 0xa

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_22

    .line 835
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    goto/16 :goto_f

    .line 839
    .end local v7    # "b2":I
    :cond_2c
    const/16 v24, 0x0

    .line 849
    :cond_2d
    add-int/lit8 v43, v24, 0x1

    aget-byte v44, v28, v24

    and-int/lit8 v44, v44, 0x7f

    aget v44, v8, v44

    sub-int v43, v43, v44

    aget v44, v22, v24

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 851
    .local v39, "skip":I
    const/16 v43, 0x2

    move/from16 v0, v39

    move/from16 v1, v43

    if-ge v0, v1, :cond_30

    .line 855
    if-nez v38, :cond_2e

    const/16 v43, 0x1

    move/from16 v0, v36

    move/from16 v1, v43

    if-le v0, v1, :cond_2e

    .line 856
    const/16 v43, 0x0

    add-int/lit8 v44, v36, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 857
    :cond_2e
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    .line 858
    const-wide/16 v44, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 859
    const/16 v43, 0x1

    move/from16 v0, v36

    move/from16 v1, v43

    if-lt v0, v1, :cond_2f

    .line 861
    const/16 v43, 0x0

    add-int/lit8 v44, v36, -0x1

    aget-byte v44, v37, v44

    aput-byte v44, v37, v43

    .line 862
    const/16 v43, 0x1

    const/16 v44, 0x0

    aget-byte v44, v28, v44

    aput-byte v44, v37, v43

    .line 863
    const/16 v36, 0x2

    .line 883
    :goto_12
    const/16 v21, 0x0

    .line 775
    goto/16 :goto_e

    .line 866
    :cond_2f
    const/16 v43, 0x0

    const/16 v44, 0x0

    aget-byte v44, v28, v44

    aput-byte v44, v37, v43

    .line 867
    const/16 v36, 0x1

    .line 869
    goto :goto_12

    .line 872
    :cond_30
    if-lez v36, :cond_31

    if-nez v38, :cond_31

    .line 873
    const/16 v43, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v43

    move/from16 v2, v36

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 875
    :cond_31
    move/from16 v36, v39

    .line 876
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->reset()V

    .line 877
    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 879
    move-object/from16 v42, v28

    .line 880
    .local v42, "tmp":[B
    move-object/from16 v28, v37

    .line 881
    move-object/from16 v37, v42

    goto :goto_12

    .line 894
    .end local v39    # "skip":I
    .end local v42    # "tmp":[B
    :cond_32
    sub-int v43, v36, v17

    if-lez v43, :cond_33

    .line 895
    const/16 v43, 0x0

    sub-int v44, v36, v17

    move-object/from16 v0, v37

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 898
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move/from16 v43, v0

    if-nez v43, :cond_34

    if-lez v27, :cond_34

    .line 899
    const/16 v43, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v43

    move/from16 v2, v27

    invoke-virtual {v13, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 900
    :cond_34
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v34

    .restart local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    goto/16 :goto_10

    .line 909
    .end local v8    # "bcs":[I
    .end local v9    # "bl":I
    .end local v10    # "bndbytes":[B
    .end local v13    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v16    # "done":Z
    .end local v17    # "eolLen":I
    .end local v21    # "first":Z
    .end local v22    # "gss":[I
    .end local v23    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v24    # "i":I
    .end local v27    # "inSize":I
    .end local v28    # "inbuf":[B
    .end local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v32    # "line":Ljava/lang/String;
    .end local v33    # "lineSeparator":Ljava/lang/String;
    .end local v34    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v35    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v36    # "prevSize":I
    .end local v37    # "previnbuf":[B
    :catch_4
    move-exception v44

    goto/16 :goto_5

    .restart local v8    # "bcs":[I
    .restart local v9    # "bl":I
    .restart local v10    # "bndbytes":[B
    .restart local v16    # "done":Z
    .restart local v22    # "gss":[I
    .restart local v24    # "i":I
    .restart local v31    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v32    # "line":Ljava/lang/String;
    .restart local v33    # "lineSeparator":Ljava/lang/String;
    .restart local v35    # "preamblesb":Ljava/lang/StringBuffer;
    :catch_5
    move-exception v43

    goto/16 :goto_a
.end method

.method public removeBodyPart(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 403
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(I)V

    .line 404
    return-void
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .locals 1
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 386
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .locals 1
    .param p1, "preamble"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 490
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 323
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized updateHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v0, v1, :cond_0

    .line 516
    monitor-exit p0

    return-void

    .line 515
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    new-instance v5, Ljavax/mail/internet/ContentType;

    iget-object v6, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v6, "boundary"

    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 526
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "boundary":Ljava/lang/String;
    new-instance v2, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v2, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 531
    .local v2, "los":Lcom/sun/mail/util/LineOutputStream;
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 532
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 533
    .local v3, "pb":[B
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    .line 535
    array-length v4, v3

    if-lez v4, :cond_0

    .line 536
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 537
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 542
    .end local v3    # "pb":[B
    :cond_0
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 543
    iget-boolean v4, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    if-eqz v4, :cond_2

    .line 545
    invoke-virtual {v2, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 559
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    .line 548
    :cond_2
    :try_start_1
    new-instance v4, Ljavax/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Empty multipart: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v2    # "los":Lcom/sun/mail/util/LineOutputStream;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 551
    .restart local v0    # "boundary":Ljava/lang/String;
    .restart local v2    # "los":Lcom/sun/mail/util/LineOutputStream;
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_2
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 552
    invoke-virtual {v2, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 553
    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v4, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 554
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
