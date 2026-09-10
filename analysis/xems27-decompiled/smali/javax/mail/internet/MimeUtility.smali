.class public Ljavax/mail/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field public static final ALL:I = -0x1

.field static final ALL_ASCII:I = 0x1

.field static final MOSTLY_ASCII:I = 0x2

.field static final MOSTLY_NONASCII:I = 0x3

.field private static final decodeStrict:Z

.field private static defaultJavaCharset:Ljava/lang/String;

.field private static defaultMIMECharset:Ljava/lang/String;

.field private static final encodeEolStrict:Z

.field private static final foldEncodedWords:Z

.field private static final foldText:Z

.field private static final ignoreUnknownEncoding:Z

.field private static java2mime:Ljava/util/Hashtable;

.field private static mime2java:Ljava/util/Hashtable;

.field private static final nonAsciiCharsetMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    .line 154
    const-string v0, "mail.mime.decodetext.strict"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 153
    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 156
    const-string v0, "mail.mime.encodeeol.strict"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 155
    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 159
    nop

    .line 158
    const-string v0, "mail.mime.ignoreunknownencoding"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 157
    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->ignoreUnknownEncoding:Z

    .line 167
    const-string v0, "mail.mime.foldencodedwords"

    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 166
    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 169
    const-string v0, "mail.mime.foldtext"

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 168
    sput-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    .line 1297
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    .line 1298
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    .line 1304
    :try_start_0
    const-class v0, Ljavax/mail/internet/MimeUtility;

    .line 1305
    const-string v1, "/META-INF/javamail.charset.map"

    .line 1304
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1303
    nop

    .line 1307
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 1309
    :try_start_1
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 1312
    move-object v1, v0

    check-cast v1, Lcom/sun/mail/util/LineInputStream;

    sget-object v2, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V

    .line 1315
    move-object v1, v0

    check-cast v1, Lcom/sun/mail/util/LineInputStream;

    sget-object v2, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-static {v1, v2}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1316
    nop

    .line 1318
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1319
    goto :goto_3

    :catch_0
    move-exception v1

    .end local v0    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 1316
    .restart local v0    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    .line 1318
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1319
    :goto_0
    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    .line 1322
    :goto_1
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1324
    .end local v0    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v0

    :goto_2
    nop

    .line 1329
    :cond_0
    :goto_3
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    const-string v1, "euc-kr"

    const-string v2, "ISO-8859-1"

    if-eqz v0, :cond_1

    .line 1330
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_1"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_1"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-1"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_2"

    const-string v4, "ISO-8859-2"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_2"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-2"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_3"

    const-string v4, "ISO-8859-3"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_3"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-3"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_4"

    const-string v4, "ISO-8859-4"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_4"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-4"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_5"

    const-string v4, "ISO-8859-5"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_5"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-5"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_6"

    const-string v4, "ISO-8859-6"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_6"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-6"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_7"

    const-string v4, "ISO-8859-7"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_7"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-7"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_8"

    const-string v4, "ISO-8859-8"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_8"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-8"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "8859_9"

    const-string v4, "ISO-8859-9"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859_9"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso8859-9"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "sjis"

    const-string v4, "Shift_JIS"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "jis"

    const-string v4, "ISO-2022-JP"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "iso2022jp"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "euc_jp"

    const-string v4, "euc-jp"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "koi8_r"

    const-string v4, "koi8-r"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "euc_cn"

    const-string v4, "euc-cn"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "euc_tw"

    const-string v4, "euc-tw"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v3, "euc_kr"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    :cond_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "iso-2022-cn"

    const-string v4, "ISO2022CN"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "iso-2022-kr"

    const-string v4, "ISO2022KR"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "utf-8"

    const-string v4, "UTF8"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "utf8"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "ja_jp.iso2022-7"

    const-string v4, "ISO2022JP"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "ja_jp.eucjp"

    const-string v4, "EUCJIS"

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v3, "KSC5601"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v1, "euckr"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v1, "us-ascii"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v1, "x-us-ascii"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAscii(Ljava/io/InputStream;IZ)I
    .locals 17
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "max"    # I
    .param p2, "breakOnNonAscii"    # Z

    .line 1504
    move/from16 v0, p1

    const/4 v1, 0x0

    .local v1, "ascii":I
    const/4 v2, 0x0

    .line 1506
    .local v2, "non_ascii":I
    const/16 v3, 0x1000

    .line 1507
    .local v3, "block":I
    const/4 v4, 0x0

    .line 1508
    .local v4, "linelen":I
    const/4 v5, 0x0

    .local v5, "longLine":Z
    const/4 v6, 0x0

    .line 1509
    .local v6, "badEOL":Z
    sget-boolean v7, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 1510
    .local v7, "checkEOL":Z
    :goto_0
    const/4 v10, 0x0

    .line 1511
    .local v10, "buf":[B
    const/4 v11, -0x1

    if-eqz v0, :cond_2

    .line 1512
    const/16 v12, 0x1000

    if-ne v0, v11, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    :goto_1
    move v3, v12

    .line 1513
    new-array v10, v3, [B

    .line 1515
    move-object v12, v10

    move v10, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 1511
    :cond_2
    move-object v12, v10

    move v10, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1515
    .end local p1    # "max":I
    .local v1, "max":I
    .local v2, "ascii":I
    .local v3, "non_ascii":I
    .local v4, "block":I
    .local v5, "linelen":I
    .local v6, "longLine":Z
    .local v10, "badEOL":Z
    .local v12, "buf":[B
    :goto_2
    if-nez v1, :cond_3

    move-object/from16 v14, p0

    goto :goto_7

    .line 1517
    :cond_3
    move-object/from16 v14, p0

    :try_start_0
    invoke-virtual {v14, v12, v8, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v15, v0

    .local v15, "len":I
    if-ne v0, v11, :cond_4

    .line 1518
    goto :goto_7

    .line 1519
    :cond_4
    const/4 v0, 0x0

    .line 1520
    .local v0, "lastb":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .local v8, "i":I
    :goto_3
    if-lt v8, v15, :cond_6

    .line 1546
    .end local v0    # "lastb":I
    .end local v8    # "i":I
    nop

    .line 1549
    if-eq v1, v11, :cond_5

    .line 1550
    sub-int/2addr v1, v15

    const/4 v8, 0x0

    goto :goto_2

    .line 1549
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 1525
    .restart local v0    # "lastb":I
    .restart local v8    # "i":I
    :cond_6
    aget-byte v11, v12, v8

    and-int/lit16 v11, v11, 0xff

    .line 1526
    .local v11, "b":I
    const/16 v9, 0xa

    const/16 v13, 0xd

    if-eqz v7, :cond_9

    .line 1527
    if-ne v0, v13, :cond_7

    if-ne v11, v9, :cond_8

    .line 1528
    :cond_7
    if-eq v0, v13, :cond_9

    if-ne v11, v9, :cond_9

    .line 1529
    :cond_8
    const/4 v10, 0x1

    .line 1530
    :cond_9
    if-eq v11, v13, :cond_b

    if-ne v11, v9, :cond_a

    goto :goto_4

    .line 1533
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 1534
    const/16 v9, 0x3e6

    if-le v5, v9, :cond_c

    .line 1535
    const/4 v6, 0x1

    goto :goto_5

    .line 1531
    :cond_b
    :goto_4
    const/4 v5, 0x0

    .line 1537
    :cond_c
    :goto_5
    invoke-static {v11}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_e

    .line 1538
    if-eqz p2, :cond_d

    .line 1539
    const/4 v9, 0x3

    return v9

    .line 1541
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 1542
    goto :goto_6

    .line 1543
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 1544
    :goto_6
    move v0, v11

    .line 1520
    .end local v11    # "b":I
    add-int/lit8 v8, v8, 0x1

    const/4 v11, -0x1

    goto :goto_3

    .line 1546
    .end local v0    # "lastb":I
    .end local v8    # "i":I
    .end local v15    # "len":I
    :catch_0
    move-exception v0

    .line 1547
    .local v0, "ioex":Ljava/io/IOException;
    nop

    .line 1553
    .end local v0    # "ioex":Ljava/io/IOException;
    :goto_7
    if-nez v1, :cond_f

    if-eqz p2, :cond_f

    .line 1560
    const/4 v8, 0x3

    return v8

    .line 1553
    :cond_f
    const/4 v8, 0x3

    .line 1562
    const/4 v0, 0x2

    if-nez v3, :cond_12

    .line 1567
    if-eqz v10, :cond_10

    .line 1568
    return v8

    .line 1570
    :cond_10
    if-eqz v6, :cond_11

    .line 1571
    return v0

    .line 1573
    :cond_11
    const/4 v8, 0x1

    return v8

    .line 1575
    :cond_12
    if-le v2, v3, :cond_13

    .line 1576
    return v0

    .line 1577
    :cond_13
    const/4 v8, 0x3

    return v8
.end method

.method static checkAscii(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 1433
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v1, 0x0

    .line 1434
    .local v1, "non_ascii":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1436
    .local v2, "l":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_2

    .line 1443
    .end local v3    # "i":I
    if-nez v1, :cond_0

    .line 1444
    const/4 v3, 0x1

    return v3

    .line 1445
    :cond_0
    if-le v0, v1, :cond_1

    .line 1446
    const/4 v3, 0x2

    return v3

    .line 1448
    :cond_1
    const/4 v3, 0x3

    return v3

    .line 1437
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1438
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1440
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1436
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static checkAscii([B)I
    .locals 4
    .param p0, "b"    # [B

    .line 1462
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v1, 0x0

    .line 1464
    .local v1, "non_ascii":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_2

    .line 1474
    .end local v2    # "i":I
    if-nez v1, :cond_0

    .line 1475
    const/4 v2, 0x1

    return v2

    .line 1476
    :cond_0
    if-le v0, v1, :cond_1

    .line 1477
    const/4 v2, 0x2

    return v2

    .line 1479
    :cond_1
    const/4 v2, 0x3

    return v2

    .line 1468
    .restart local v2    # "i":I
    :cond_2
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1471
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1464
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 374
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 376
    :cond_0
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    new-instance v0, Lcom/sun/mail/util/QPDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPDecoderStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 378
    :cond_1
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 379
    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 380
    const-string v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 382
    :cond_2
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 383
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 384
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 387
    :cond_3
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->ignoreUnknownEncoding:Z

    if-eqz v0, :cond_4

    .line 389
    return-object p0

    .line 388
    :cond_4
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_5
    :goto_0
    return-object p0

    .line 381
    :cond_6
    :goto_1
    new-instance v0, Lcom/sun/mail/util/UUDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUDecoderStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 947
    const/4 v0, 0x0

    .line 948
    .local v0, "start":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 949
    .local v1, "buf":Ljava/lang/StringBuffer;
    nop

    :goto_0
    const-string v2, "=?"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .local v3, "i":I
    if-gez v2, :cond_0

    goto :goto_1

    .line 950
    :cond_0
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 952
    add-int/lit8 v2, v3, 0x2

    const/16 v4, 0x3f

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 953
    .local v2, "end":I
    if-gez v2, :cond_1

    .line 954
    goto :goto_1

    .line 956
    :cond_1
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 957
    if-gez v2, :cond_2

    .line 958
    goto :goto_1

    .line 960
    :cond_2
    add-int/lit8 v4, v2, 0x1

    const-string v5, "?="

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 961
    if-gez v2, :cond_5

    .line 962
    nop

    .line 972
    .end local v2    # "end":I
    :goto_1
    if-nez v0, :cond_3

    .line 973
    return-object p0

    .line 974
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 975
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 976
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 963
    .restart local v2    # "end":I
    :cond_5
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 965
    .local v4, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 966
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v5

    goto :goto_2

    .line 969
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 970
    add-int/lit8 v0, v2, 0x2

    goto :goto_0
.end method

.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "etext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 577
    const-string v0, " \t\n\r"

    .line 589
    .local v0, "lwsp":Ljava/lang/String;
    const-string v1, "=?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 590
    return-object p0

    .line 594
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 595
    .local v2, "st":Ljava/util/StringTokenizer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 596
    .local v3, "sb":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v4, "wsb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 599
    .local v5, "prevWasEncoded":Z
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_1

    .line 656
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 657
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 601
    :cond_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 603
    .local v6, "s":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v9, v8

    .local v9, "c":C
    const/16 v10, 0x20

    if-eq v8, v10, :cond_a

    const/16 v8, 0x9

    if-eq v9, v8, :cond_a

    .line 604
    const/16 v8, 0xd

    if-eq v9, v8, :cond_a

    const/16 v8, 0xa

    if-ne v9, v8, :cond_2

    goto :goto_2

    .line 610
    :cond_2
    :try_start_0
    invoke-static {v6}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 612
    .local v8, "word":Ljava/lang/String;
    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 616
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :cond_3
    const/4 v5, 0x1

    .line 619
    goto :goto_1

    .end local v8    # "word":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 621
    .local v8, "pex":Ljavax/mail/internet/ParseException;
    move-object v10, v6

    .line 623
    .local v10, "word":Ljava/lang/String;
    sget-boolean v11, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v11, :cond_8

    .line 624
    invoke-static {v10}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 625
    .local v11, "dword":Ljava/lang/String;
    if-eq v11, v10, :cond_6

    .line 628
    if-eqz v5, :cond_4

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 633
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 634
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 637
    :cond_5
    const-string v12, "?="

    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    .line 638
    move-object v10, v11

    .line 639
    move-object v8, v10

    goto :goto_1

    .line 641
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_7

    .line 642
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 643
    :cond_7
    const/4 v5, 0x0

    .line 645
    .end local v11    # "dword":Ljava/lang/String;
    move-object v8, v10

    goto :goto_1

    .line 647
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_9

    .line 648
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 649
    :cond_9
    const/4 v5, 0x0

    move-object v8, v10

    .line 652
    .end local v10    # "word":Ljava/lang/String;
    .local v8, "word":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    .line 605
    .end local v8    # "word":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "eword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 842
    const-string v0, "=?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 847
    const/4 v0, 0x2

    .line 848
    .local v0, "start":I
    const/16 v1, 0x3f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v3, v2

    .local v3, "pos":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    .line 851
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, "charset":Ljava/lang/String;
    const/16 v5, 0x2a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 853
    .local v5, "lpos":I
    const/4 v6, 0x0

    if-ltz v5, :cond_0

    .line 854
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 855
    :cond_0
    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 858
    add-int/lit8 v0, v3, 0x1

    .line 859
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    if-eq v1, v4, :cond_8

    .line 862
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 865
    .local v1, "encoding":Ljava/lang/String;
    add-int/lit8 v0, v3, 0x1

    .line 866
    const-string v7, "?="

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v3, v7

    if-eq v7, v4, :cond_7

    .line 876
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 880
    .local v4, "word":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    if-lez v7, :cond_4

    .line 883
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-static {v4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 882
    nop

    .line 887
    .local v7, "bis":Ljava/io/ByteArrayInputStream;
    const-string v9, "B"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 888
    new-instance v9, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v9, v7}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    .local v9, "is":Ljava/io/InputStream;
    goto :goto_0

    .line 889
    .end local v9    # "is":Ljava/io/InputStream;
    :cond_1
    const-string v9, "Q"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 890
    new-instance v9, Lcom/sun/mail/util/QDecoderStream;

    invoke-direct {v9, v7}, Lcom/sun/mail/util/QDecoderStream;-><init>(Ljava/io/InputStream;)V

    .line 900
    .restart local v9    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 901
    .local v10, "count":I
    new-array v11, v10, [B

    .line 903
    .local v11, "bytes":[B
    invoke-virtual {v9, v11, v6, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    move v10, v12

    .line 907
    if-gtz v10, :cond_2

    goto :goto_1

    .line 908
    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v11, v6, v10, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 907
    :goto_1
    move-object v6, v8

    .line 909
    .end local v7    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "count":I
    .end local v11    # "bytes":[B
    .local v6, "decodedWord":Ljava/lang/String;
    goto :goto_2

    .line 892
    .end local v6    # "decodedWord":Ljava/lang/String;
    .restart local v7    # "bis":Ljava/io/ByteArrayInputStream;
    :cond_3
    new-instance v6, Ljava/io/UnsupportedEncodingException;

    .line 893
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unknown encoding: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 892
    invoke-direct {v6, v8}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .end local v0    # "start":I
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "charset":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "word":Ljava/lang/String;
    .end local v5    # "lpos":I
    .end local p0    # "eword":Ljava/lang/String;
    throw v6

    .line 911
    .end local v7    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "start":I
    .restart local v1    # "encoding":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/lang/String;
    .restart local v3    # "pos":I
    .restart local v4    # "word":Ljava/lang/String;
    .restart local v5    # "lpos":I
    .restart local p0    # "eword":Ljava/lang/String;
    :cond_4
    move-object v6, v8

    .line 913
    .restart local v6    # "decodedWord":Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 915
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 916
    .local v7, "rest":Ljava/lang/String;
    sget-boolean v8, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v8, :cond_5

    .line 917
    invoke-static {v7}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 918
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v8

    .line 920
    .end local v7    # "rest":Ljava/lang/String;
    :cond_6
    return-object v6

    .line 928
    .end local v6    # "decodedWord":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 936
    .local v6, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v7, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 925
    .end local v6    # "iex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v6

    .line 927
    .local v6, "ioex":Ljava/io/IOException;
    new-instance v7, Ljavax/mail/internet/ParseException;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 921
    .end local v6    # "ioex":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 924
    .local v6, "uex":Ljava/io/UnsupportedEncodingException;
    throw v6

    .line 867
    .end local v4    # "word":Ljava/lang/String;
    .end local v6    # "uex":Ljava/io/UnsupportedEncodingException;
    :cond_7
    new-instance v4, Ljavax/mail/internet/ParseException;

    .line 868
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "encoded word does not end with \"?=\": "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 867
    invoke-direct {v4, v6}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 860
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljavax/mail/internet/ParseException;

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "encoded word does not include encoding: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 860
    invoke-direct {v1, v4}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 849
    .end local v2    # "charset":Ljava/lang/String;
    .end local v5    # "lpos":I
    :cond_9
    new-instance v1, Ljavax/mail/internet/ParseException;

    .line 850
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "encoded word does not include charset: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 849
    invoke-direct {v1, v2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    .end local v0    # "start":I
    .end local v3    # "pos":I
    :cond_a
    new-instance v0, Ljavax/mail/internet/ParseException;

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoded word does not start with \"=?\": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 843
    invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 16
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "b64"    # Z
    .param p2, "jcharset"    # Ljava/lang/String;
    .param p3, "avail"    # I
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "first"    # Z
    .param p6, "encodingWord"    # Z
    .param p7, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 775
    move-object/from16 v1, p0

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p2

    invoke-virtual {v1, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 777
    .local v13, "bytes":[B
    if-eqz p1, :cond_0

    .line 778
    invoke-static {v13}, Lcom/sun/mail/util/BEncoderStream;->encodedLength([B)I

    move-result v0

    move v14, v0

    .local v0, "len":I
    goto :goto_0

    .line 780
    .end local v0    # "len":I
    :cond_0
    invoke-static {v13, v10}, Lcom/sun/mail/util/QEncoderStream;->encodedLength([BZ)I

    move-result v0

    move v14, v0

    .line 783
    .local v14, "len":I
    :goto_0
    move/from16 v15, p3

    if-le v14, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    move v9, v0

    .local v9, "size":I
    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 787
    div-int/lit8 v0, v9, 0x2

    .line 788
    .local v0, "split":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 789
    add-int/lit8 v0, v0, -0x1

    .line 790
    :cond_1
    if-lez v0, :cond_2

    .line 791
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 792
    nop

    .line 791
    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move v12, v9

    .end local v9    # "size":I
    .local v12, "size":I
    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    goto :goto_1

    .line 790
    .end local v12    # "size":I
    .restart local v9    # "size":I
    :cond_2
    move v12, v9

    .line 793
    .end local v9    # "size":I
    .restart local v12    # "size":I
    :goto_1
    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 794
    const/4 v7, 0x0

    .line 793
    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 795
    .end local v0    # "split":I
    move-object/from16 v4, p4

    goto :goto_6

    .line 783
    .end local v12    # "size":I
    .restart local v9    # "size":I
    :cond_3
    move v12, v9

    .line 797
    .end local v9    # "size":I
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 799
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_5

    .line 800
    new-instance v0, Lcom/sun/mail/util/BEncoderStream;

    invoke-direct {v0, v2}, Lcom/sun/mail/util/BEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    .local v0, "eos":Ljava/io/OutputStream;
    goto :goto_2

    .line 802
    .end local v0    # "eos":Ljava/io/OutputStream;
    :cond_5
    new-instance v0, Lcom/sun/mail/util/QEncoderStream;

    invoke-direct {v0, v2, v10}, Lcom/sun/mail/util/QEncoderStream;-><init>(Ljava/io/OutputStream;Z)V

    move-object v3, v0

    .line 805
    .local v3, "eos":Ljava/io/OutputStream;
    :goto_2
    :try_start_0
    invoke-virtual {v3, v13}, Ljava/io/OutputStream;->write([B)V

    .line 806
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 807
    :catch_0
    move-exception v0

    :goto_3
    nop

    .line 809
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 812
    .local v0, "encodedBytes":[B
    if-nez p5, :cond_7

    .line 813
    sget-boolean v4, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    if-eqz v4, :cond_6

    .line 814
    const-string v4, "\r\n "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 816
    :cond_6
    const-string v4, " "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    :cond_7
    :goto_4
    move-object/from16 v4, p4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    array-length v6, v0

    if-lt v5, v6, :cond_8

    .line 821
    .end local v5    # "i":I
    const-string v5, "?="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    .end local v0    # "encodedBytes":[B
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "eos":Ljava/io/OutputStream;
    :goto_6
    return-void

    .line 820
    .restart local v0    # "encodedBytes":[B
    .restart local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "eos":Ljava/io/OutputStream;
    .restart local v5    # "i":I
    :cond_8
    aget-byte v6, v0, v5

    int-to-char v6, v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 819
    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 407
    if-nez p1, :cond_0

    .line 408
    return-object p0

    .line 409
    :cond_0
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 411
    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 413
    :cond_2
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 414
    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 415
    const-string v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 417
    :cond_3
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 418
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 419
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 422
    :cond_4
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_5
    :goto_0
    return-object p0

    .line 416
    :cond_6
    :goto_1
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static encode(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 445
    if-nez p1, :cond_0

    .line 446
    return-object p0

    .line 447
    :cond_0
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 449
    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0

    .line 451
    :cond_2
    const-string v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 452
    const-string v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 453
    const-string v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 455
    :cond_3
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 456
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 457
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 460
    :cond_4
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_5
    :goto_0
    return-object p0

    .line 454
    :cond_6
    :goto_1
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0, p2}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 501
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 534
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 683
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 711
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "encodingWord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 727
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v0

    .line 728
    .local v0, "ascii":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 729
    return-object p0

    .line 733
    :cond_0
    if-nez p1, :cond_1

    .line 734
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "jcharset":Ljava/lang/String;
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p1

    .line 736
    move-object v9, v1

    goto :goto_0

    .line 737
    .end local v1    # "jcharset":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 740
    .local v9, "jcharset":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_3

    .line 741
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 742
    const-string p2, "Q"

    goto :goto_1

    .line 744
    :cond_2
    const-string p2, "B"

    .line 748
    :cond_3
    :goto_1
    const-string v1, "B"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 749
    const/4 v1, 0x1

    move v10, v1

    .local v1, "b64":Z
    goto :goto_2

    .line 750
    .end local v1    # "b64":Z
    :cond_4
    const-string v1, "Q"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 751
    const/4 v1, 0x0

    move v10, v1

    .line 756
    .local v10, "b64":Z
    :goto_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 757
    .local v8, "outb":Ljava/lang/StringBuffer;
    nop

    .line 761
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v4, v1, 0x44

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 763
    const/4 v6, 0x1

    .line 757
    move-object v1, p0

    move v2, v10

    move-object v3, v9

    move v7, p3

    invoke-static/range {v1 .. v8}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 765
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 753
    .end local v8    # "outb":Ljava/lang/StringBuffer;
    .end local v10    # "b64":Z
    :cond_5
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown transfer encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 753
    invoke-direct {v1, v2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fold(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "used"    # I
    .param p1, "s"    # Ljava/lang/String;

    .line 1056
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v0, :cond_0

    .line 1057
    return-object p1

    .line 1062
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "end":I
    :goto_0
    const/16 v1, 0x9

    const/16 v2, 0x20

    if-gez v0, :cond_1

    goto :goto_1

    .line 1063
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1064
    .local v3, "c":C
    if-eq v3, v2, :cond_a

    if-eq v3, v1, :cond_a

    const/16 v4, 0xd

    if-eq v3, v4, :cond_a

    const/16 v4, 0xa

    if-eq v3, v4, :cond_a

    .line 1065
    nop

    .line 1067
    .end local v3    # "c":C
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    .line 1068
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1071
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p0

    const/16 v5, 0x4c

    if-gt v3, v5, :cond_3

    .line 1072
    return-object p1

    .line 1075
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v3

    .line 1076
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 1077
    .local v3, "lastc":C
    move v8, p0

    move-object v7, p1

    .end local p0    # "used":I
    .end local p1    # "s":Ljava/lang/String;
    .local v7, "s":Ljava/lang/String;
    .local v8, "used":I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v8

    if-gt p0, v5, :cond_4

    goto :goto_5

    .line 1078
    :cond_4
    const/4 p0, -0x1

    .line 1079
    .local p0, "lastspace":I
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, -0x1

    if-lt p1, v9, :cond_5

    goto :goto_4

    .line 1080
    :cond_5
    if-eq p0, v10, :cond_7

    add-int v9, v8, p1

    if-le v9, v5, :cond_7

    .line 1081
    nop

    .line 1088
    .end local p1    # "i":I
    :goto_4
    if-ne p0, v10, :cond_6

    .line 1090
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1091
    const-string v7, ""

    .line 1092
    const/4 v8, 0x0

    .line 1093
    nop

    .line 1102
    .end local p0    # "lastspace":I
    :goto_5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1103
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1095
    .restart local p0    # "lastspace":I
    :cond_6
    invoke-virtual {v7, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1096
    const-string p1, "\r\n"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1097
    invoke-virtual {v7, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1098
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1099
    add-int/lit8 p1, p0, 0x1

    invoke-virtual {v7, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1100
    const/4 v8, 0x1

    goto :goto_2

    .line 1082
    .restart local p1    # "i":I
    :cond_7
    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1083
    .local v9, "c":C
    if-eq v9, v2, :cond_8

    if-ne v9, v1, :cond_9

    .line 1084
    :cond_8
    if-eq v3, v2, :cond_9

    if-eq v3, v1, :cond_9

    .line 1085
    move p0, p1

    .line 1086
    :cond_9
    move v3, v9

    .line 1079
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 1062
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "used":I
    .end local v9    # "c":C
    .local v3, "c":C
    .local p0, "used":I
    .local p1, "s":Ljava/lang/String;
    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method public static getDefaultJavaCharset()Ljava/lang/String;
    .locals 5

    .line 1242
    const-string v0, "8859_1"

    sget-object v1, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1247
    const/4 v1, 0x0

    .line 1249
    .local v1, "mimecs":Ljava/lang/String;
    :try_start_0
    const-string v2, "mail.mime.charset"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 1251
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1252
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1253
    return-object v0

    .line 1257
    :cond_0
    :try_start_1
    const-string v2, "file.encoding"

    .line 1258
    nop

    .line 1257
    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1259
    goto :goto_1

    :catch_1
    move-exception v2

    .line 1267
    .local v2, "sex":Ljava/lang/SecurityException;
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljavax/mail/internet/MimeUtility$1NullInputStream;

    invoke-direct {v4}, Ljavax/mail/internet/MimeUtility$1NullInputStream;-><init>()V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1266
    nop

    .line 1268
    .local v3, "reader":Ljava/io/InputStreamReader;
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1269
    if-nez v4, :cond_1

    .line 1270
    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1274
    .end local v1    # "mimecs":Ljava/lang/String;
    .end local v2    # "sex":Ljava/lang/SecurityException;
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    :goto_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    return-object v0
.end method

.method static getDefaultMIMECharset()Ljava/lang/String;
    .locals 1

    .line 1281
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1283
    :try_start_0
    const-string v0, "mail.mime.charset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v0

    .line 1286
    :cond_0
    :goto_0
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1287
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    .line 1288
    :cond_1
    sget-object v0, Ljavax/mail/internet/MimeUtility;->defaultMIMECharset:Ljava/lang/String;

    return-object v0
.end method

.method public static getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 5
    .param p0, "dh"    # Ljavax/activation/DataHandler;

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const/4 v1, 0x0

    .line 310
    .local v1, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 314
    :cond_0
    :try_start_0
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v2

    .line 315
    nop

    .line 319
    const-string v2, "text/*"

    invoke-virtual {v0, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 321
    new-instance v2, Ljavax/mail/internet/AsciiOutputStream;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 323
    .local v2, "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_1
    invoke-virtual {p0, v2}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    .line 327
    :goto_1
    invoke-virtual {v2}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v4

    if-eq v4, v3, :cond_2

    const/4 v3, 0x2

    if-eq v4, v3, :cond_1

    .line 335
    const-string v1, "base64"

    .line 338
    .end local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    goto :goto_4

    .line 332
    .restart local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :cond_1
    const-string v1, "quoted-printable"

    .line 333
    goto :goto_4

    .line 329
    :cond_2
    const-string v1, "7bit"

    .line 330
    goto :goto_4

    .line 342
    .end local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :cond_3
    new-instance v2, Ljavax/mail/internet/AsciiOutputStream;

    sget-boolean v4, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    invoke-direct {v2, v3, v4}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 341
    nop

    .line 344
    .restart local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_2
    invoke-virtual {p0, v2}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_2

    .line 346
    :goto_3
    invoke-virtual {v2}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 347
    const-string v1, "7bit"

    goto :goto_4

    .line 349
    :cond_4
    const-string v1, "base64"

    .line 352
    .end local v2    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :goto_4
    return-object v1

    .line 315
    :catch_2
    move-exception v2

    .line 316
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "base64"

    return-object v3
.end method

.method public static getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 8
    .param p0, "ds"    # Ljavax/activation/DataSource;

    .line 199
    const-string v0, "base64"

    const/4 v1, 0x0

    .line 200
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const/4 v2, 0x0

    .line 201
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 203
    .local v3, "encoding":Ljava/lang/String;
    instance-of v4, p0, Ljavax/mail/EncodingAware;

    if-eqz v4, :cond_0

    .line 204
    move-object v4, p0

    check-cast v4, Ljavax/mail/EncodingAware;

    invoke-interface {v4}, Ljavax/mail/EncodingAware;->getEncoding()Ljava/lang/String;

    move-result-object v3

    .line 205
    if-eqz v3, :cond_0

    .line 206
    return-object v3

    .line 209
    :cond_0
    :try_start_0
    new-instance v4, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 210
    invoke-interface {p0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 212
    const-string v4, "text/*"

    invoke-virtual {v1, v4}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v4

    .line 214
    .local v4, "isText":Z
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x1

    :goto_0
    invoke-static {v2, v5, v7}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/io/InputStream;IZ)I

    move-result v5

    .line 215
    .local v5, "i":I
    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 226
    nop

    .line 230
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v4    # "isText":Z
    .end local v5    # "i":I
    .local v0, "encoding":Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v0    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    .restart local v4    # "isText":Z
    .restart local v5    # "i":I
    :cond_2
    if-eqz v4, :cond_3

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->nonAsciiCharset(Ljavax/mail/internet/ContentType;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 221
    nop

    .end local v3    # "encoding":Ljava/lang/String;
    .restart local v0    # "encoding":Ljava/lang/String;
    goto :goto_1

    .line 223
    .end local v0    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    :cond_3
    const-string v0, "quoted-printable"

    .line 224
    .end local v3    # "encoding":Ljava/lang/String;
    .restart local v0    # "encoding":Ljava/lang/String;
    goto :goto_1

    .line 217
    .end local v0    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    :cond_4
    const-string v0, "7bit"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v3    # "encoding":Ljava/lang/String;
    .restart local v0    # "encoding":Ljava/lang/String;
    nop

    .line 235
    .end local v4    # "isText":Z
    .end local v5    # "i":I
    :goto_1
    if-eqz v2, :cond_5

    .line 236
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    .line 240
    :cond_5
    :goto_3
    return-object v0

    .line 232
    .end local v0    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 235
    if-eqz v2, :cond_6

    .line 236
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    :goto_4
    goto :goto_5

    :catch_1
    move-exception v4

    goto :goto_4

    .line 238
    :cond_6
    :goto_5
    throw v0

    .line 230
    :catch_2
    move-exception v4

    .line 235
    .local v4, "ex":Ljava/lang/Exception;
    if-eqz v2, :cond_7

    .line 236
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 237
    :goto_6
    goto :goto_7

    :catch_3
    move-exception v5

    goto :goto_6

    .line 231
    :cond_7
    :goto_7
    return-object v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .line 1172
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 1177
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1178
    .local v1, "len":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1182
    .end local v2    # "i":I
    return v0

    .line 1179
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_1

    .line 1180
    return v2

    .line 1178
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1183
    .end local v1    # "len":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1184
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return v0
.end method

.method public static javaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "charset"    # Ljava/lang/String;

    .line 1196
    sget-object v0, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 1201
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1200
    nop

    .line 1202
    .local v0, "alias":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 1198
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p0
.end method

.method private static loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    .locals 5
    .param p0, "is"    # Lcom/sun/mail/util/LineInputStream;
    .param p1, "table"    # Ljava/util/Hashtable;

    .line 1394
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1395
    .local v0, "currLine":Ljava/lang/String;
    nop

    .line 1399
    if-nez v0, :cond_1

    .line 1400
    goto :goto_1

    .line 1401
    :cond_1
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1403
    goto :goto_1

    .line 1406
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1407
    goto :goto_0

    .line 1411
    :cond_3
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " \t"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    .local v1, "tk":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1414
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1415
    .local v3, "value":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1416
    nop

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v2

    .line 1392
    .end local v0    # "currLine":Ljava/lang/String;
    .end local v1    # "tk":Ljava/util/StringTokenizer;
    goto :goto_0

    .line 1395
    :catch_1
    move-exception v0

    .line 1396
    .local v0, "ioex":Ljava/io/IOException;
    nop

    .line 1418
    .end local v0    # "ioex":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public static mimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "charset"    # Ljava/lang/String;

    .line 1219
    sget-object v0, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 1224
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1223
    nop

    .line 1225
    .local v0, "alias":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 1221
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p0
.end method

.method private static nonAsciiCharset(Ljavax/mail/internet/ContentType;)Z
    .locals 7
    .param p0, "ct"    # Ljavax/mail/internet/ContentType;

    .line 253
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "charset":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 255
    return v1

    .line 256
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 258
    sget-object v2, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    monitor-enter v2

    .line 259
    :try_start_0
    sget-object v3, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 258
    .local v3, "bool":Ljava/lang/Boolean;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    if-nez v3, :cond_2

    .line 263
    :try_start_1
    const-string v2, "\r\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 265
    .local v2, "b":[B
    array-length v4, v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    aget-byte v4, v2, v1

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    aget-byte v4, v2, v6

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 264
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 266
    .end local v2    # "b":[B
    .end local v3    # "bool":Ljava/lang/Boolean;
    .local v1, "bool":Ljava/lang/Boolean;
    goto :goto_1

    .line 268
    .end local v1    # "bool":Ljava/lang/Boolean;
    .restart local v3    # "bool":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "ex":Ljava/lang/RuntimeException;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v1, v2

    .end local v3    # "bool":Ljava/lang/Boolean;
    .local v2, "bool":Ljava/lang/Boolean;
    goto :goto_1

    .line 266
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "bool":Ljava/lang/Boolean;
    .restart local v3    # "bool":Ljava/lang/Boolean;
    :catch_1
    move-exception v1

    .line 267
    .local v1, "uex":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 271
    .end local v3    # "bool":Ljava/lang/Boolean;
    .local v1, "bool":Ljava/lang/Boolean;
    :goto_1
    sget-object v2, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    monitor-enter v2

    .line 272
    :try_start_2
    sget-object v3, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    monitor-exit v2

    move-object v3, v1

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 275
    .end local v1    # "bool":Ljava/lang/Boolean;
    .restart local v3    # "bool":Ljava/lang/Boolean;
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 258
    .end local v3    # "bool":Ljava/lang/Boolean;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static final nonascii(I)Z
    .locals 1
    .param p0, "b"    # I

    .line 1581
    const/16 v0, 0x7f

    if-ge p0, v0, :cond_1

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "specials"    # Ljava/lang/String;

    .line 996
    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 997
    .local v1, "len":I
    :goto_0
    if-nez v1, :cond_1

    .line 998
    const-string v0, "\"\""

    return-object v0

    .line 1004
    :cond_1
    const/4 v2, 0x0

    .line 1005
    .local v2, "needQuoting":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0x22

    if-lt v3, v1, :cond_3

    .line 1031
    .end local v3    # "i":I
    if-eqz v2, :cond_2

    .line 1032
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1033
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1034
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1036
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    return-object p0

    .line 1006
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1007
    .local v5, "c":C
    const/16 v6, 0xa

    const/16 v7, 0xd

    const/16 v8, 0x5c

    if-eq v5, v4, :cond_7

    if-eq v5, v8, :cond_7

    if-eq v5, v7, :cond_7

    if-ne v5, v6, :cond_4

    goto :goto_2

    .line 1026
    :cond_4
    const/16 v4, 0x20

    if-lt v5, v4, :cond_5

    const/16 v4, 0x7f

    if-ge v5, v4, :cond_5

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_6

    .line 1028
    :cond_5
    const/4 v2, 0x1

    .line 1005
    .end local v5    # "c":C
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1009
    .restart local v5    # "c":C
    :cond_7
    :goto_2
    new-instance v9, Ljava/lang/StringBuffer;

    add-int/lit8 v10, v1, 0x3

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1010
    .local v9, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1011
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    const/4 v0, 0x0

    .line 1013
    .local v0, "lastc":I
    move v10, v3

    .local v10, "j":I
    :goto_3
    if-lt v10, v1, :cond_8

    .line 1024
    .end local v10    # "j":I
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1025
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1014
    .restart local v10    # "j":I
    :cond_8
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 1015
    .local v11, "cc":C
    if-eq v11, v4, :cond_9

    if-eq v11, v8, :cond_9

    .line 1016
    if-eq v11, v7, :cond_9

    if-ne v11, v6, :cond_b

    .line 1017
    :cond_9
    if-ne v11, v6, :cond_a

    if-ne v0, v7, :cond_a

    .line 1018
    goto :goto_4

    .line 1020
    :cond_a
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1021
    :cond_b
    :goto_4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1022
    move v0, v11

    .line 1013
    .end local v11    # "cc":C
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;

    .line 1115
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v0, :cond_0

    .line 1116
    return-object p0

    .line 1118
    :cond_0
    const/4 v0, 0x0

    .line 1120
    .local v0, "sb":Ljava/lang/StringBuffer;
    nop

    :goto_0
    const-string v1, "\r\n"

    invoke-static {p0, v1}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v2, v1

    .local v2, "i":I
    if-gez v1, :cond_2

    .line 1158
    if-eqz v0, :cond_1

    .line 1159
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1160
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1162
    :cond_1
    return-object p0

    .line 1121
    :cond_2
    move v1, v2

    .line 1122
    .local v1, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1123
    .local v3, "l":I
    add-int/lit8 v2, v2, 0x1

    .line 1124
    if-ge v2, v3, :cond_3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 1125
    add-int/lit8 v2, v2, 0x1

    .line 1126
    :cond_3
    const/4 v4, 0x0

    if-eqz v1, :cond_6

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_4

    goto :goto_1

    .line 1151
    :cond_4
    if-nez v0, :cond_5

    .line 1152
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v5

    .line 1153
    :cond_5
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1154
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1155
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1130
    :cond_6
    :goto_1
    if-ge v2, v3, :cond_c

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    const/16 v7, 0x9

    const/16 v8, 0x20

    if-eq v5, v8, :cond_7

    if-ne v6, v7, :cond_c

    .line 1131
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 1132
    nop

    :goto_2
    if-ge v2, v3, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v5

    if-eq v5, v8, :cond_8

    if-eq v6, v7, :cond_8

    goto :goto_3

    .line 1133
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1134
    :cond_9
    :goto_3
    if-nez v0, :cond_a

    .line 1135
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v5

    .line 1136
    :cond_a
    if-eqz v1, :cond_b

    .line 1137
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1138
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1140
    :cond_b
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1141
    goto/16 :goto_0

    .line 1144
    .end local v6    # "c":C
    :cond_c
    if-nez v0, :cond_d

    .line 1145
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v5

    .line 1146
    :cond_d
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1147
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1148
    goto/16 :goto_0
.end method
