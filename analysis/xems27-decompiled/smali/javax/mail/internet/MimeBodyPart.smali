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

    .line 87
    nop

    .line 86
    const-string v0, "mail.mime.setdefaulttextcharset"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    .line 91
    nop

    .line 90
    const-string v0, "mail.mime.setcontenttypefilename"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    .line 94
    const-string v0, "mail.mime.encodefilename"

    const/4 v2, 0x0

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
    nop

    .line 98
    const-string v0, "mail.mime.ignoremultipartencoding"

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
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 175
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_0

    .line 176
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 177
    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 180
    :cond_0
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 182
    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_1

    .line 183
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    .line 184
    .local v0, "sis":Ljavax/mail/internet/SharedInputStream;
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    .line 185
    .end local v0    # "sis":Ljavax/mail/internet/SharedInputStream;
    goto :goto_0

    .line 187
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    nop

    .line 193
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ioex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Error reading input stream"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
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

    .line 1313
    const-string v0, "Content-Language"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1315
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1316
    return-object v1

    .line 1319
    :cond_0
    new-instance v2, Ljavax/mail/internet/HeaderTokenizer;

    const-string v3, "()<>@,;:\\\"\t []/?="

    invoke-direct {v2, v0, v3}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    .local v2, "h":Ljavax/mail/internet/HeaderTokenizer;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1326
    .local v3, "v":Ljava/util/Vector;
    :goto_0
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v4

    .line 1327
    .local v4, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v4}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v5

    .line 1328
    .local v5, "tkType":I
    const/4 v6, -0x4

    if-ne v5, v6, :cond_2

    .line 1329
    nop

    .line 1336
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1337
    return-object v1

    .line 1339
    :cond_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 1340
    .local v1, "language":[Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1341
    return-object v1

    .line 1330
    .end local v1    # "language":[Ljava/lang/String;
    :cond_2
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 1331
    invoke-virtual {v4}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1325
    .end local v4    # "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    .end local v5    # "tkType":I
    goto :goto_0

    .line 1330
    .restart local v4    # "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    .restart local v5    # "tkType":I
    :cond_3
    goto :goto_0
.end method

.method static getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 2
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1206
    const-string v0, "Content-Description"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    .local v0, "rawvalue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1209
    return-object v1

    .line 1212
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1213
    :catch_0
    move-exception v1

    .line 1214
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    return-object v0
.end method

.method static getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 3
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1175
    const-string v0, "Content-Disposition"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1178
    return-object v1

    .line 1180
    :cond_0
    new-instance v1, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v1, "cd":Ljavax/mail/internet/ContentDisposition;
    invoke-virtual {v1}, Ljavax/mail/internet/ContentDisposition;->getDisposition()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 5
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1362
    const-string v0, "Content-Transfer-Encoding"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1365
    return-object v1

    .line 1367
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1370
    const-string v1, "7bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "8bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1371
    const-string v1, "quoted-printable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1372
    const-string v1, "binary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1373
    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1377
    :cond_1
    new-instance v1, Ljavax/mail/internet/HeaderTokenizer;

    const-string v2, "()<>@,;:\\\"\t []/?="

    invoke-direct {v1, v0, v2}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    .local v1, "h":Ljavax/mail/internet/HeaderTokenizer;
    :cond_2
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 1384
    .local v2, "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    .line 1385
    .local v3, "tkType":I
    const/4 v4, -0x4

    if-ne v3, v4, :cond_3

    .line 1386
    nop

    .line 1392
    return-object v0

    .line 1387
    :cond_3
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1388
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1374
    .end local v1    # "h":Ljavax/mail/internet/HeaderTokenizer;
    .end local v2    # "tk":Ljavax/mail/internet/HeaderTokenizer$Token;
    .end local v3    # "tkType":I
    :cond_4
    :goto_0
    return-object v0
.end method

.method static getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 5
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1235
    const/4 v0, 0x0

    .line 1236
    .local v0, "filename":Ljava/lang/String;
    const-string v1, "Content-Disposition"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1240
    new-instance v3, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v3, v1}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v3, "cd":Ljavax/mail/internet/ContentDisposition;
    const-string v4, "filename"

    invoke-virtual {v3, v4}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1243
    .end local v3    # "cd":Ljavax/mail/internet/ContentDisposition;
    :cond_0
    if-nez v0, :cond_1

    .line 1245
    const-string v3, "Content-Type"

    invoke-interface {p0, v3, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1246
    invoke-static {p0, v1}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1247
    if-eqz v1, :cond_1

    .line 1249
    :try_start_0
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-direct {v2, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1250
    .local v2, "ct":Ljavax/mail/internet/ContentType;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 1251
    .end local v2    # "ct":Ljavax/mail/internet/ContentType;
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 1254
    :cond_1
    :goto_1
    sget-boolean v2, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1256
    :try_start_1
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 1257
    goto :goto_2

    :catch_1
    move-exception v2

    .line 1258
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Can\'t decode filename"

    invoke-direct {v3, v4, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1261
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :goto_2
    return-object v0
.end method

.method static invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
    .locals 1
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

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
    .locals 2
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1154
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v0, "ct":Ljavax/mail/internet/ContentType;
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1156
    .end local v0    # "ct":Ljavax/mail/internet/ContentType;
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "ex":Ljavax/mail/internet/ParseException;
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
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

    .line 1407
    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->ignoreMultipartEncoding:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1410
    :cond_0
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1411
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1412
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1415
    :cond_1
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1416
    .local v0, "type":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1417
    return-object p1

    .line 1425
    :cond_2
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1426
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const-string v2, "multipart/*"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 1427
    return-object v3

    .line 1428
    :cond_3
    const-string v2, "message/*"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1430
    const-string v2, "mail.mime.allowencodedmessages"

    const/4 v4, 0x0

    .line 1429
    invoke-static {v2, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    if-nez v2, :cond_4

    .line 1431
    return-object v3

    .line 1432
    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    :catch_0
    move-exception v1

    .line 1435
    :cond_4
    return-object p1

    .line 1413
    .end local v0    # "type":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object p1

    .line 1408
    :cond_6
    :goto_1
    return-object p1
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

    .line 1346
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1347
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v2, "Content-Language"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    .line 1348
    .local v3, "len":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    .line 1358
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    return-void

    .line 1349
    .restart local v1    # "i":I
    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1350
    add-int/lit8 v3, v3, 0x1

    .line 1351
    const/16 v4, 0x4c

    if-le v3, v4, :cond_1

    .line 1352
    const-string v4, "\r\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1353
    const/16 v3, 0x8

    .line 1355
    :cond_1
    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1356
    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 1348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1221
    const-string v0, "Content-Description"

    if-nez p1, :cond_0

    .line 1222
    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    .line 1223
    return-void

    .line 1227
    :cond_0
    const/16 v1, 0x15

    .line 1228
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, p2, v2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1227
    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    nop

    .line 1232
    return-void

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
    .locals 3
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "disposition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1186
    const-string v0, "Content-Disposition"

    if-nez p1, :cond_0

    .line 1187
    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 1189
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1196
    new-instance v2, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v2, v1}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v2, "cd":Ljavax/mail/internet/ContentDisposition;
    invoke-virtual {v2, p1}, Ljavax/mail/internet/ContentDisposition;->setDisposition(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v2}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1200
    .end local v2    # "cd":Ljavax/mail/internet/ContentDisposition;
    :cond_1
    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-void
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

    .line 1397
    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    return-void
.end method

.method static setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 7
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1266
    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1268
    :try_start_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    .line 1269
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1270
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t encode filename"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 1275
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_0
    const-string v0, "Content-Disposition"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1277
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Ljavax/mail/internet/ContentDisposition;

    if-nez v2, :cond_1

    const-string v4, "attachment"

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-direct {v3, v4}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1276
    nop

    .line 1279
    .local v3, "cd":Ljavax/mail/internet/ContentDisposition;
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object v4

    .line 1280
    .local v4, "charset":Ljava/lang/String;
    invoke-virtual {v3}, Ljavax/mail/internet/ContentDisposition;->getParameterList()Ljavax/mail/internet/ParameterList;

    move-result-object v5

    .line 1281
    .local v5, "p":Ljavax/mail/internet/ParameterList;
    if-nez v5, :cond_2

    .line 1282
    new-instance v6, Ljavax/mail/internet/ParameterList;

    invoke-direct {v6}, Ljavax/mail/internet/ParameterList;-><init>()V

    move-object v5, v6

    .line 1283
    invoke-virtual {v3, v5}, Ljavax/mail/internet/ContentDisposition;->setParameterList(Ljavax/mail/internet/ParameterList;)V

    .line 1285
    :cond_2
    const-string v6, "filename"

    invoke-virtual {v5, v6, p1, v4}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {v3}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v0, v6}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    if-eqz v0, :cond_4

    .line 1293
    const-string v0, "Content-Type"

    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1294
    .end local v2    # "s":Ljava/lang/String;
    .local v1, "s":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1295
    .end local v1    # "s":Ljava/lang/String;
    .restart local v2    # "s":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1297
    :try_start_1
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1299
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->getParameterList()Ljavax/mail/internet/ParameterList;

    move-result-object v6

    move-object v5, v6

    .line 1300
    if-nez v5, :cond_3

    .line 1301
    new-instance v6, Ljavax/mail/internet/ParameterList;

    invoke-direct {v6}, Ljavax/mail/internet/ParameterList;-><init>()V

    move-object v5, v6

    .line 1302
    invoke-virtual {v1, v5}, Ljavax/mail/internet/ContentType;->setParameterList(Ljavax/mail/internet/ParameterList;)V

    .line 1304
    :cond_3
    const-string v6, "name"

    invoke-virtual {v5, v6, p1, v4}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v0, v6}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/mail/internet/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    goto :goto_2

    .line 1306
    :catch_1
    move-exception v0

    .line 1309
    :cond_4
    :goto_2
    return-void
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

    .line 1163
    if-nez p2, :cond_1

    .line 1164
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1165
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1167
    :cond_0
    const-string p2, "us-ascii"

    .line 1170
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-static {p2, v1}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-interface {p0, p1, v0}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1172
    return-void
.end method

.method static updateHeaders(Ljavax/mail/internet/MimePart;)V
    .locals 12
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1439
    const-string v0, "charset"

    const-string v1, "Content-Type"

    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v2

    .line 1440
    .local v2, "dh":Ljavax/activation/DataHandler;
    if-nez v2, :cond_0

    .line 1441
    return-void

    .line 1444
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 1445
    .local v3, "type":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1446
    .local v4, "composite":Z
    invoke-interface {p0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 1448
    .local v5, "needCTHeader":Z
    :goto_0
    new-instance v6, Ljavax/mail/internet/ContentType;

    invoke-direct {v6, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1456
    .local v6, "cType":Ljavax/mail/internet/ContentType;
    const-string v7, "multipart/*"

    invoke-virtual {v6, v7}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1458
    const/4 v4, 0x1

    .line 1460
    instance-of v7, p0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v7, :cond_3

    .line 1461
    move-object v7, p0

    check-cast v7, Ljavax/mail/internet/MimeBodyPart;

    .line 1462
    .local v7, "mbp":Ljavax/mail/internet/MimeBodyPart;
    iget-object v8, v7, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v8, :cond_2

    .line 1463
    iget-object v8, v7, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v8

    .line 1462
    :goto_1
    move-object v7, v8

    .line 1464
    .local v7, "o":Ljava/lang/Object;
    goto :goto_3

    .end local v7    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v7, p0, Ljavax/mail/internet/MimeMessage;

    if-eqz v7, :cond_5

    .line 1465
    move-object v7, p0

    check-cast v7, Ljavax/mail/internet/MimeMessage;

    .line 1466
    .local v7, "msg":Ljavax/mail/internet/MimeMessage;
    iget-object v8, v7, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v8, :cond_4

    .line 1467
    iget-object v8, v7, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v8

    .line 1466
    :goto_2
    move-object v7, v8

    .line 1468
    .local v7, "o":Ljava/lang/Object;
    goto :goto_3

    .line 1469
    .end local v7    # "o":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v7

    .line 1470
    .restart local v7    # "o":Ljava/lang/Object;
    :goto_3
    instance-of v8, v7, Ljavax/mail/internet/MimeMultipart;

    if-eqz v8, :cond_6

    .line 1471
    move-object v8, v7

    check-cast v8, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v8}, Ljavax/mail/internet/MimeMultipart;->updateHeaders()V

    goto :goto_4

    .line 1473
    :cond_6
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "MIME part of type \""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" contains object of type "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " instead of MimeMultipart"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1473
    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v2    # "dh":Ljavax/activation/DataHandler;
    .end local p0    # "part":Ljavax/mail/internet/MimePart;
    throw v0

    .line 1476
    .end local v7    # "o":Ljava/lang/Object;
    .restart local v2    # "dh":Ljavax/activation/DataHandler;
    .restart local p0    # "part":Ljavax/mail/internet/MimePart;
    :cond_7
    const-string v7, "message/rfc822"

    invoke-virtual {v6, v7}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1477
    const/4 v4, 0x1

    .line 1490
    :cond_8
    :goto_4
    instance-of v7, v2, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    if-eqz v7, :cond_b

    .line 1491
    move-object v7, v2

    check-cast v7, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    .line 1492
    .local v7, "mdh":Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
    invoke-virtual {v7}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->getPart()Ljavax/mail/internet/MimePart;

    move-result-object v8

    .line 1493
    .local v8, "mpart":Ljavax/mail/internet/MimePart;
    if-eq v8, p0, :cond_a

    .line 1494
    if-eqz v5, :cond_9

    .line 1495
    invoke-interface {v8}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v1, v9}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    :cond_9
    invoke-interface {v8}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v9

    .line 1501
    .local v9, "enc":Ljava/lang/String;
    if-eqz v9, :cond_b

    .line 1502
    invoke-static {p0, v9}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 1503
    return-void

    .line 1506
    .end local v9    # "enc":Ljava/lang/String;
    :cond_a
    return-void

    .line 1511
    .end local v7    # "mdh":Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
    .end local v8    # "mpart":Ljavax/mail/internet/MimePart;
    :cond_b
    if-nez v4, :cond_e

    .line 1512
    const-string v7, "Content-Transfer-Encoding"

    invoke-interface {p0, v7}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_c

    .line 1513
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    .line 1515
    :cond_c
    if-eqz v5, :cond_e

    sget-boolean v7, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    if-eqz v7, :cond_e

    .line 1516
    const-string v7, "text/*"

    invoke-virtual {v6, v7}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1517
    invoke-virtual {v6, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_e

    .line 1529
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v7

    .line 1530
    .local v7, "enc":Ljava/lang/String;
    if-eqz v7, :cond_d

    const-string v8, "7bit"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1531
    const-string v8, "us-ascii"

    .local v8, "charset":Ljava/lang/String;
    goto :goto_5

    .line 1533
    .end local v8    # "charset":Ljava/lang/String;
    :cond_d
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object v8

    .line 1534
    .restart local v8    # "charset":Ljava/lang/String;
    :goto_5
    invoke-virtual {v6, v0, v8}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    invoke-virtual {v6}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1542
    .end local v7    # "enc":Ljava/lang/String;
    .end local v8    # "charset":Ljava/lang/String;
    :cond_e
    if-eqz v5, :cond_11

    .line 1549
    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    if-eqz v0, :cond_10

    .line 1550
    const-string v0, "Content-Disposition"

    const/4 v7, 0x0

    invoke-interface {p0, v0, v7}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 1553
    new-instance v7, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v7, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1554
    .local v7, "cd":Ljavax/mail/internet/ContentDisposition;
    const-string v8, "filename"

    invoke-virtual {v7, v8}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1555
    .local v8, "filename":Ljava/lang/String;
    if-eqz v8, :cond_10

    .line 1556
    invoke-virtual {v6}, Ljavax/mail/internet/ContentType;->getParameterList()Ljavax/mail/internet/ParameterList;

    move-result-object v9

    .line 1557
    .local v9, "p":Ljavax/mail/internet/ParameterList;
    if-nez v9, :cond_f

    .line 1558
    new-instance v10, Ljavax/mail/internet/ParameterList;

    invoke-direct {v10}, Ljavax/mail/internet/ParameterList;-><init>()V

    move-object v9, v10

    .line 1559
    invoke-virtual {v6, v9}, Ljavax/mail/internet/ContentType;->setParameterList(Ljavax/mail/internet/ParameterList;)V

    .line 1561
    :cond_f
    const-string v10, "name"

    .line 1562
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object v11

    .line 1561
    invoke-virtual {v9, v10, v8, v11}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v6}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 1568
    .end local v0    # "s":Ljava/lang/String;
    .end local v7    # "cd":Ljavax/mail/internet/ContentDisposition;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "p":Ljavax/mail/internet/ParameterList;
    :cond_10
    invoke-interface {p0, v1, v3}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1573
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "composite":Z
    .end local v5    # "needCTHeader":Z
    .end local v6    # "cType":Ljavax/mail/internet/ContentType;
    :cond_11
    return-void

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v3, "IOException updating headers"

    invoke-direct {v1, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 8
    .param p0, "part"    # Ljavax/mail/internet/MimePart;
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "ignoreList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1585
    const/4 v0, 0x0

    .line 1586
    .local v0, "los":Lcom/sun/mail/util/LineOutputStream;
    instance-of v1, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v1, :cond_0

    .line 1587
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/util/LineOutputStream;

    .line 1588
    goto :goto_0

    .line 1589
    :cond_0
    new-instance v1, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    .line 1593
    :goto_0
    invoke-interface {p0, p2}, Ljavax/mail/internet/MimePart;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 1594
    .local v1, "hdrLines":Ljava/util/Enumeration;
    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1598
    invoke-virtual {v0}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 1602
    const/4 v2, 0x0

    .line 1603
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1611
    .local v3, "buf":[B
    :try_start_0
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v4

    .line 1612
    .local v4, "dh":Ljavax/activation/DataHandler;
    instance-of v5, v4, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    if-eqz v5, :cond_1

    .line 1613
    move-object v5, v4

    check-cast v5, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    .line 1614
    .local v5, "mpdh":Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
    invoke-virtual {v5}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->getPart()Ljavax/mail/internet/MimePart;

    move-result-object v6

    .line 1615
    .local v6, "mpart":Ljavax/mail/internet/MimePart;
    invoke-interface {v6}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1616
    invoke-virtual {v5}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->getContentStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v2, v7

    .line 1618
    .end local v5    # "mpdh":Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;
    .end local v6    # "mpart":Ljavax/mail/internet/MimePart;
    :cond_1
    if-eqz v2, :cond_3

    .line 1620
    const/16 v5, 0x2000

    new-array v5, v5, [B

    move-object v3, v5

    .line 1622
    nop

    :goto_2
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "len":I
    if-gtz v5, :cond_2

    .line 1624
    .end local v6    # "len":I
    goto :goto_3

    .line 1623
    .restart local v6    # "len":I
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 1625
    .end local v6    # "len":I
    :cond_3
    nop

    .line 1626
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Ljavax/mail/internet/MimeBodyPart;->restrictEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1625
    invoke-static {p1, v5}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v5

    move-object p1, v5

    .line 1627
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    .end local v4    # "dh":Ljavax/activation/DataHandler;
    nop

    .line 1630
    :goto_3
    if-eqz v2, :cond_4

    .line 1631
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1632
    :cond_4
    const/4 v3, 0x0

    .line 1634
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 1635
    return-void

    .line 1629
    :catchall_0
    move-exception v4

    .line 1630
    if-eqz v2, :cond_5

    .line 1631
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1632
    :cond_5
    const/4 v3, 0x0

    .line 1633
    throw v4

    .line 1595
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "buf":[B
    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_1
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

    .line 1037
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 654
    return-object v0

    .line 657
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/mail/util/FolderClosedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/util/MessageRemovedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .local v0, "c":Ljava/lang/Object;
    nop

    .line 663
    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v1, :cond_3

    .line 664
    instance-of v1, v0, Ljavax/mail/Multipart;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljavax/mail/Message;

    if-eqz v1, :cond_3

    .line 665
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 666
    :cond_2
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 671
    instance-of v1, v0, Ljavax/mail/internet/MimeMultipart;

    if-eqz v1, :cond_3

    .line 672
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 674
    :cond_3
    return-object v0

    .line 660
    .end local v0    # "c":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 661
    .local v0, "mex":Lcom/sun/mail/util/MessageRemovedIOException;
    new-instance v1, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/MessageRemovedIOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 658
    .end local v0    # "mex":Lcom/sun/mail/util/MessageRemovedIOException;
    :catch_1
    move-exception v0

    .line 659
    .local v0, "fex":Lcom/sun/mail/util/FolderClosedIOException;
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method public getContentID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

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

    .line 389
    const-string v0, "Content-MD5"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 590
    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 591
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_1

    .line 592
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 594
    :cond_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No MimeBodyPart content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 273
    const-string v0, "Content-Type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 615
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_0

    .line 230
    array-length v0, v0

    return v0

    .line 231
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 233
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 237
    return v0

    .line 238
    .end local v0    # "size":I
    :catch_0
    move-exception v0

    .line 242
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

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

    .line 1029
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    .line 1030
    return-void
.end method

.method public saveFile(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 914
    const/4 v0, 0x0

    .line 915
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 917
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 918
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 919
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 921
    .local v2, "buf":[B
    nop

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v3

    .local v4, "len":I
    if-gtz v3, :cond_1

    .line 923
    .end local v2    # "buf":[B
    .end local v4    # "len":I
    nop

    .line 926
    if-eqz v1, :cond_0

    .line 927
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 928
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 930
    :cond_0
    :goto_2
    nop

    .line 931
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 932
    :goto_3
    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3

    .line 934
    :goto_4
    return-void

    .line 922
    .restart local v2    # "buf":[B
    .restart local v4    # "len":I
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 923
    .end local v2    # "buf":[B
    .end local v4    # "len":I
    :catchall_0
    move-exception v2

    .line 926
    if-eqz v1, :cond_2

    .line 927
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 928
    :goto_5
    goto :goto_6

    :catch_2
    move-exception v3

    goto :goto_5

    .line 930
    :cond_2
    :goto_6
    if-eqz v0, :cond_3

    .line 931
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 932
    :goto_7
    goto :goto_8

    :catch_3
    move-exception v3

    goto :goto_7

    .line 933
    :cond_3
    :goto_8
    throw v2
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

    .line 714
    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_0

    .line 715
    move-object v0, p1

    check-cast v0, Ljavax/mail/Multipart;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljavax/mail/Multipart;)V

    .line 716
    goto :goto_0

    .line 717
    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 719
    :goto_0
    return-void
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .param p1, "mp"    # Ljavax/mail/Multipart;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

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

    .line 374
    const-string v0, "Content-ID"

    if-nez p1, :cond_0

    .line 375
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_0
    return-void
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .locals 0
    .param p1, "languages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

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

    .line 775
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method protected updateHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1125
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V

    .line 1132
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1133
    new-instance v1, Ljavax/activation/DataHandler;

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 1135
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    .line 1136
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 1138
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v1

    .line 1141
    :cond_0
    :goto_0
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    .line 1143
    :cond_1
    return-void
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

    .line 961
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 962
    return-void
.end method
