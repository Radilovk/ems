.class public Ljavax/mail/internet/MimeBodyPart;
.super Ljavax/mail/BodyPart;
.source "MimeBodyPart.java"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;,
        Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
    }
.end annotation


# static fields
.field static final cacheMultipart:Z

.field private static final decodeFileName:Z

.field private static final encodeFileName:Z

.field private static final ignoreMultipartEncoding:Z

.field private static final setContentTypeFileName:Z

.field private static final setDefaultTextCharset:Z


# instance fields
.field protected cachedContent:Ljava/lang/Object;

.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected headers:Ljavax/mail/internet/InternetHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    const-string v0, "mail.mime.setdefaulttextcharset"

    .line 86
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    .line 91
    const-string v0, "mail.mime.setcontenttypefilename"

    .line 90
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    .line 94
    const-string v0, "mail.mime.encodefilename"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    .line 96
    const-string v0, "mail.mime.decodefilename"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 95
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    .line 99
    const-string v0, "mail.mime.ignoremultipartencoding"

    .line 98
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->ignoreMultipartEncoding:Z

    .line 104
    const-string v0, "mail.mime.cachemultipart"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 155
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 175
    instance-of v3, p1, Ljava/io/ByteArrayInputStream;

    if-nez v3, :cond_0

    .line 176
    instance-of v3, p1, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_0

    .line 177
    instance-of v3, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v3, :cond_0

    .line 178
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    move-object p1, v1

    .line 180
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v3, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v3, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 182
    instance-of v3, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 183
    check-cast v2, Ljavax/mail/internet/SharedInputStream;

    .line 184
    .local v2, "sis":Ljavax/mail/internet/SharedInputStream;
    invoke-interface {v2}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-interface {v2, v4, v5, v6, v7}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    .line 193
    .end local v2    # "sis":Ljavax/mail/internet/SharedInputStream;
    :goto_0
    return-void

    .line 187
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ioex":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Error reading input stream"

    invoke-direct {v3, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public constructor <init>(Ljavax/mail/internet/InternetHeaders;[B)V
    .locals 0
    .param p1, "headers"    # Ljavax/mail/internet/InternetHeaders;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 208
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 209
    iput-object p2, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    .line 210
    return-void
.end method

.method static getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;
    .locals 7
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1313
    const-string v6, "Content-Language"

    invoke-interface {p0, v6, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1315
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return-object v1

    .line 1319
    :cond_1
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v6, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, v2, v6}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1326
    .local v5, "v":Ljava/util/Vector;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 1327
    .local v3, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    .line 1328
    .local v4, "tkType":I
    const/4 v6, -0x4

    if-ne v4, v6, :cond_3

    .line 1336
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1339
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .line 1340
    .local v1, "language":[Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_0

    .line 1330
    .end local v1    # "language":[Ljava/lang/String;
    :cond_3
    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    .line 1331
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 4
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1206
    const-string v3, "Content-Description"

    invoke-interface {p0, v3, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1208
    .local v1, "rawvalue":Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1214
    .end local v1    # "rawvalue":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1212
    .restart local v1    # "rawvalue":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method static getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 4
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1175
    const-string v3, "Content-Disposition"

    invoke-interface {p0, v3, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1177
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1181
    :goto_0
    return-object v2

    .line 1180
    :cond_0
    new-instance v0, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v0, "cd":Ljavax/mail/internet/ContentDisposition;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentDisposition;->getDisposition()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 7
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1362
    const-string v6, "Content-Transfer-Encoding"

    invoke-interface {p0, v6, v5}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1364
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v2, v1

    .line 1392
    .end local v1    # "s":Ljava/lang/String;
    .local v2, "s":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1367
    .end local v2    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1370
    const-string v5, "7bit"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "8bit"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1371
    const-string v5, "quoted-printable"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1372
    const-string v5, "binary"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1373
    const-string v5, "base64"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v2, v1

    .end local v1    # "s":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    move-object v5, v1

    .line 1374
    goto :goto_0

    .line 1377
    .end local v2    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v5, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, v1, v5}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    .local v0, "h":Ljavax/mail/internet/HeaderTokenizer;
    :cond_3
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v3

    .line 1384
    .local v3, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v4

    .line 1385
    .local v4, "tkType":I
    const/4 v5, -0x4

    if-ne v4, v5, :cond_4

    move-object v2, v1

    .end local v1    # "s":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    move-object v5, v1

    .line 1392
    goto :goto_0

    .line 1387
    .end local v2    # "s":Ljava/lang/String;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_4
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 1388
    invoke-virtual {v3}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v2, v1

    .end local v1    # "s":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method static getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 7
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1235
    const/4 v3, 0x0

    .line 1236
    .local v3, "filename":Ljava/lang/String;
    const-string v5, "Content-Disposition"

    invoke-interface {p0, v5, v6}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1238
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1240
    new-instance v0, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v0, v4}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v0, "cd":Ljavax/mail/internet/ContentDisposition;
    const-string v5, "filename"

    invoke-virtual {v0, v5}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1243
    .end local v0    # "cd":Ljavax/mail/internet/ContentDisposition;
    :cond_0
    if-nez v3, :cond_1

    .line 1245
    const-string v5, "Content-Type"

    invoke-interface {p0, v5, v6}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1246
    invoke-static {p0, v4}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1247
    if-eqz v4, :cond_1

    .line 1249
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, v4}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1250
    .local v1, "ct":Ljavax/mail/internet/ContentType;
    const-string v5, "name"

    invoke-virtual {v1, v5}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1254
    .end local v1    # "ct":Ljavax/mail/internet/ContentType;
    :cond_1
    :goto_0
    sget-boolean v5, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 1256
    :try_start_1
    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1261
    :cond_2
    return-object v3

    .line 1257
    :catch_0
    move-exception v2

    .line 1258
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "Can\'t decode filename"

    invoke-direct {v5, v6, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 1251
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method static invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
    .locals 1
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1577
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1578
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1579
    return-void
.end method

.method static isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z
    .locals 3
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1154
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1157
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    :goto_0
    return v2

    .line 1156
    :catch_0
    move-exception v1

    .line 1157
    .local v1, "ex":Ljavax/mail/internet/ParseException;
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method static restrictEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1407
    sget-boolean v3, Ljavax/mail/internet/MimeBodyPart;->ignoreMultipartEncoding:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 1435
    .end local p1    # "encoding":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1410
    .restart local p1    # "encoding":Ljava/lang/String;
    :cond_1
    const-string v3, "7bit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1411
    const-string v3, "8bit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1412
    const-string v3, "binary"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1415
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1416
    .local v1, "type":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1425
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1426
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const-string v3, "multipart/*"

    invoke-virtual {v0, v3}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p1, v2

    .line 1427
    goto :goto_0

    .line 1428
    :cond_2
    const-string v3, "message/*"

    invoke-virtual {v0, v3}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1430
    const-string v3, "mail.mime.allowencodedmessages"

    const/4 v4, 0x0

    .line 1429
    invoke-static {v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1430
    if-nez v3, :cond_0

    move-object p1, v2

    .line 1431
    goto :goto_0

    .line 1432
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V
    .locals 5
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "languages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1346
    new-instance v2, Ljava/lang/StringBuffer;

    aget-object v3, p1, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1347
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v3, "Content-Language"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 1348
    .local v1, "len":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 1358
    const-string v3, "Content-Language"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    return-void

    .line 1349
    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1350
    add-int/lit8 v1, v1, 0x1

    .line 1351
    const/16 v3, 0x4c

    if-le v1, v3, :cond_1

    .line 1352
    const-string v3, "\r\n\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1353
    const/16 v1, 0x8

    .line 1355
    :cond_1
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1356
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 1348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1221
    if-nez p1, :cond_0

    .line 1222
    const-string v1, "Content-Description"

    invoke-interface {p0, v1}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1232
    :goto_0
    return-void

    .line 1227
    :cond_0
    :try_start_0
    const-string v1, "Content-Description"

    const/16 v2, 0x15

    .line 1228
    const/4 v3, 0x0

    invoke-static {p1, p2, v3}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1227
    invoke-static {v2, v3}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "uex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Encoding error"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 4
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1186
    if-nez p1, :cond_0

    .line 1187
    const-string v2, "Content-Disposition"

    invoke-interface {p0, v2}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1202
    :goto_0
    return-void

    .line 1189
    :cond_0
    const-string v2, "Content-Disposition"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1196
    new-instance v0, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v0, "cd":Ljavax/mail/internet/ContentDisposition;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentDisposition;->setDisposition(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v0}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1200
    .end local v0    # "cd":Ljavax/mail/internet/ContentDisposition;
    :cond_1
    const-string v2, "Content-Disposition"

    invoke-interface {p0, v2, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 1
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1397
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    return-void
.end method

.method static setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 10
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1266
    sget-boolean v7, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    if-eqz v7, :cond_0

    if-eqz p1, :cond_0

    .line 1268
    :try_start_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1275
    :cond_0
    const-string v7, "Content-Disposition"

    invoke-interface {p0, v7, v9}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1277
    .local v6, "s":Ljava/lang/String;
    new-instance v1, Ljavax/mail/internet/ContentDisposition;

    if-nez v6, :cond_4

    const-string v7, "attachment"

    :goto_0
    invoke-direct {v1, v7}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v1, "cd":Ljavax/mail/internet/ContentDisposition;
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object v2

    .line 1280
    .local v2, "charset":Ljava/lang/String;
    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->getParameterList()Ljavax/mail/internet/ParameterList;

    move-result-object v4

    .line 1281
    .local v4, "p":Ljavax/mail/internet/ParameterList;
    if-nez v4, :cond_1

    .line 1282
    new-instance v4, Ljavax/mail/internet/ParameterList;

    .end local v4    # "p":Ljavax/mail/internet/ParameterList;
    invoke-direct {v4}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 1283
    .restart local v4    # "p":Ljavax/mail/internet/ParameterList;
    invoke-virtual {v1, v4}, Ljavax/mail/internet/ContentDisposition;->setParameterList(Ljavax/mail/internet/ParameterList;)V

    .line 1285
    :cond_1
    const-string v7, "filename"

    invoke-virtual {v4, v7, p1, v2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string v7, "Content-Disposition"

    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v7, v8}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    sget-boolean v7, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    if-eqz v7, :cond_3

    .line 1293
    const-string v7, "Content-Type"

    invoke-interface {p0, v7, v9}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1294
    invoke-static {p0, v6}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1295
    if-eqz v6, :cond_3

    .line 1297
    :try_start_1
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1299
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->getParameterList()Ljavax/mail/internet/ParameterList;

    move-result-object v4

    .line 1300
    if-nez v4, :cond_2

    .line 1301
    new-instance v5, Ljavax/mail/internet/ParameterList;

    invoke-direct {v5}, Ljavax/mail/internet/ParameterList;-><init>()V
    :try_end_1
    .catch Ljavax/mail/internet/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1302
    .end local v4    # "p":Ljavax/mail/internet/ParameterList;
    .local v5, "p":Ljavax/mail/internet/ParameterList;
    :try_start_2
    invoke-virtual {v0, v5}, Ljavax/mail/internet/ContentType;->setParameterList(Ljavax/mail/internet/ParameterList;)V
    :try_end_2
    .catch Ljavax/mail/internet/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .line 1304
    .end local v5    # "p":Ljavax/mail/internet/ParameterList;
    .restart local v4    # "p":Ljavax/mail/internet/ParameterList;
    :cond_2
    :try_start_3
    const-string v7, "name"

    invoke-virtual {v4, v7, p1, v2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const-string v7, "Content-Type"

    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v7, v8}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljavax/mail/internet/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1309
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    :cond_3
    :goto_1
    return-void

    .line 1269
    .end local v1    # "cd":Ljavax/mail/internet/ContentDisposition;
    .end local v2    # "charset":Ljava/lang/String;
    .end local v4    # "p":Ljavax/mail/internet/ParameterList;
    .end local v6    # "s":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1270
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljavax/mail/MessagingException;

    const-string v8, "Can\'t encode filename"

    invoke-direct {v7, v8, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "s":Ljava/lang/String;
    :cond_4
    move-object v7, v6

    .line 1277
    goto :goto_0

    .line 1306
    .restart local v1    # "cd":Ljavax/mail/internet/ContentDisposition;
    .restart local v2    # "charset":Ljava/lang/String;
    .restart local v4    # "p":Ljavax/mail/internet/ParameterList;
    :catch_1
    move-exception v7

    goto :goto_1

    .end local v4    # "p":Ljavax/mail/internet/ParameterList;
    .restart local v0    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v5    # "p":Ljavax/mail/internet/ParameterList;
    :catch_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "p":Ljavax/mail/internet/ParameterList;
    .restart local v4    # "p":Ljavax/mail/internet/ParameterList;
    goto :goto_1
.end method

.method static setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1163
    if-nez p2, :cond_0

    .line 1164
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1165
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p2

    .line 1170
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1171
    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-static {p2, v1}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-interface {p0, p1, v0}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1172
    return-void

    .line 1167
    :cond_1
    const-string/jumbo p2, "us-ascii"

    goto :goto_0
.end method

.method static updateHeaders(Ljavax/mail/internet/MimePart;)V
    .locals 23
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1439
    invoke-interface/range {p0 .. p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v7

    .line 1440
    .local v7, "dh":Ljavax/activation/DataHandler;
    if-nez v7, :cond_1

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    :try_start_0
    invoke-virtual {v7}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v19

    .line 1445
    .local v19, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1446
    .local v6, "composite":Z
    const-string v20, "Content-Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_4

    const/4 v15, 0x1

    .line 1448
    .local v15, "needCTHeader":Z
    :goto_1
    new-instance v3, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v3, "cType":Ljavax/mail/internet/ContentType;
    const-string v20, "multipart/*"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1458
    const/4 v6, 0x1

    .line 1460
    move-object/from16 v0, p0

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 1461
    move-object/from16 v0, p0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    move-object v11, v0

    .line 1462
    .local v11, "mbp":Ljavax/mail/internet/MimeBodyPart;
    iget-object v0, v11, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 1463
    iget-object v0, v11, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 1470
    .end local v11    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    .local v16, "o":Ljava/lang/Object;
    :goto_2
    move-object/from16 v0, v16

    instance-of v0, v0, Ljavax/mail/internet/MimeMultipart;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 1471
    check-cast v16, Ljavax/mail/internet/MimeMultipart;

    .end local v16    # "o":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeMultipart;->updateHeaders()V

    .line 1490
    :cond_2
    :goto_3
    instance-of v0, v7, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 1491
    move-object v0, v7

    check-cast v0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    move-object v12, v0

    .line 1492
    .local v12, "mdh":Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
    invoke-virtual {v12}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->getPart()Ljavax/mail/internet/MimePart;

    move-result-object v13

    .line 1493
    .local v13, "mpart":Ljavax/mail/internet/MimePart;
    move-object/from16 v0, p0

    if-eq v13, v0, :cond_0

    .line 1494
    if-eqz v15, :cond_3

    .line 1495
    const-string v20, "Content-Type"

    invoke-interface {v13}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :cond_3
    invoke-interface {v13}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v8

    .line 1501
    .local v8, "enc":Ljava/lang/String;
    if-eqz v8, :cond_b

    .line 1502
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1570
    .end local v3    # "cType":Ljavax/mail/internet/ContentType;
    .end local v6    # "composite":Z
    .end local v8    # "enc":Ljava/lang/String;
    .end local v12    # "mdh":Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
    .end local v13    # "mpart":Ljavax/mail/internet/MimePart;
    .end local v15    # "needCTHeader":Z
    .end local v19    # "type":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1571
    .local v9, "ex":Ljava/io/IOException;
    new-instance v20, Ljavax/mail/MessagingException;

    const-string v21, "IOException updating headers"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v20

    .line 1446
    .end local v9    # "ex":Ljava/io/IOException;
    .restart local v6    # "composite":Z
    .restart local v19    # "type":Ljava/lang/String;
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 1463
    .restart local v3    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v11    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    .restart local v15    # "needCTHeader":Z
    :cond_5
    :try_start_1
    invoke-virtual {v7}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v16

    goto :goto_2

    .line 1464
    .end local v11    # "mbp":Ljavax/mail/internet/MimeBodyPart;
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Ljavax/mail/internet/MimeMessage;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 1465
    move-object/from16 v0, p0

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    move-object v14, v0

    .line 1466
    .local v14, "msg":Ljavax/mail/internet/MimeMessage;
    iget-object v0, v14, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 1467
    iget-object v0, v14, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 1468
    .restart local v16    # "o":Ljava/lang/Object;
    :goto_4
    goto :goto_2

    .line 1467
    .end local v16    # "o":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v7}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v16

    goto :goto_4

    .line 1469
    .end local v14    # "msg":Ljavax/mail/internet/MimeMessage;
    :cond_8
    invoke-virtual {v7}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v16

    .restart local v16    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 1473
    :cond_9
    new-instance v20, Ljavax/mail/MessagingException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "MIME part of type \""

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1474
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\" contains object of type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 1475
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " instead of MimeMultipart"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1473
    invoke-direct/range {v20 .. v21}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1476
    .end local v16    # "o":Ljava/lang/Object;
    :cond_a
    const-string v20, "message/rfc822"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1477
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 1511
    :cond_b
    if-nez v6, :cond_d

    .line 1512
    const-string v20, "Content-Transfer-Encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_c

    .line 1513
    invoke-static {v7}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 1515
    :cond_c
    if-eqz v15, :cond_d

    sget-boolean v20, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    if-eqz v20, :cond_d

    .line 1516
    const-string v20, "text/*"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1517
    const-string v20, "charset"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_d

    .line 1529
    invoke-interface/range {p0 .. p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v8

    .line 1530
    .restart local v8    # "enc":Ljava/lang/String;
    if-eqz v8, :cond_10

    const-string v20, "7bit"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1531
    const-string/jumbo v5, "us-ascii"

    .line 1534
    .local v5, "charset":Ljava/lang/String;
    :goto_5
    const-string v20, "charset"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v5}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    invoke-virtual {v3}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1542
    .end local v5    # "charset":Ljava/lang/String;
    .end local v8    # "enc":Ljava/lang/String;
    :cond_d
    if-eqz v15, :cond_0

    .line 1549
    sget-boolean v20, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    if-eqz v20, :cond_f

    .line 1550
    const-string v20, "Content-Disposition"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1551
    .local v18, "s":Ljava/lang/String;
    if-eqz v18, :cond_f

    .line 1553
    new-instance v4, Ljavax/mail/internet/ContentDisposition;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v4, "cd":Ljavax/mail/internet/ContentDisposition;
    const-string v20, "filename"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1555
    .local v10, "filename":Ljava/lang/String;
    if-eqz v10, :cond_f

    .line 1556
    invoke-virtual {v3}, Ljavax/mail/internet/ContentType;->getParameterList()Ljavax/mail/internet/ParameterList;

    move-result-object v17

    .line 1557
    .local v17, "p":Ljavax/mail/internet/ParameterList;
    if-nez v17, :cond_e

    .line 1558
    new-instance v17, Ljavax/mail/internet/ParameterList;

    .end local v17    # "p":Ljavax/mail/internet/ParameterList;
    invoke-direct/range {v17 .. v17}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 1559
    .restart local v17    # "p":Ljavax/mail/internet/ParameterList;
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljavax/mail/internet/ContentType;->setParameterList(Ljavax/mail/internet/ParameterList;)V

    .line 1561
    :cond_e
    const-string v20, "name"

    .line 1562
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object v21

    .line 1561
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v10, v2}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v3}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1568
    .end local v4    # "cd":Ljavax/mail/internet/ContentDisposition;
    .end local v10    # "filename":Ljava/lang/String;
    .end local v17    # "p":Ljavax/mail/internet/ParameterList;
    .end local v18    # "s":Ljava/lang/String;
    :cond_f
    const-string v20, "Content-Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1533
    .restart local v8    # "enc":Ljava/lang/String;
    :cond_10
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .restart local v5    # "charset":Ljava/lang/String;
    goto :goto_5
.end method

.method static writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 10
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "ignoreList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1585
    const/4 v6, 0x0

    .line 1586
    .local v6, "los":Lcom/sun/mail/util/LineOutputStream;
    instance-of v9, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v9, :cond_2

    move-object v6, p1

    .line 1587
    check-cast v6, Lcom/sun/mail/util/LineOutputStream;

    .line 1593
    :goto_0
    invoke-interface {p0, p2}, Ljavax/mail/internet/MimePart;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 1594
    .local v3, "hdrLines":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1598
    invoke-virtual {v6}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 1602
    const/4 v4, 0x0

    .line 1603
    .local v4, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 1611
    .local v1, "buf":[B
    :try_start_0
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    .line 1612
    .local v2, "dh":Ljavax/activation/DataHandler;
    instance-of v9, v2, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    if-eqz v9, :cond_0

    .line 1613
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    move-object v8, v0

    .line 1614
    .local v8, "mpdh":Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
    invoke-virtual {v8}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->getPart()Ljavax/mail/internet/MimePart;

    move-result-object v7

    .line 1615
    .local v7, "mpart":Ljavax/mail/internet/MimePart;
    invoke-interface {v7}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1616
    invoke-virtual {v8}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->getContentStream()Ljava/io/InputStream;

    move-result-object v4

    .line 1618
    .end local v7    # "mpart":Ljavax/mail/internet/MimePart;
    .end local v8    # "mpdh":Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
    :cond_0
    if-eqz v4, :cond_6

    .line 1620
    const/16 v9, 0x2000

    new-array v1, v9, [B

    .line 1622
    :goto_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .local v5, "len":I
    if-gtz v5, :cond_4

    .line 1630
    .end local v5    # "len":I
    :goto_3
    if-eqz v4, :cond_1

    .line 1631
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1632
    :cond_1
    const/4 v1, 0x0

    .line 1634
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1635
    return-void

    .line 1589
    .end local v1    # "buf":[B
    .end local v2    # "dh":Ljavax/activation/DataHandler;
    .end local v3    # "hdrLines":Ljava/util/Enumeration;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_2
    new-instance v6, Lcom/sun/mail/util/LineOutputStream;

    .end local v6    # "los":Lcom/sun/mail/util/LineOutputStream;
    invoke-direct {v6, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v6    # "los":Lcom/sun/mail/util/LineOutputStream;
    goto :goto_0

    .line 1595
    .restart local v3    # "hdrLines":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_1

    .line 1623
    .restart local v1    # "buf":[B
    .restart local v2    # "dh":Ljavax/activation/DataHandler;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "len":I
    :cond_4
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p1, v1, v9, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1629
    .end local v2    # "dh":Ljavax/activation/DataHandler;
    .end local v5    # "len":I
    :catchall_0
    move-exception v9

    .line 1630
    if-eqz v4, :cond_5

    .line 1631
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 1632
    :cond_5
    const/4 v1, 0x0

    .line 1633
    throw v9

    .line 1626
    .restart local v2    # "dh":Ljavax/activation/DataHandler;
    :cond_6
    :try_start_2
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Ljavax/mail/internet/MimeBodyPart;->restrictEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1625
    invoke-static {p1, v9}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    .line 1627
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1022
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    return-void
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1062
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    .line 1063
    return-void
.end method

.method public attachFile(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 807
    new-instance v0, Ljavax/activation/FileDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 808
    .local v0, "fds":Ljavax/activation/FileDataSource;
    new-instance v1, Ljavax/activation/DataHandler;

    invoke-direct {v1, v0}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 809
    invoke-virtual {v0}, Ljavax/activation/FileDataSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 810
    const-string v1, "attachment"

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public attachFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 849
    new-instance v0, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;

    invoke-direct {v0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .local v0, "fds":Ljavax/activation/DataSource;
    new-instance v1, Ljavax/activation/DataHandler;

    invoke-direct {v1, v0}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 851
    invoke-interface {v0}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 852
    const-string v1, "attachment"

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public attachFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 826
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 827
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->attachFile(Ljava/io/File;)V

    .line 828
    return-void
.end method

.method public attachFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 874
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->attachFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1071
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 654
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 674
    :cond_0
    :goto_0
    return-object v0

    .line 657
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/mail/util/FolderClosedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/mail/util/MessageRemovedIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 663
    .local v0, "c":Ljava/lang/Object;
    sget-boolean v3, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v3, :cond_0

    .line 664
    instance-of v3, v0, Ljavax/mail/Multipart;

    if-nez v3, :cond_2

    instance-of v3, v0, Ljavax/mail/Message;

    if-eqz v3, :cond_0

    .line 665
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-nez v3, :cond_3

    iget-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 666
    :cond_3
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 671
    instance-of v3, v0, Ljavax/mail/internet/MimeMultipart;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 672
    check-cast v3, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v3}, Ljavax/mail/internet/MimeMultipart;->parse()V

    goto :goto_0

    .line 658
    .end local v0    # "c":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 659
    .local v1, "fex":Lcom/sun/mail/util/FolderClosedIOException;
    new-instance v3, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/util/FolderClosedIOException;->getFolder()Ljavax/mail/Folder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sun/mail/util/FolderClosedIOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v3

    .line 660
    .end local v1    # "fex":Lcom/sun/mail/util/FolderClosedIOException;
    :catch_1
    move-exception v2

    .line 661
    .local v2, "mex":Lcom/sun/mail/util/MessageRemovedIOException;
    new-instance v3, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v2}, Lcom/sun/mail/util/MessageRemovedIOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getContentID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 357
    const-string v0, "Content-Id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 389
    const-string v0, "Content-MD5"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 589
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    .line 592
    :goto_0
    return-object v0

    .line 591
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_1

    .line 592
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 594
    :cond_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No MimeBodyPart content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 273
    const-string v1, "Content-Type"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "s":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-nez v0, :cond_0

    .line 276
    const-string v0, "text/plain"

    .line 277
    :cond_0
    return-object v0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    .line 627
    new-instance v0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    invoke-direct {v0, p0}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;-><init>(Ljavax/mail/internet/MimePart;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 628
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 974
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, -0x1

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1081
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1046
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1091
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1055
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    array-length v0, v1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 233
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 236
    .local v0, "size":I
    if-gtz v0, :cond_0

    .line 242
    .end local v0    # "size":I
    :cond_2
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1029
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    .line 1030
    return-void
.end method

.method public saveFile(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 914
    const/4 v3, 0x0

    .line 915
    .local v3, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 917
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 918
    .end local v3    # "out":Ljava/io/OutputStream;
    .local v4, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 919
    const/16 v5, 0x2000

    new-array v0, v5, [B

    .line 921
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .local v2, "len":I
    if-gtz v2, :cond_2

    .line 926
    if-eqz v1, :cond_0

    .line 927
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 930
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 931
    :try_start_3
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 934
    :cond_1
    :goto_2
    return-void

    .line 922
    :cond_2
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v4, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 923
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    :catchall_0
    move-exception v5

    move-object v3, v4

    .line 926
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :goto_3
    if-eqz v1, :cond_3

    .line 927
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 930
    :cond_3
    :goto_4
    if-eqz v3, :cond_4

    .line 931
    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 933
    :cond_4
    :goto_5
    throw v5

    .line 928
    :catch_0
    move-exception v6

    goto :goto_4

    .line 932
    :catch_1
    move-exception v6

    goto :goto_5

    .line 928
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v5

    goto :goto_1

    .line 932
    :catch_3
    move-exception v5

    goto :goto_2

    .line 923
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    goto :goto_3
.end method

.method public saveFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 946
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 947
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->saveFile(Ljava/io/File;)V

    .line 948
    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 714
    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_0

    .line 715
    check-cast p1, Ljavax/mail/Multipart;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 719
    :goto_0
    return-void

    .line 717
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    goto :goto_0
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .param p1, "mp"    # Ljavax/mail/Multipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 789
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 790
    invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    .line 791
    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 375
    const-string v0, "Content-ID"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->removeHeader(Ljava/lang/String;)V

    .line 378
    :goto_0
    return-void

    .line 377
    :cond_0
    const-string v0, "Content-ID"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .locals 0
    .param p1, "languages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 1
    .param p1, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 401
    const-string v0, "Content-MD5"

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 1
    .param p1, "dh"    # Ljavax/activation/DataHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 689
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 691
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V

    .line 692
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 0
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1007
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 741
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 757
    const-string v0, "plain"

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 775
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method protected updateHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1125
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V

    .line 1132
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1133
    new-instance v0, Ljavax/activation/DataHandler;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 1134
    iput-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 1135
    iput-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    .line 1136
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1138
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    :cond_0
    :goto_0
    iput-object v3, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    .line 1143
    :cond_1
    return-void

    .line 1139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 961
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 962
    return-void
.end method
