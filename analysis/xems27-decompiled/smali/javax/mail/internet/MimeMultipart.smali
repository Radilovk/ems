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

    .line 193
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "subtype"    # Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 128
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 135
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 143
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 162
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 172
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 181
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    .line 212
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "boundary":Ljava/lang/String;
    new-instance v2, Ljavax/mail/internet/ContentType;

    const-string v3, "multipart"

    invoke-direct {v2, v3, p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    move-object v0, v2

    .line 214
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "boundary"

    invoke-virtual {v0, v2, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

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

    .line 244
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 245
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 247
    return-void

    .line 245
    :cond_0
    aget-object v2, p2, v1

    .line 246
    .local v2, "bp":Ljavax/mail/BodyPart;
    invoke-super {p0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 245
    .end local v2    # "bp":Ljavax/mail/BodyPart;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .locals 3
    .param p1, "ds"    # Ljavax/activation/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 269
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 128
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 135
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 143
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 162
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 181
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    .line 271
    instance-of v1, p1, Ljavax/mail/MessageAware;

    if-eqz v1, :cond_0

    .line 272
    move-object v1, p1

    check-cast v1, Ljavax/mail/MessageAware;

    invoke-interface {v1}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v1

    .line 273
    .local v1, "mc":Ljavax/mail/MessageContext;
    invoke-virtual {v1}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 276
    .end local v1    # "mc":Ljavax/mail/MessageContext;
    :cond_0
    instance-of v1, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v1, :cond_1

    .line 278
    move-object v0, p1

    check-cast v0, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 279
    return-void

    .line 284
    :cond_1
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 285
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 286
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public varargs constructor <init>([Ljavax/mail/BodyPart;)V
    .locals 3
    .param p1, "parts"    # [Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 229
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 231
    return-void

    .line 229
    :cond_0
    aget-object v2, p1, v1

    .line 230
    .local v2, "bp":Ljavax/mail/BodyPart;
    invoke-super {p0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 229
    .end local v2    # "bp":Ljavax/mail/BodyPart;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static allDashes(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 921
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 925
    .end local v0    # "i":I
    const/4 v0, 0x1

    return v0

    .line 922
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    .line 923
    const/4 v1, 0x0

    return v1

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

    .line 1026
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1030
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 1026
    :goto_1
    return-object v0

    .line 1027
    :catchall_0
    move-exception v0

    .line 1029
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1030
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    .line 1033
    :goto_3
    throw v0
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

    .line 944
    if-nez p3, :cond_0

    .line 945
    const/4 v0, 0x0

    return v0

    .line 946
    :cond_0
    const/4 v0, 0x0

    .line 947
    .local v0, "total":I
    nop

    :goto_0
    if-gtz p3, :cond_1

    goto :goto_1

    .line 948
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 949
    .local v1, "bsize":I
    if-gtz v1, :cond_3

    .line 950
    nop

    .line 955
    .end local v1    # "bsize":I
    :goto_1
    if-lez v0, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    return v1

    .line 951
    .restart local v1    # "bsize":I
    :cond_3
    add-int/2addr p2, v1

    .line 952
    add-int/2addr v0, v1

    .line 953
    sub-int/2addr p3, v1

    goto :goto_0
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 963
    nop

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 969
    return-void

    .line 964
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 965
    .local v2, "cur":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 967
    sub-long/2addr p2, v2

    goto :goto_0

    .line 966
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "can\'t skip"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 419
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 417
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "part":Ljavax/mail/BodyPart;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .locals 0
    .param p1, "part"    # Ljavax/mail/BodyPart;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 438
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 439
    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 437
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "part":Ljavax/mail/BodyPart;
    .end local p2    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

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

    monitor-enter p0

    .line 347
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 348
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 346
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .locals 5
    .param p1, "CID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 361
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 363
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 370
    .end local v1    # "i":I
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 365
    .restart local v1    # "i":I
    :cond_0
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
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 368
    monitor-exit p0

    return-object v2

    .line 364
    .end local v2    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v3    # "s":Ljava/lang/String;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local p1    # "CID":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 335
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 333
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
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

    monitor-enter p0

    .line 472
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 473
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 471
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initializeProperties()V
    .locals 2

    .line 300
    nop

    .line 301
    nop

    .line 300
    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 303
    nop

    .line 304
    nop

    .line 303
    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    .line 306
    nop

    .line 307
    nop

    .line 306
    const-string v0, "mail.mime.multipart.ignoreexistingboundaryparameter"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 309
    nop

    .line 310
    nop

    .line 309
    const-string v0, "mail.mime.multipart.allowempty"

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

    monitor-enter p0

    .line 458
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 459
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 457
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 575
    :try_start_0
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_13

    if-eqz v0, :cond_0

    .line 576
    monitor-exit p0

    return-void

    .line 578
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->initializeProperties()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_13

    .line 580
    const/4 v2, 0x0

    .line 581
    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 582
    .local v3, "sin":Ljavax/mail/internet/SharedInputStream;
    const-wide/16 v4, 0x0

    .local v4, "start":J
    const-wide/16 v6, 0x0

    .line 585
    .local v6, "end":J
    :try_start_2
    iget-object v0, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    .line 586
    nop

    instance-of v0, v2, Ljava/io/ByteArrayInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_13

    if-nez v0, :cond_1

    .line 587
    :try_start_3
    instance-of v0, v2, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_1

    .line 588
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_1

    .line 589
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_13

    move-object v2, v0

    .line 590
    goto :goto_0

    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catch_0
    move-exception v0

    move-wide/from16 v20, v4

    goto/16 :goto_30

    .line 593
    :cond_1
    :goto_0
    :try_start_4
    instance-of v0, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_2

    .line 594
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v3, v0

    .line 596
    :cond_2
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v8, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 597
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    const/4 v0, 0x0

    .line 598
    .local v0, "boundary":Ljava/lang/String;
    iget-boolean v9, v1, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    if-nez v9, :cond_3

    .line 599
    const-string v9, "boundary"

    invoke-virtual {v8, v9}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 600
    .local v9, "bp":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 601
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "--"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    move-object v9, v0

    goto :goto_1

    .line 603
    .end local v9    # "bp":Ljava/lang/String;
    :cond_3
    move-object v9, v0

    .end local v0    # "boundary":Ljava/lang/String;
    .local v9, "boundary":Ljava/lang/String;
    :goto_1
    if-nez v9, :cond_5

    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v0, :cond_5

    .line 604
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 605
    :cond_4
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v10, "Missing boundary parameter"

    invoke-direct {v0, v10}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_13

    .line 609
    :cond_5
    :goto_2
    :try_start_5
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v0

    .line 610
    .local v10, "lin":Lcom/sun/mail/util/LineInputStream;
    const/4 v0, 0x0

    .line 612
    .local v0, "preamblesb":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .line 613
    .local v11, "lineSeparator":Ljava/lang/String;
    move-object v12, v11

    move-object v11, v0

    .end local v0    # "preamblesb":Ljava/lang/StringBuffer;
    .local v11, "preamblesb":Ljava/lang/StringBuffer;
    .local v12, "lineSeparator":Ljava/lang/String;
    :goto_3
    invoke-virtual {v10}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .local v13, "line":Ljava/lang/String;
    const/16 v15, 0x20

    const/4 v14, 0x1

    if-nez v0, :cond_6

    goto/16 :goto_7

    .line 621
    :cond_6
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v14

    move v14, v0

    .local v14, "i":I
    :goto_4
    if-gez v14, :cond_7

    goto :goto_5

    .line 622
    :cond_7
    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 623
    .local v0, "c":C
    if-eq v0, v15, :cond_3c

    const/16 v15, 0x9

    if-eq v0, v15, :cond_3c

    .line 624
    nop

    .line 626
    .end local v0    # "c":C
    :goto_5
    add-int/lit8 v0, v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_11

    move-object v13, v0

    .line 627
    if-eqz v9, :cond_b

    .line 628
    :try_start_6
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 629
    goto/16 :goto_7

    .line 630
    :cond_8
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x2

    if-ne v0, v15, :cond_a

    .line 631
    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "--"

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_9

    .line 632
    const/4 v13, 0x0

    .line 633
    goto :goto_7

    .line 631
    :cond_9
    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    goto/16 :goto_29

    .line 630
    :cond_a
    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    goto/16 :goto_29

    .line 641
    :cond_b
    :try_start_7
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v15, 0x2

    if-le v0, v15, :cond_38

    const-string v0, "--"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 642
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catchall {:try_start_7 .. :try_end_7} :catchall_11

    const/4 v15, 0x4

    if-le v0, v15, :cond_d

    :try_start_8
    invoke-static {v13}, Ljavax/mail/internet/MimeMultipart;->allDashes(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    :cond_c
    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    goto/16 :goto_29

    .line 650
    :cond_d
    :goto_6
    move-object v9, v13

    .line 651
    nop

    .line 675
    .end local v14    # "i":I
    :goto_7
    if-eqz v11, :cond_e

    .line 676
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    goto :goto_8

    .line 906
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v8

    move-object v8, v0

    goto/16 :goto_2d

    .line 904
    :catch_1
    move-exception v0

    move-object/from16 v19, v8

    goto/16 :goto_2c

    .line 678
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    :cond_e
    :goto_8
    if-nez v13, :cond_10

    .line 679
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_f

    .line 908
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_13

    .line 909
    :goto_9
    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    .line 680
    :goto_a
    monitor-exit p0

    return-void

    .line 682
    :cond_f
    :try_start_a
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v14, "Missing start boundary"

    invoke-direct {v0, v14}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 686
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :cond_10
    :try_start_b
    invoke-static {v9}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 687
    .local v0, "bndbytes":[B
    array-length v14, v0

    .line 694
    .local v14, "bl":I
    const/16 v15, 0x100

    new-array v15, v15, [I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_12
    .catchall {:try_start_b .. :try_end_b} :catchall_f

    .line 695
    .local v15, "bcs":[I
    const/16 v19, 0x0

    move-wide/from16 v20, v4

    move/from16 v4, v19

    .local v4, "i":I
    .local v20, "start":J
    :goto_b
    if-lt v4, v14, :cond_37

    .line 699
    .end local v4    # "i":I
    :try_start_c
    new-array v4, v14, [I

    .line 701
    .local v4, "gss":[I
    move v5, v14

    .local v5, "i":I
    :goto_c
    if-gtz v5, :cond_33

    .line 717
    .end local v5    # "i":I
    add-int/lit8 v5, v14, -0x1

    const/16 v17, 0x1

    aput v17, v4, v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    .line 723
    const/4 v5, 0x0

    .line 725
    .local v5, "done":Z
    nop

    :goto_d
    if-eqz v5, :cond_11

    .line 904
    .end local v0    # "bndbytes":[B
    .end local v4    # "gss":[I
    .end local v5    # "done":Z
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "bl":I
    .end local v15    # "bcs":[I
    goto :goto_f

    .line 726
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v5    # "done":Z
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "bl":I
    .restart local v15    # "bcs":[I
    :cond_11
    const/16 v19, 0x0

    .line 727
    .local v19, "headers":Ljavax/mail/internet/InternetHeaders;
    if-eqz v3, :cond_16

    .line 728
    :try_start_d
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 730
    :cond_12
    invoke-virtual {v10}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v22
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v13, v22

    if-eqz v22, :cond_13

    :try_start_e
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-gtz v22, :cond_12

    goto :goto_e

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v4    # "gss":[I
    .end local v5    # "done":Z
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "bl":I
    .end local v15    # "bcs":[I
    .end local v19    # "headers":Ljavax/mail/internet/InternetHeaders;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v8

    move-wide/from16 v4, v20

    move-object v8, v0

    goto/16 :goto_2d

    .line 904
    :catch_3
    move-exception v0

    move-object/from16 v19, v8

    move-wide/from16 v4, v20

    goto/16 :goto_2c

    .line 732
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v5    # "done":Z
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "bl":I
    .restart local v15    # "bcs":[I
    .restart local v19    # "headers":Ljavax/mail/internet/InternetHeaders;
    :cond_13
    :goto_e
    if-nez v13, :cond_15

    .line 733
    move/from16 v22, v5

    .end local v5    # "done":Z
    .local v22, "done":Z
    :try_start_f
    iget-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v5, :cond_14

    .line 737
    const/4 v5, 0x0

    :try_start_10
    iput-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 738
    nop

    .line 908
    .end local v0    # "bndbytes":[B
    .end local v4    # "gss":[I
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "bl":I
    .end local v15    # "bcs":[I
    .end local v19    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v22    # "done":Z
    :goto_f
    :try_start_11
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_13

    .line 909
    :goto_10
    goto :goto_11

    :catch_4
    move-exception v0

    goto :goto_10

    .line 914
    :goto_11
    const/4 v4, 0x1

    :try_start_12
    iput-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_13

    .line 915
    monitor-exit p0

    return-void

    .line 734
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "bl":I
    .restart local v15    # "bcs":[I
    .restart local v19    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v22    # "done":Z
    :cond_14
    :try_start_13
    new-instance v5, Ljavax/mail/MessagingException;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 735
    move-wide/from16 v23, v6

    .end local v6    # "end":J
    .local v23, "end":J
    :try_start_14
    const-string v6, "missing multipart end boundary"

    .line 734
    invoke-direct {v5, v6}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v20    # "start":J
    .end local v23    # "end":J
    throw v5
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v4    # "gss":[I
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "bl":I
    .end local v15    # "bcs":[I
    .end local v19    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v22    # "done":Z
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    .restart local v20    # "start":J
    .restart local v23    # "end":J
    :catchall_2
    move-exception v0

    move-object/from16 v19, v8

    move-wide/from16 v4, v20

    move-wide/from16 v6, v23

    move-object v8, v0

    goto/16 :goto_2d

    .line 904
    :catch_5
    move-exception v0

    move-object/from16 v19, v8

    move-wide/from16 v4, v20

    move-wide/from16 v6, v23

    goto/16 :goto_2c

    .line 732
    .end local v23    # "end":J
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v5    # "done":Z
    .restart local v6    # "end":J
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "bl":I
    .restart local v15    # "bcs":[I
    .restart local v19    # "headers":Ljavax/mail/internet/InternetHeaders;
    :cond_15
    move/from16 v22, v5

    move-wide/from16 v23, v6

    .end local v5    # "done":Z
    .end local v6    # "end":J
    .restart local v22    # "done":Z
    .restart local v23    # "end":J
    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    goto :goto_12

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v4    # "gss":[I
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "bl":I
    .end local v15    # "bcs":[I
    .end local v19    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v22    # "done":Z
    .end local v23    # "end":J
    .restart local v6    # "end":J
    :catchall_3
    move-exception v0

    move-wide/from16 v23, v6

    move-object/from16 v19, v8

    move-wide/from16 v4, v20

    move-object v8, v0

    .end local v6    # "end":J
    .restart local v23    # "end":J
    goto/16 :goto_2d

    .line 904
    .end local v23    # "end":J
    .restart local v6    # "end":J
    :catch_6
    move-exception v0

    move-wide/from16 v23, v6

    move-object/from16 v19, v8

    move-wide/from16 v4, v20

    .end local v6    # "end":J
    .restart local v23    # "end":J
    goto/16 :goto_2c

    .line 742
    .end local v23    # "end":J
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v5    # "done":Z
    .restart local v6    # "end":J
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "bl":I
    .restart local v15    # "bcs":[I
    .restart local v19    # "headers":Ljavax/mail/internet/InternetHeaders;
    :cond_16
    move/from16 v22, v5

    move-wide/from16 v23, v6

    .end local v5    # "done":Z
    .end local v6    # "end":J
    .restart local v22    # "done":Z
    .restart local v23    # "end":J
    :try_start_15
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v5
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    move-object/from16 v19, v5

    move-object/from16 v5, v19

    move-wide/from16 v6, v20

    .line 745
    .end local v19    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v20    # "start":J
    .local v5, "headers":Ljavax/mail/internet/InternetHeaders;
    .local v6, "start":J
    :goto_12
    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v19
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    if-eqz v19, :cond_32

    .line 748
    const/16 v19, 0x0

    .line 750
    .local v19, "buf":Ljava/io/ByteArrayOutputStream;
    if-nez v3, :cond_17

    .line 751
    :try_start_17
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    move-object/from16 v19, v20

    move-wide/from16 v20, v23

    move-object/from16 v36, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v36

    goto :goto_13

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v4    # "gss":[I
    .end local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "bl":I
    .end local v15    # "bcs":[I
    .end local v19    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v22    # "done":Z
    :catchall_4
    move-exception v0

    move-wide v4, v6

    move-object/from16 v19, v8

    move-wide/from16 v6, v23

    move-object v8, v0

    goto/16 :goto_2d

    .line 904
    :catch_7
    move-exception v0

    move-wide v4, v6

    move-object/from16 v19, v8

    move-wide/from16 v6, v23

    goto/16 :goto_2c

    .line 753
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "bl":I
    .restart local v15    # "bcs":[I
    .restart local v19    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v22    # "done":Z
    :cond_17
    :try_start_18
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v20
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .end local v23    # "end":J
    .local v20, "end":J
    move-object/from16 v36, v19

    move-object/from16 v19, v8

    move-object/from16 v8, v36

    .line 765
    .local v8, "buf":Ljava/io/ByteArrayOutputStream;
    .local v19, "cType":Ljavax/mail/internet/ContentType;
    :goto_13
    move-object/from16 v25, v9

    .end local v9    # "boundary":Ljava/lang/String;
    .local v25, "boundary":Ljava/lang/String;
    :try_start_19
    new-array v9, v14, [B

    .line 766
    .local v9, "inbuf":[B
    move-object/from16 v23, v9

    .end local v9    # "inbuf":[B
    .local v23, "inbuf":[B
    new-array v9, v14, [B

    .line 767
    .local v9, "previnbuf":[B
    const/16 v24, 0x0

    .line 768
    .local v24, "inSize":I
    const/16 v26, 0x0

    .line 770
    .local v26, "prevSize":I
    const/16 v27, 0x1

    move-object/from16 v36, v10

    move-object v10, v9

    move-object/from16 v9, v23

    move/from16 v23, v27

    move-object/from16 v27, v13

    move/from16 v13, v26

    move-object/from16 v26, v36

    .line 776
    .local v9, "inbuf":[B
    .local v10, "previnbuf":[B
    .local v13, "prevSize":I
    .local v23, "first":Z
    .local v26, "lin":Lcom/sun/mail/util/LineInputStream;
    .local v27, "line":Ljava/lang/String;
    :goto_14
    move-object/from16 v28, v11

    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .local v28, "preamblesb":Ljava/lang/StringBuffer;
    add-int/lit8 v11, v14, 0x4

    add-int/lit16 v11, v11, 0x3e8

    invoke-virtual {v2, v11}, Ljava/io/InputStream;->mark(I)V

    .line 777
    const/4 v11, 0x0

    .line 778
    .local v11, "eolLen":I
    move/from16 v29, v11

    const/4 v11, 0x0

    .end local v11    # "eolLen":I
    .local v29, "eolLen":I
    invoke-static {v2, v9, v11, v14}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v30
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    move/from16 v11, v30

    .line 779
    .end local v24    # "inSize":I
    .local v11, "inSize":I
    if-ge v11, v14, :cond_1a

    .line 781
    move-object/from16 v30, v12

    .end local v12    # "lineSeparator":Ljava/lang/String;
    .local v30, "lineSeparator":Ljava/lang/String;
    :try_start_1a
    iget-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v12, :cond_19

    .line 784
    if-eqz v3, :cond_18

    .line 785
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v31

    move-wide/from16 v20, v31

    .line 786
    :cond_18
    const/4 v12, 0x0

    iput-boolean v12, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 787
    const/4 v12, 0x1

    .line 788
    .end local v22    # "done":Z
    .local v12, "done":Z
    move-object/from16 v31, v4

    move-object/from16 v32, v15

    move v15, v12

    move-object v12, v5

    move-wide/from16 v4, v20

    goto/16 :goto_1d

    .line 782
    .end local v12    # "done":Z
    .restart local v22    # "done":Z
    :cond_19
    new-instance v12, Ljavax/mail/MessagingException;

    .line 783
    move-object/from16 v31, v4

    .end local v4    # "gss":[I
    .local v31, "gss":[I
    const-string v4, "missing multipart end boundary"

    .line 782
    invoke-direct {v12, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v6    # "start":J
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v20    # "end":J
    .end local v25    # "boundary":Ljava/lang/String;
    throw v12
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "inbuf":[B
    .end local v10    # "previnbuf":[B
    .end local v11    # "inSize":I
    .end local v13    # "prevSize":I
    .end local v14    # "bl":I
    .end local v15    # "bcs":[I
    .end local v22    # "done":Z
    .end local v23    # "first":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "line":Ljava/lang/String;
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "eolLen":I
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .end local v31    # "gss":[I
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v6    # "start":J
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v20    # "end":J
    .restart local v25    # "boundary":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object v8, v0

    move-wide v4, v6

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    goto/16 :goto_2d

    .line 904
    :catch_8
    move-exception v0

    move-wide v4, v6

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    goto/16 :goto_2c

    .line 792
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .restart local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "inbuf":[B
    .restart local v10    # "previnbuf":[B
    .restart local v11    # "inSize":I
    .local v12, "lineSeparator":Ljava/lang/String;
    .restart local v13    # "prevSize":I
    .restart local v14    # "bl":I
    .restart local v15    # "bcs":[I
    .restart local v22    # "done":Z
    .restart local v23    # "first":Z
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "line":Ljava/lang/String;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "eolLen":I
    :cond_1a
    move-object/from16 v31, v4

    move-object/from16 v30, v12

    .end local v4    # "gss":[I
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "gss":[I
    add-int/lit8 v4, v14, -0x1

    .local v4, "i":I
    :goto_15
    if-gez v4, :cond_1b

    move-object/from16 v32, v15

    goto :goto_16

    .line 793
    :cond_1b
    :try_start_1b
    aget-byte v12, v9, v4

    move-object/from16 v32, v15

    .end local v15    # "bcs":[I
    .local v32, "bcs":[I
    aget-byte v15, v0, v4
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    if-eq v12, v15, :cond_31

    .line 794
    nop

    .line 796
    :goto_16
    if-gez v4, :cond_2c

    .line 797
    const/4 v12, 0x0

    .line 798
    .end local v29    # "eolLen":I
    .local v12, "eolLen":I
    if-nez v23, :cond_1d

    .line 801
    add-int/lit8 v29, v13, -0x1

    :try_start_1c
    aget-byte v29, v10, v29

    move/from16 v33, v29

    .line 802
    .local v33, "b":I
    move/from16 v15, v33

    move/from16 v33, v12

    const/16 v12, 0xd

    .end local v12    # "eolLen":I
    .local v15, "b":I
    .local v33, "eolLen":I
    if-eq v15, v12, :cond_1c

    const/16 v12, 0xa

    if-ne v15, v12, :cond_1e

    goto :goto_17

    :cond_1c
    const/16 v12, 0xa

    .line 803
    :goto_17
    const/16 v33, 0x1

    .line 804
    if-ne v15, v12, :cond_1e

    const/4 v12, 0x2

    if-lt v13, v12, :cond_1e

    .line 805
    add-int/lit8 v12, v13, -0x2

    aget-byte v12, v10, v12

    .line 806
    .end local v15    # "b":I
    .local v12, "b":I
    const/16 v15, 0xd

    if-ne v12, v15, :cond_1e

    .line 807
    const/4 v15, 0x2

    .end local v33    # "eolLen":I
    .local v15, "eolLen":I
    goto :goto_18

    .line 798
    .end local v15    # "eolLen":I
    .local v12, "eolLen":I
    :cond_1d
    move/from16 v33, v12

    .line 811
    .end local v12    # "eolLen":I
    .restart local v33    # "eolLen":I
    :cond_1e
    move/from16 v15, v33

    .end local v33    # "eolLen":I
    .restart local v15    # "eolLen":I
    :goto_18
    if-nez v23, :cond_20

    if-lez v15, :cond_1f

    goto :goto_19

    :cond_1f
    move/from16 v35, v4

    move-object v12, v5

    move/from16 v18, v15

    goto/16 :goto_20

    .line 812
    :cond_20
    :goto_19
    if-eqz v3, :cond_21

    .line 815
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v33
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    move/from16 v35, v4

    move-object v12, v5

    .end local v4    # "i":I
    .end local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .local v12, "headers":Ljavax/mail/internet/InternetHeaders;
    .local v35, "i":I
    int-to-long v4, v14

    sub-long v33, v33, v4

    int-to-long v4, v15

    sub-long v33, v33, v4

    .end local v20    # "end":J
    .local v33, "end":J
    goto :goto_1a

    .line 812
    .end local v12    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v33    # "end":J
    .end local v35    # "i":I
    .restart local v4    # "i":I
    .restart local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v20    # "end":J
    :cond_21
    move/from16 v35, v4

    move-object v12, v5

    .end local v4    # "i":I
    .end local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v12    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v35    # "i":I
    move-wide/from16 v33, v20

    .line 818
    .end local v20    # "end":J
    .restart local v33    # "end":J
    :goto_1a
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 819
    .local v4, "b2":I
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_22

    .line 820
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v5

    move/from16 v21, v4

    const/16 v4, 0x2d

    .end local v4    # "b2":I
    .local v21, "b2":I
    if-ne v5, v4, :cond_23

    .line 821
    const/4 v4, 0x1

    iput-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 822
    const/4 v4, 0x1

    .line 823
    .end local v22    # "done":Z
    .local v4, "done":Z
    move/from16 v29, v15

    move v15, v4

    move-wide/from16 v4, v33

    goto :goto_1d

    .line 819
    .end local v21    # "b2":I
    .local v4, "b2":I
    .restart local v22    # "done":Z
    :cond_22
    move/from16 v21, v4

    .line 827
    .end local v4    # "b2":I
    .restart local v21    # "b2":I
    :cond_23
    move/from16 v4, v21

    .end local v21    # "b2":I
    .restart local v4    # "b2":I
    :goto_1b
    const/16 v5, 0x20

    if-eq v4, v5, :cond_2b

    move/from16 v18, v15

    const/16 v15, 0x9

    .end local v15    # "eolLen":I
    .local v18, "eolLen":I
    if-eq v4, v15, :cond_2a

    .line 830
    const/16 v5, 0xa

    if-ne v4, v5, :cond_24

    .line 831
    goto :goto_1c

    .line 832
    :cond_24
    const/16 v5, 0xd

    if-ne v4, v5, :cond_29

    .line 833
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->mark(I)V

    .line 834
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v15, 0xa

    if-eq v5, v15, :cond_25

    .line 835
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 890
    .end local v4    # "b2":I
    .end local v35    # "i":I
    :cond_25
    :goto_1c
    move/from16 v29, v18

    move/from16 v15, v22

    move-wide/from16 v4, v33

    .end local v18    # "eolLen":I
    .end local v22    # "done":Z
    .end local v33    # "end":J
    .local v4, "end":J
    .local v15, "done":Z
    .restart local v29    # "eolLen":I
    :goto_1d
    if-eqz v3, :cond_26

    .line 891
    move/from16 v18, v15

    .end local v15    # "done":Z
    .local v18, "done":Z
    :try_start_1e
    invoke-interface {v3, v6, v7, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v1, v15}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPartIs(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v15
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 892
    .local v15, "part":Ljavax/mail/internet/MimeBodyPart;
    move-wide/from16 v20, v4

    goto :goto_1f

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "inbuf":[B
    .end local v10    # "previnbuf":[B
    .end local v11    # "inSize":I
    .end local v12    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v13    # "prevSize":I
    .end local v14    # "bl":I
    .end local v15    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v18    # "done":Z
    .end local v23    # "first":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "line":Ljava/lang/String;
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "eolLen":I
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .end local v31    # "gss":[I
    .end local v32    # "bcs":[I
    :catchall_6
    move-exception v0

    move-object v8, v0

    move-object/from16 v9, v25

    move-wide/from16 v36, v4

    move-wide v4, v6

    move-wide/from16 v6, v36

    goto/16 :goto_2d

    .line 904
    :catch_9
    move-exception v0

    move-object/from16 v9, v25

    move-wide/from16 v36, v4

    move-wide v4, v6

    move-wide/from16 v6, v36

    goto/16 :goto_2c

    .line 894
    .restart local v0    # "bndbytes":[B
    .restart local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "inbuf":[B
    .restart local v10    # "previnbuf":[B
    .restart local v11    # "inSize":I
    .restart local v12    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v13    # "prevSize":I
    .restart local v14    # "bl":I
    .local v15, "done":Z
    .restart local v23    # "first":Z
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "line":Ljava/lang/String;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "eolLen":I
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "gss":[I
    .restart local v32    # "bcs":[I
    :cond_26
    move/from16 v18, v15

    .end local v15    # "done":Z
    .restart local v18    # "done":Z
    sub-int v15, v13, v29

    if-lez v15, :cond_27

    .line 895
    sub-int v15, v13, v29

    move-wide/from16 v20, v4

    const/4 v4, 0x0

    .end local v4    # "end":J
    .restart local v20    # "end":J
    :try_start_1f
    invoke-virtual {v8, v10, v4, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1e

    .line 894
    .end local v20    # "end":J
    .restart local v4    # "end":J
    :cond_27
    move-wide/from16 v20, v4

    .line 898
    .end local v4    # "end":J
    .restart local v20    # "end":J
    :goto_1e
    iget-boolean v4, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v4, :cond_28

    if-lez v11, :cond_28

    .line 899
    const/4 v4, 0x0

    invoke-virtual {v8, v9, v4, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 900
    :cond_28
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4

    move-object v15, v4

    .line 902
    .local v15, "part":Ljavax/mail/internet/MimeBodyPart;
    :goto_1f
    invoke-super {v1, v15}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move/from16 v5, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v13, v27

    move-object/from16 v11, v28

    move-object/from16 v12, v30

    move-object/from16 v4, v31

    move-object/from16 v15, v32

    move-wide/from16 v36, v6

    move-wide/from16 v6, v20

    move-wide/from16 v20, v36

    goto/16 :goto_d

    .line 832
    .end local v15    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v20    # "end":J
    .end local v29    # "eolLen":I
    .local v4, "b2":I
    .local v18, "eolLen":I
    .restart local v22    # "done":Z
    .restart local v33    # "end":J
    .restart local v35    # "i":I
    :cond_29
    move-wide/from16 v20, v33

    .line 839
    .end local v4    # "b2":I
    .end local v33    # "end":J
    .restart local v20    # "end":J
    :goto_20
    const/4 v4, 0x0

    move/from16 v29, v18

    .end local v35    # "i":I
    .local v4, "i":I
    goto :goto_22

    .line 827
    .end local v20    # "end":J
    .local v4, "b2":I
    .restart local v33    # "end":J
    .restart local v35    # "i":I
    :cond_2a
    const/16 v5, 0xd

    const/16 v15, 0xa

    goto :goto_21

    .end local v18    # "eolLen":I
    .local v15, "eolLen":I
    :cond_2b
    move/from16 v18, v15

    const/16 v5, 0xd

    const/16 v15, 0xa

    .line 828
    .end local v15    # "eolLen":I
    .restart local v18    # "eolLen":I
    :goto_21
    :try_start_20
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v20
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    move/from16 v4, v20

    move/from16 v15, v18

    goto/16 :goto_1b

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v4    # "b2":I
    .end local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "inbuf":[B
    .end local v10    # "previnbuf":[B
    .end local v11    # "inSize":I
    .end local v12    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v13    # "prevSize":I
    .end local v14    # "bl":I
    .end local v18    # "eolLen":I
    .end local v22    # "done":Z
    .end local v23    # "first":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "line":Ljava/lang/String;
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .end local v31    # "gss":[I
    .end local v32    # "bcs":[I
    .end local v35    # "i":I
    :catchall_7
    move-exception v0

    move-object v8, v0

    move-wide v4, v6

    move-object/from16 v9, v25

    move-wide/from16 v6, v33

    goto/16 :goto_2d

    .line 904
    :catch_a
    move-exception v0

    move-wide v4, v6

    move-object/from16 v9, v25

    move-wide/from16 v6, v33

    goto/16 :goto_2c

    .line 796
    .end local v33    # "end":J
    .restart local v0    # "bndbytes":[B
    .local v4, "i":I
    .restart local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "inbuf":[B
    .restart local v10    # "previnbuf":[B
    .restart local v11    # "inSize":I
    .restart local v13    # "prevSize":I
    .restart local v14    # "bl":I
    .restart local v20    # "end":J
    .restart local v22    # "done":Z
    .restart local v23    # "first":Z
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "line":Ljava/lang/String;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "eolLen":I
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "gss":[I
    .restart local v32    # "bcs":[I
    :cond_2c
    move/from16 v35, v4

    move-object v12, v5

    .line 849
    .end local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v12    # "headers":Ljavax/mail/internet/InternetHeaders;
    :goto_22
    add-int/lit8 v5, v4, 0x1

    :try_start_21
    aget-byte v15, v9, v4

    and-int/lit8 v15, v15, 0x7f

    aget v15, v32, v15

    sub-int/2addr v5, v15

    aget v15, v31, v4

    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v5
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    .line 851
    .local v5, "skip":I
    const/4 v15, 0x2

    if-ge v5, v15, :cond_2f

    .line 855
    if-nez v3, :cond_2d

    const/4 v15, 0x1

    if-le v13, v15, :cond_2d

    .line 856
    add-int/lit8 v15, v13, -0x1

    move/from16 v18, v4

    const/4 v4, 0x0

    .end local v4    # "i":I
    .local v18, "i":I
    :try_start_22
    invoke-virtual {v8, v10, v4, v15}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_8
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    goto :goto_23

    .line 855
    .end local v18    # "i":I
    .restart local v4    # "i":I
    :cond_2d
    move/from16 v18, v4

    .line 857
    .end local v4    # "i":I
    .restart local v18    # "i":I
    :goto_23
    :try_start_23
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_c
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    .line 858
    move-wide/from16 v33, v6

    .end local v6    # "start":J
    .local v33, "start":J
    const-wide/16 v6, 0x1

    :try_start_24
    invoke-direct {v1, v2, v6, v7}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    .line 859
    const/4 v4, 0x1

    if-lt v13, v4, :cond_2e

    .line 861
    add-int/lit8 v4, v13, -0x1

    aget-byte v4, v10, v4

    const/4 v6, 0x0

    aput-byte v4, v10, v6

    .line 862
    aget-byte v4, v9, v6

    const/4 v15, 0x1

    aput-byte v4, v10, v15

    .line 863
    const/4 v4, 0x2

    .line 864
    .end local v13    # "prevSize":I
    .local v4, "prevSize":I
    move v13, v4

    move v7, v5

    goto :goto_25

    .line 866
    .end local v4    # "prevSize":I
    .restart local v13    # "prevSize":I
    :cond_2e
    const/4 v15, 0x1

    const/4 v4, 0x0

    aget-byte v6, v9, v4

    aput-byte v6, v10, v4

    .line 867
    const/4 v4, 0x1

    .line 869
    .end local v13    # "prevSize":I
    .restart local v4    # "prevSize":I
    move v13, v4

    move v7, v5

    goto :goto_25

    .line 872
    .end local v18    # "i":I
    .end local v33    # "start":J
    .local v4, "i":I
    .restart local v6    # "start":J
    .restart local v13    # "prevSize":I
    :cond_2f
    move/from16 v18, v4

    move-wide/from16 v33, v6

    const/4 v15, 0x1

    .end local v4    # "i":I
    .end local v6    # "start":J
    .restart local v18    # "i":I
    .restart local v33    # "start":J
    if-lez v13, :cond_30

    if-nez v3, :cond_30

    .line 873
    const/4 v4, 0x0

    invoke-virtual {v8, v10, v4, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_24

    .line 872
    :cond_30
    const/4 v4, 0x0

    .line 875
    :goto_24
    move v6, v5

    .line 876
    .end local v13    # "prevSize":I
    .local v6, "prevSize":I
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 877
    move v7, v5

    .end local v5    # "skip":I
    .local v7, "skip":I
    int-to-long v4, v6

    invoke-direct {v1, v2, v4, v5}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_b
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 879
    move-object v4, v9

    .line 880
    .local v4, "tmp":[B
    move-object v5, v10

    .line 881
    .end local v9    # "inbuf":[B
    .local v5, "inbuf":[B
    move v13, v6

    move-object v10, v9

    move-object v9, v5

    .line 883
    .end local v4    # "tmp":[B
    .end local v5    # "inbuf":[B
    .end local v6    # "prevSize":I
    .restart local v9    # "inbuf":[B
    .restart local v13    # "prevSize":I
    :goto_25
    const/16 v23, 0x0

    .line 775
    .end local v7    # "skip":I
    .end local v18    # "i":I
    .end local v29    # "eolLen":I
    move/from16 v24, v11

    move-object v5, v12

    move-object/from16 v11, v28

    move-object/from16 v12, v30

    move-object/from16 v4, v31

    move-object/from16 v15, v32

    move-wide/from16 v6, v33

    goto/16 :goto_14

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "inbuf":[B
    .end local v10    # "previnbuf":[B
    .end local v11    # "inSize":I
    .end local v12    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v13    # "prevSize":I
    .end local v14    # "bl":I
    .end local v22    # "done":Z
    .end local v23    # "first":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "line":Ljava/lang/String;
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .end local v31    # "gss":[I
    .end local v32    # "bcs":[I
    :catchall_8
    move-exception v0

    move-object v8, v0

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    move-wide/from16 v4, v33

    goto/16 :goto_2d

    .line 904
    :catch_b
    move-exception v0

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    move-wide/from16 v4, v33

    goto/16 :goto_2c

    .line 792
    .end local v33    # "start":J
    .restart local v0    # "bndbytes":[B
    .local v4, "i":I
    .local v5, "headers":Ljavax/mail/internet/InternetHeaders;
    .local v6, "start":J
    .restart local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "inbuf":[B
    .restart local v10    # "previnbuf":[B
    .restart local v11    # "inSize":I
    .restart local v13    # "prevSize":I
    .restart local v14    # "bl":I
    .restart local v22    # "done":Z
    .restart local v23    # "first":Z
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "line":Ljava/lang/String;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v29    # "eolLen":I
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "gss":[I
    .restart local v32    # "bcs":[I
    :cond_31
    move/from16 v35, v4

    move-object v12, v5

    move-wide/from16 v33, v6

    const/4 v15, 0x1

    .end local v4    # "i":I
    .end local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v6    # "start":J
    .restart local v12    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v33    # "start":J
    .restart local v35    # "i":I
    add-int/lit8 v4, v35, -0x1

    move-object/from16 v15, v32

    .end local v35    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_15

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v4    # "i":I
    .end local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "inbuf":[B
    .end local v10    # "previnbuf":[B
    .end local v11    # "inSize":I
    .end local v12    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v13    # "prevSize":I
    .end local v14    # "bl":I
    .end local v22    # "done":Z
    .end local v23    # "first":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "line":Ljava/lang/String;
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v29    # "eolLen":I
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .end local v31    # "gss":[I
    .end local v32    # "bcs":[I
    .end local v33    # "start":J
    .restart local v6    # "start":J
    :catchall_9
    move-exception v0

    move-wide/from16 v33, v6

    move-object v8, v0

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    move-wide/from16 v4, v33

    .end local v6    # "start":J
    .restart local v33    # "start":J
    goto/16 :goto_2d

    .line 904
    .end local v33    # "start":J
    .restart local v6    # "start":J
    :catch_c
    move-exception v0

    move-wide/from16 v33, v6

    move-wide/from16 v6, v20

    move-object/from16 v9, v25

    move-wide/from16 v4, v33

    .end local v6    # "start":J
    .restart local v33    # "start":J
    goto/16 :goto_2c

    .line 746
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v20    # "end":J
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v33    # "start":J
    .restart local v0    # "bndbytes":[B
    .local v4, "gss":[I
    .restart local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v6    # "start":J
    .local v8, "cType":Ljavax/mail/internet/ContentType;
    .local v9, "boundary":Ljava/lang/String;
    .local v10, "lin":Lcom/sun/mail/util/LineInputStream;
    .local v11, "preamblesb":Ljava/lang/StringBuffer;
    .local v12, "lineSeparator":Ljava/lang/String;
    .local v13, "line":Ljava/lang/String;
    .restart local v14    # "bl":I
    .local v15, "bcs":[I
    .restart local v22    # "done":Z
    .local v23, "end":J
    :cond_32
    move-object/from16 v31, v4

    move-wide/from16 v33, v6

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    move-object/from16 v27, v13

    move-object/from16 v32, v15

    move-object v12, v5

    .end local v4    # "gss":[I
    .end local v5    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v6    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "bcs":[I
    .local v12, "headers":Ljavax/mail/internet/InternetHeaders;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v27    # "line":Ljava/lang/String;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "gss":[I
    .restart local v32    # "bcs":[I
    .restart local v33    # "start":J
    :try_start_25
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Stream doesn\'t support mark"

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "end":J
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v33    # "start":J
    throw v4
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_d
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v12    # "headers":Ljavax/mail/internet/InternetHeaders;
    .end local v14    # "bl":I
    .end local v22    # "done":Z
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v27    # "line":Ljava/lang/String;
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .end local v31    # "gss":[I
    .end local v32    # "bcs":[I
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v23    # "end":J
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v33    # "start":J
    :catchall_a
    move-exception v0

    move-object v8, v0

    move-wide/from16 v6, v23

    move-object/from16 v9, v25

    move-wide/from16 v4, v33

    goto/16 :goto_2d

    .line 904
    :catch_d
    move-exception v0

    move-wide/from16 v6, v23

    move-object/from16 v9, v25

    move-wide/from16 v4, v33

    goto/16 :goto_2c

    .line 906
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v33    # "start":J
    .restart local v6    # "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catchall_b
    move-exception v0

    move-wide/from16 v33, v6

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-object v8, v0

    move-wide/from16 v6, v23

    move-wide/from16 v4, v33

    .end local v6    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v33    # "start":J
    goto/16 :goto_2d

    .line 904
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v33    # "start":J
    .restart local v6    # "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catch_e
    move-exception v0

    move-wide/from16 v33, v6

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-wide/from16 v6, v23

    move-wide/from16 v4, v33

    .end local v6    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v33    # "start":J
    goto/16 :goto_2c

    .line 906
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v33    # "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    .local v20, "start":J
    :catchall_c
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-object v8, v0

    move-wide/from16 v4, v20

    move-wide/from16 v6, v23

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    goto/16 :goto_2d

    .line 904
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catch_f
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-wide/from16 v4, v20

    move-wide/from16 v6, v23

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    goto/16 :goto_2c

    .line 703
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v23    # "end":J
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v0    # "bndbytes":[B
    .restart local v4    # "gss":[I
    .local v5, "i":I
    .local v6, "end":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .local v12, "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "bl":I
    .restart local v15    # "bcs":[I
    :cond_33
    move-object/from16 v31, v4

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    move-object/from16 v32, v15

    const/16 v8, 0x20

    const/4 v15, 0x1

    .end local v4    # "gss":[I
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .end local v15    # "bcs":[I
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    .restart local v31    # "gss":[I
    .restart local v32    # "bcs":[I
    add-int/lit8 v4, v14, -0x1

    .local v4, "j":I
    :goto_26
    if-ge v4, v5, :cond_35

    .line 714
    nop

    :goto_27
    if-gtz v4, :cond_34

    goto :goto_28

    .line 715
    :cond_34
    add-int/lit8 v4, v4, -0x1

    :try_start_26
    aput v5, v31, v4

    goto :goto_27

    .line 705
    :cond_35
    aget-byte v9, v0, v4

    sub-int v10, v4, v5

    aget-byte v10, v0, v10

    if-ne v9, v10, :cond_36

    .line 707
    add-int/lit8 v9, v4, -0x1

    aput v5, v31, v9

    .line 703
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 701
    .end local v4    # "j":I
    :cond_36
    :goto_28
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v8, v19

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v28

    move-object/from16 v12, v30

    move-object/from16 v4, v31

    move-object/from16 v15, v32

    goto/16 :goto_c

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v5    # "i":I
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "bl":I
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .end local v31    # "gss":[I
    .end local v32    # "bcs":[I
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catchall_d
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-object v8, v0

    move-wide/from16 v4, v20

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    goto/16 :goto_2d

    .line 904
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catch_10
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-wide/from16 v4, v20

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    goto/16 :goto_2c

    .line 696
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v0    # "bndbytes":[B
    .local v4, "i":I
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "bl":I
    .restart local v15    # "bcs":[I
    :cond_37
    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    move-object/from16 v32, v15

    const/4 v5, 0x0

    const/16 v8, 0x20

    const/4 v15, 0x1

    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .end local v15    # "bcs":[I
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v25    # "boundary":Ljava/lang/String;
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    .restart local v32    # "bcs":[I
    aget-byte v9, v0, v4

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v4, 0x1

    aput v10, v32, v9
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_11
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    .line 695
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v8, v19

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v28

    move-object/from16 v12, v30

    move-object/from16 v15, v32

    goto/16 :goto_b

    .line 906
    .end local v0    # "bndbytes":[B
    .end local v4    # "i":I
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "bl":I
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .end local v32    # "bcs":[I
    :catchall_e
    move-exception v0

    move-object v8, v0

    move-wide/from16 v4, v20

    move-object/from16 v9, v25

    goto/16 :goto_2d

    .line 904
    :catch_11
    move-exception v0

    move-wide/from16 v4, v20

    move-object/from16 v9, v25

    goto/16 :goto_2c

    .line 906
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v20    # "start":J
    .end local v25    # "boundary":Ljava/lang/String;
    .local v4, "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catchall_f
    move-exception v0

    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    move-object v8, v0

    .end local v4    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v20    # "start":J
    .restart local v25    # "boundary":Ljava/lang/String;
    goto/16 :goto_2d

    .line 904
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v20    # "start":J
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v4    # "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    :catch_12
    move-exception v0

    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    move-object/from16 v25, v9

    .end local v4    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v9    # "boundary":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v20    # "start":J
    .restart local v25    # "boundary":Ljava/lang/String;
    goto/16 :goto_2c

    .line 641
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v20    # "start":J
    .end local v25    # "boundary":Ljava/lang/String;
    .restart local v4    # "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v9    # "boundary":Ljava/lang/String;
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .local v14, "i":I
    :cond_38
    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    .line 657
    .end local v4    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v20    # "start":J
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    :goto_29
    :try_start_27
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_14
    .catchall {:try_start_27 .. :try_end_27} :catchall_10

    if-lez v0, :cond_3b

    .line 660
    if-nez v30, :cond_39

    .line 663
    :try_start_28
    const-string v0, "line.separator"

    const-string v4, "\n"

    invoke-static {v0, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_28} :catch_13
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_14
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    .line 662
    nop

    .line 664
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .local v0, "lineSeparator":Ljava/lang/String;
    move-object v12, v0

    goto :goto_2a

    .end local v0    # "lineSeparator":Ljava/lang/String;
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 665
    .local v0, "ex":Ljava/lang/SecurityException;
    :try_start_29
    const-string v4, "\n"

    move-object v12, v4

    .end local v30    # "lineSeparator":Ljava/lang/String;
    .local v4, "lineSeparator":Ljava/lang/String;
    goto :goto_2a

    .line 660
    .end local v0    # "ex":Ljava/lang/SecurityException;
    .end local v4    # "lineSeparator":Ljava/lang/String;
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    :cond_39
    move-object/from16 v12, v30

    .line 669
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    :goto_2a
    if-nez v28, :cond_3a

    .line 670
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v10, 0x2

    add-int/2addr v4, v10

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v11, v0

    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .local v0, "preamblesb":Ljava/lang/StringBuffer;
    goto :goto_2b

    .line 669
    .end local v0    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    :cond_3a
    move-object/from16 v11, v28

    .line 671
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    :goto_2b
    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_14
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    move-object/from16 v8, v19

    move-wide/from16 v4, v20

    move-object/from16 v10, v26

    goto/16 :goto_3

    .line 657
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    :cond_3b
    move-object/from16 v8, v19

    move-wide/from16 v4, v20

    move-object/from16 v10, v26

    move-object/from16 v11, v28

    move-object/from16 v12, v30

    goto/16 :goto_3

    .line 906
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v30    # "lineSeparator":Ljava/lang/String;
    :catchall_10
    move-exception v0

    move-object v8, v0

    move-wide/from16 v4, v20

    goto :goto_2d

    .line 904
    :catch_14
    move-exception v0

    move-wide/from16 v4, v20

    goto :goto_2c

    .line 623
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v20    # "start":J
    .local v0, "c":C
    .local v4, "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v14    # "i":I
    :cond_3c
    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    move-object/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    const/4 v5, 0x0

    const/16 v8, 0x20

    const/4 v10, 0x2

    const/4 v15, 0x1

    .line 621
    .end local v0    # "c":C
    .end local v4    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .end local v10    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v11    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v12    # "lineSeparator":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v20    # "start":J
    .restart local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .restart local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .restart local v30    # "lineSeparator":Ljava/lang/String;
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v8, v19

    move-wide/from16 v4, v20

    move-object/from16 v10, v26

    move-object/from16 v11, v28

    move-object/from16 v12, v30

    const/16 v15, 0x20

    goto/16 :goto_4

    .line 906
    .end local v13    # "line":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v20    # "start":J
    .end local v26    # "lin":Lcom/sun/mail/util/LineInputStream;
    .end local v28    # "preamblesb":Ljava/lang/StringBuffer;
    .end local v30    # "lineSeparator":Ljava/lang/String;
    .restart local v4    # "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    :catchall_11
    move-exception v0

    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    move-object v8, v0

    .end local v4    # "start":J
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v20    # "start":J
    goto :goto_2d

    .line 904
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    .end local v20    # "start":J
    .restart local v4    # "start":J
    .restart local v8    # "cType":Ljavax/mail/internet/ContentType;
    :catch_15
    move-exception v0

    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    .line 905
    .end local v8    # "cType":Ljavax/mail/internet/ContentType;
    .local v0, "ioex":Ljava/io/IOException;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    :goto_2c
    :try_start_2a
    new-instance v8, Ljavax/mail/MessagingException;

    const-string v10, "IO Error"

    invoke-direct {v8, v10, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    throw v8
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    .line 906
    .end local v0    # "ioex":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v9    # "boundary":Ljava/lang/String;
    .restart local v19    # "cType":Ljavax/mail/internet/ContentType;
    :catchall_12
    move-exception v0

    move-object v8, v0

    .line 908
    :goto_2d
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_16
    .catchall {:try_start_2b .. :try_end_2b} :catchall_13

    .line 909
    :goto_2e
    goto :goto_2f

    :catch_16
    move-exception v0

    goto :goto_2e

    .line 912
    :goto_2f
    :try_start_2c
    throw v8

    .line 590
    .end local v9    # "boundary":Ljava/lang/String;
    .end local v19    # "cType":Ljavax/mail/internet/ContentType;
    :catch_17
    move-exception v0

    move-wide/from16 v20, v4

    .line 591
    .end local v4    # "start":J
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v20    # "start":J
    :goto_30
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "No inputstream from datasource"

    invoke-direct {v4, v5, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    .line 574
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "sin":Ljavax/mail/internet/SharedInputStream;
    .end local v6    # "end":J
    .end local v20    # "start":J
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeBodyPart(I)V
    .locals 0
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

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

    .line 385
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 386
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .locals 0
    .param p1, "preamble"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 490
    :try_start_0
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    .line 489
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "preamble":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 323
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

    .line 322
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    .end local p1    # "subtype":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized updateHeaders()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 513
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 516
    .end local v0    # "i":I
    monitor-exit p0

    return-void

    .line 515
    .restart local v0    # "i":I
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

    .line 512
    .end local v0    # "i":I
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 524
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "boundary":Ljava/lang/String;
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 531
    .local v1, "los":Lcom/sun/mail/util/LineOutputStream;
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    invoke-static {v2}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 533
    .local v2, "pb":[B
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    .line 535
    array-length v3, v2

    if-lez v3, :cond_0

    .line 536
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 537
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 542
    .end local v2    # "pb":[B
    .end local p0    # "this":Ljavax/mail/internet/MimeMultipart;
    :cond_0
    iget-object v2, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 543
    iget-boolean v2, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    if-eqz v2, :cond_1

    .line 545
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 547
    goto :goto_1

    .line 548
    :cond_1
    new-instance v2, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Empty multipart: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 551
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 559
    .end local v2    # "i":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    .line 552
    .restart local v2    # "i":I
    :cond_3
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 554
    invoke-virtual {v1}, Lcom/sun/mail/util/LineOutputStream;->writeln()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "los":Lcom/sun/mail/util/LineOutputStream;
    .end local v2    # "i":I
    .end local p1    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
