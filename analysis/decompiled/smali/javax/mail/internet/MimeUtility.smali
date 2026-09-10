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
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    .line 154
    const-string v3, "mail.mime.decodetext.strict"

    invoke-static {v3, v5}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v3

    .line 153
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    .line 156
    const-string v3, "mail.mime.encodeeol.strict"

    invoke-static {v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v3

    .line 155
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    .line 159
    const-string v3, "mail.mime.ignoreunknownencoding"

    .line 158
    invoke-static {v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v3

    .line 157
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->ignoreUnknownEncoding:Z

    .line 167
    const-string v3, "mail.mime.foldencodedwords"

    invoke-static {v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v3

    .line 166
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    .line 169
    const-string v3, "mail.mime.foldtext"

    invoke-static {v3, v5}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v3

    .line 168
    sput-boolean v3, Ljavax/mail/internet/MimeUtility;->foldText:Z

    .line 1297
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    .line 1298
    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    .line 1304
    :try_start_0
    const-class v3, Ljavax/mail/internet/MimeUtility;

    .line 1305
    const-string v4, "/META-INF/javamail.charset.map"

    .line 1304
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1307
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 1309
    :try_start_1
    new-instance v2, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v2, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1312
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_2
    move-object v0, v2

    check-cast v0, Lcom/sun/mail/util/LineInputStream;

    move-object v3, v0

    sget-object v4, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-static {v3, v4}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V

    .line 1315
    move-object v0, v2

    check-cast v0, Lcom/sun/mail/util/LineInputStream;

    move-object v3, v0

    sget-object v4, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-static {v3, v4}, Ljavax/mail/internet/MimeUtility;->loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1318
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1329
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1330
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "8859_1"

    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859_1"

    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859-1"

    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "8859_2"

    const-string v5, "ISO-8859-2"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859_2"

    const-string v5, "ISO-8859-2"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859-2"

    const-string v5, "ISO-8859-2"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "8859_3"

    const-string v5, "ISO-8859-3"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859_3"

    const-string v5, "ISO-8859-3"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1340
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859-3"

    const-string v5, "ISO-8859-3"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "8859_4"

    const-string v5, "ISO-8859-4"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859_4"

    const-string v5, "ISO-8859-4"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859-4"

    const-string v5, "ISO-8859-4"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "8859_5"

    const-string v5, "ISO-8859-5"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859_5"

    const-string v5, "ISO-8859-5"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859-5"

    const-string v5, "ISO-8859-5"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "8859_6"

    const-string v5, "ISO-8859-6"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859_6"

    const-string v5, "ISO-8859-6"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859-6"

    const-string v5, "ISO-8859-6"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "8859_7"

    const-string v5, "ISO-8859-7"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859_7"

    const-string v5, "ISO-8859-7"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859-7"

    const-string v5, "ISO-8859-7"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "8859_8"

    const-string v5, "ISO-8859-8"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859_8"

    const-string v5, "ISO-8859-8"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859-8"

    const-string v5, "ISO-8859-8"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "8859_9"

    const-string v5, "ISO-8859-9"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859_9"

    const-string v5, "ISO-8859-9"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso8859-9"

    const-string v5, "ISO-8859-9"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "sjis"

    const-string v5, "Shift_JIS"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "jis"

    const-string v5, "ISO-2022-JP"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "iso2022jp"

    const-string v5, "ISO-2022-JP"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "euc_jp"

    const-string v5, "euc-jp"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "koi8_r"

    const-string v5, "koi8-r"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "euc_cn"

    const-string v5, "euc-cn"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "euc_tw"

    const-string v5, "euc-tw"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    sget-object v3, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    const-string v4, "euc_kr"

    const-string v5, "euc-kr"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    :cond_1
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1376
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v4, "iso-2022-cn"

    const-string v5, "ISO2022CN"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v4, "iso-2022-kr"

    const-string v5, "ISO2022KR"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v4, "utf-8"

    const-string v5, "UTF8"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v4, "utf8"

    const-string v5, "UTF8"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v4, "ja_jp.iso2022-7"

    const-string v5, "ISO2022JP"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v4, "ja_jp.eucjp"

    const-string v5, "EUCJIS"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v4, "euc-kr"

    const-string v5, "KSC5601"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string v4, "euckr"

    const-string v5, "KSC5601"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v4, "us-ascii"

    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    sget-object v3, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    const-string/jumbo v4, "x-us-ascii"

    const-string v5, "ISO-8859-1"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1422
    :cond_2
    return-void

    .line 1316
    :catchall_0
    move-exception v3

    .line 1318
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1322
    :goto_2
    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1324
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 1319
    :catch_1
    move-exception v4

    goto :goto_2

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    goto/16 :goto_0

    .line 1316
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAscii(Ljava/io/InputStream;IZ)I
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "max"    # I
    .param p2, "breakOnNonAscii"    # Z

    .prologue
    .line 1504
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v12, 0x0

    .line 1506
    .local v12, "non_ascii":I
    const/16 v3, 0x1000

    .line 1507
    .local v3, "block":I
    const/4 v10, 0x0

    .line 1508
    .local v10, "linelen":I
    const/4 v11, 0x0

    .local v11, "longLine":Z
    const/4 v2, 0x0

    .line 1509
    .local v2, "badEOL":Z
    sget-boolean v13, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    if-eqz v13, :cond_2

    if-eqz p2, :cond_2

    const/4 v5, 0x1

    .line 1510
    .local v5, "checkEOL":Z
    :goto_0
    const/4 v4, 0x0

    .line 1511
    .local v4, "buf":[B
    if-eqz p1, :cond_0

    .line 1512
    const/4 v13, -0x1

    if-ne p1, v13, :cond_3

    const/16 v3, 0x1000

    .line 1513
    :goto_1
    new-array v4, v3, [B

    .line 1515
    :cond_0
    :goto_2
    if-nez p1, :cond_4

    .line 1553
    :cond_1
    :goto_3
    if-nez p1, :cond_e

    if-eqz p2, :cond_e

    .line 1560
    const/4 v13, 0x3

    .line 1577
    :goto_4
    return v13

    .line 1509
    .end local v4    # "buf":[B
    .end local v5    # "checkEOL":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1512
    .restart local v4    # "buf":[B
    .restart local v5    # "checkEOL":Z
    :cond_3
    const/16 v13, 0x1000

    invoke-static {p1, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    .line 1517
    :cond_4
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v13, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    .local v9, "len":I
    const/4 v13, -0x1

    if-eq v9, v13, :cond_1

    .line 1519
    const/4 v8, 0x0

    .line 1520
    .local v8, "lastb":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    if-lt v6, v9, :cond_5

    .line 1549
    const/4 v13, -0x1

    if-eq p1, v13, :cond_0

    .line 1550
    sub-int/2addr p1, v9

    goto :goto_2

    .line 1525
    :cond_5
    aget-byte v13, v4, v6

    and-int/lit16 v1, v13, 0xff

    .line 1526
    .local v1, "b":I
    if-eqz v5, :cond_8

    .line 1527
    const/16 v13, 0xd

    if-ne v8, v13, :cond_6

    const/16 v13, 0xa

    if-ne v1, v13, :cond_7

    .line 1528
    :cond_6
    const/16 v13, 0xd

    if-eq v8, v13, :cond_8

    const/16 v13, 0xa

    if-ne v1, v13, :cond_8

    .line 1529
    :cond_7
    const/4 v2, 0x1

    .line 1530
    :cond_8
    const/16 v13, 0xd

    if-eq v1, v13, :cond_9

    const/16 v13, 0xa

    if-ne v1, v13, :cond_b

    .line 1531
    :cond_9
    const/4 v10, 0x0

    .line 1537
    :cond_a
    :goto_6
    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_d

    .line 1538
    if-eqz p2, :cond_c

    .line 1539
    const/4 v13, 0x3

    goto :goto_4

    .line 1533
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 1534
    const/16 v13, 0x3e6

    if-le v10, v13, :cond_a

    .line 1535
    const/4 v11, 0x1

    goto :goto_6

    .line 1541
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 1544
    :goto_7
    move v8, v1

    .line 1520
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1543
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1546
    .end local v1    # "b":I
    .end local v6    # "i":I
    .end local v8    # "lastb":I
    .end local v9    # "len":I
    :catch_0
    move-exception v7

    .line 1547
    .local v7, "ioex":Ljava/io/IOException;
    goto :goto_3

    .line 1562
    .end local v7    # "ioex":Ljava/io/IOException;
    :cond_e
    if-nez v12, :cond_11

    .line 1567
    if-eqz v2, :cond_f

    .line 1568
    const/4 v13, 0x3

    goto :goto_4

    .line 1570
    :cond_f
    if-eqz v11, :cond_10

    .line 1571
    const/4 v13, 0x2

    goto :goto_4

    .line 1573
    :cond_10
    const/4 v13, 0x1

    goto :goto_4

    .line 1575
    :cond_11
    if-le v0, v12, :cond_12

    .line 1576
    const/4 v13, 0x2

    goto :goto_4

    .line 1577
    :cond_12
    const/4 v13, 0x3

    goto :goto_4
.end method

.method static checkAscii(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1433
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v3, 0x0

    .line 1434
    .local v3, "non_ascii":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1436
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 1443
    if-nez v3, :cond_2

    .line 1444
    const/4 v4, 0x1

    .line 1448
    :goto_1
    return v4

    .line 1437
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1438
    add-int/lit8 v3, v3, 0x1

    .line 1436
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1440
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1445
    :cond_2
    if-le v0, v3, :cond_3

    .line 1446
    const/4 v4, 0x2

    goto :goto_1

    .line 1448
    :cond_3
    const/4 v4, 0x3

    goto :goto_1
.end method

.method static checkAscii([B)I
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 1462
    const/4 v0, 0x0

    .local v0, "ascii":I
    const/4 v2, 0x0

    .line 1464
    .local v2, "non_ascii":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 1474
    if-nez v2, :cond_2

    .line 1475
    const/4 v3, 0x1

    .line 1479
    :goto_1
    return v3

    .line 1468
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->nonascii(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1469
    add-int/lit8 v2, v2, 0x1

    .line 1464
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1471
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1476
    :cond_2
    if-le v0, v2, :cond_3

    .line 1477
    const/4 v3, 0x2

    goto :goto_1

    .line 1479
    :cond_3
    const/4 v3, 0x3

    goto :goto_1
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

    .prologue
    .line 374
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    new-instance v0, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    .line 389
    .end local p0    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 376
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    new-instance v0, Lcom/sun/mail/util/QPDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPDecoderStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 378
    :cond_2
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 379
    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 380
    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    :cond_3
    new-instance v0, Lcom/sun/mail/util/UUDecoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUDecoderStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 382
    :cond_4
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    sget-boolean v0, Ljavax/mail/internet/MimeUtility;->ignoreUnknownEncoding:Z

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3f

    .line 947
    const/4 v4, 0x0

    .line 948
    .local v4, "start":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 949
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    const-string v5, "=?"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .local v2, "i":I
    if-gez v2, :cond_1

    .line 972
    :cond_0
    if-nez v4, :cond_2

    .line 976
    .end local p0    # "word":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 950
    .restart local p0    # "word":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 952
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 953
    .local v1, "end":I
    if-ltz v1, :cond_0

    .line 956
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 957
    if-ltz v1, :cond_0

    .line 960
    const-string v5, "?="

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 961
    if-ltz v1, :cond_0

    .line 963
    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 969
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 970
    add-int/lit8 v4, v1, 0x2

    goto :goto_0

    .line 974
    .end local v1    # "end":I
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 975
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 976
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 966
    .restart local v1    # "end":I
    .restart local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "etext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 577
    const-string v2, " \t\n\r"

    .line 589
    .local v2, "lwsp":Ljava/lang/String;
    const-string v10, "=?"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 657
    .end local p0    # "etext":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 594
    .restart local p0    # "etext":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/util/StringTokenizer;

    const/4 v10, 0x1

    invoke-direct {v7, p0, v2, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 595
    .local v7, "st":Ljava/util/StringTokenizer;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 596
    .local v6, "sb":Ljava/lang/StringBuffer;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v9, "wsb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 599
    .local v4, "prevWasEncoded":Z
    :goto_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_1

    .line 656
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 657
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 603
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v10, 0x20

    if-eq v0, v10, :cond_2

    const/16 v10, 0x9

    if-eq v0, v10, :cond_2

    .line 604
    const/16 v10, 0xd

    if-eq v0, v10, :cond_2

    const/16 v10, 0xa

    if-ne v0, v10, :cond_3

    .line 605
    :cond_2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 610
    :cond_3
    :try_start_0
    invoke-static {v5}, Ljavax/mail/internet/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 612
    .local v8, "word":Ljava/lang/String;
    if-nez v4, :cond_4

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 616
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :cond_4
    const/4 v4, 0x1

    .line 652
    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_1

    .line 619
    .end local v8    # "word":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 621
    .local v3, "pex":Ljavax/mail/internet/ParseException;
    move-object v8, v5

    .line 623
    .restart local v8    # "word":Ljava/lang/String;
    sget-boolean v10, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v10, :cond_9

    .line 624
    invoke-static {v8}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "dword":Ljava/lang/String;
    if-eq v1, v8, :cond_7

    .line 628
    if-eqz v4, :cond_5

    const-string v10, "=?"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 633
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 634
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 637
    :cond_6
    const-string v10, "?="

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    .line 638
    move-object v8, v1

    .line 639
    goto :goto_2

    .line 641
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 642
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 643
    :cond_8
    const/4 v4, 0x0

    .line 645
    goto :goto_2

    .line 647
    .end local v1    # "dword":Ljava/lang/String;
    :cond_9
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 648
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 649
    :cond_a
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "eword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 842
    const-string v17, "=?"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 843
    new-instance v17, Ljavax/mail/internet/ParseException;

    .line 844
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "encoded word does not start with \"=?\": "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 843
    invoke-direct/range {v17 .. v18}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 847
    :cond_0
    const/4 v14, 0x2

    .line 848
    .local v14, "start":I
    const/16 v17, 0x3f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .local v12, "pos":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_1

    .line 849
    new-instance v17, Ljavax/mail/internet/ParseException;

    .line 850
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "encoded word does not include charset: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 849
    invoke-direct/range {v17 .. v18}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 851
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 852
    .local v4, "charset":Ljava/lang/String;
    const/16 v17, 0x2a

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 853
    .local v11, "lpos":I
    if-ltz v11, :cond_2

    .line 854
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 855
    :cond_2
    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 858
    add-int/lit8 v14, v12, 0x1

    .line 859
    const/16 v17, 0x3f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_3

    .line 860
    new-instance v17, Ljavax/mail/internet/ParseException;

    .line 861
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "encoded word does not include encoding: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 860
    invoke-direct/range {v17 .. v18}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 862
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 865
    .local v7, "encoding":Ljava/lang/String;
    add-int/lit8 v14, v12, 0x1

    .line 866
    const-string v17, "?="

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_4

    .line 867
    new-instance v17, Ljavax/mail/internet/ParseException;

    .line 868
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "encoded word does not end with \"?=\": "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 867
    invoke-direct/range {v17 .. v18}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 876
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 880
    .local v16, "word":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_a

    .line 883
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static/range {v16 .. v16}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 887
    .local v2, "bis":Ljava/io/ByteArrayInputStream;
    const-string v17, "B"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 888
    new-instance v10, Lcom/sun/mail/util/BASE64DecoderStream;

    invoke-direct {v10, v2}, Lcom/sun/mail/util/BASE64DecoderStream;-><init>(Ljava/io/InputStream;)V

    .line 900
    .local v10, "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 901
    .local v5, "count":I
    new-array v3, v5, [B

    .line 903
    .local v3, "bytes":[B
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v3, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 907
    if-gtz v5, :cond_9

    const-string v6, ""

    .line 913
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bytes":[B
    .end local v5    # "count":I
    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "decodedWord":Ljava/lang/String;
    :goto_1
    add-int/lit8 v17, v12, 0x2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 915
    add-int/lit8 v17, v12, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 916
    .local v13, "rest":Ljava/lang/String;
    sget-boolean v17, Ljavax/mail/internet/MimeUtility;->decodeStrict:Z

    if-nez v17, :cond_5

    .line 917
    invoke-static {v13}, Ljavax/mail/internet/MimeUtility;->decodeInnerWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 918
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 920
    .end local v13    # "rest":Ljava/lang/String;
    :cond_6
    return-object v6

    .line 889
    .end local v6    # "decodedWord":Ljava/lang/String;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    :cond_7
    const-string v17, "Q"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 890
    new-instance v10, Lcom/sun/mail/util/QDecoderStream;

    invoke-direct {v10, v2}, Lcom/sun/mail/util/QDecoderStream;-><init>(Ljava/io/InputStream;)V

    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 892
    .end local v10    # "is":Ljava/io/InputStream;
    :cond_8
    new-instance v17, Ljava/io/UnsupportedEncodingException;

    .line 893
    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "unknown encoding: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 892
    invoke-direct/range {v17 .. v18}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 921
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v15

    .line 924
    .local v15, "uex":Ljava/io/UnsupportedEncodingException;
    throw v15

    .line 908
    .end local v15    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bytes":[B
    .restart local v5    # "count":I
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_9
    :try_start_1
    new-instance v6, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v6, v3, v0, v5, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 925
    .end local v2    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v3    # "bytes":[B
    .end local v5    # "count":I
    .end local v10    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v9

    .line 927
    .local v9, "ioex":Ljava/io/IOException;
    new-instance v17, Ljavax/mail/internet/ParseException;

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 911
    .end local v9    # "ioex":Ljava/io/IOException;
    :cond_a
    :try_start_2
    const-string v6, ""
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .restart local v6    # "decodedWord":Ljava/lang/String;
    goto :goto_1

    .line 928
    .end local v6    # "decodedWord":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 936
    .local v8, "iex":Ljava/lang/IllegalArgumentException;
    new-instance v17, Ljava/io/UnsupportedEncodingException;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method private static doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 19
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

    .prologue
    .line 775
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 777
    .local v11, "bytes":[B
    if-eqz p1, :cond_2

    .line 778
    invoke-static {v11}, Lcom/sun/mail/util/BEncoderStream;->encodedLength([B)I

    move-result v15

    .line 783
    .local v15, "len":I
    :goto_0
    move/from16 v0, p3

    if-le v15, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    .local v17, "size":I
    const/4 v3, 0x1

    move/from16 v0, v17

    if-le v0, v3, :cond_3

    .line 787
    div-int/lit8 v18, v17, 0x2

    .line 788
    .local v18, "split":I
    add-int/lit8 v3, v18, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 789
    add-int/lit8 v18, v18, -0x1

    .line 790
    :cond_0
    if-lez v18, :cond_1

    .line 791
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v3 .. v10}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 793
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 794
    const/4 v8, 0x0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 793
    invoke-static/range {v3 .. v10}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 823
    .end local v17    # "size":I
    .end local v18    # "split":I
    :goto_1
    return-void

    .line 780
    .end local v15    # "len":I
    :cond_2
    move/from16 v0, p6

    invoke-static {v11, v0}, Lcom/sun/mail/util/QEncoderStream;->encodedLength([BZ)I

    move-result v15

    .restart local v15    # "len":I
    goto :goto_0

    .line 797
    :cond_3
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 799
    .local v16, "os":Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_5

    .line 800
    new-instance v13, Lcom/sun/mail/util/BEncoderStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/sun/mail/util/BEncoderStream;-><init>(Ljava/io/OutputStream;)V

    .line 805
    .local v13, "eos":Ljava/io/OutputStream;
    :goto_2
    :try_start_0
    invoke-virtual {v13, v11}, Ljava/io/OutputStream;->write([B)V

    .line 806
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 809
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 812
    .local v12, "encodedBytes":[B
    if-nez p5, :cond_4

    .line 813
    sget-boolean v3, Ljavax/mail/internet/MimeUtility;->foldEncodedWords:Z

    if-eqz v3, :cond_6

    .line 814
    const-string v3, "\r\n "

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    :cond_4
    :goto_4
    move-object/from16 v0, p7

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    array-length v3, v12

    if-lt v14, v3, :cond_7

    .line 821
    const-string v3, "?="

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 802
    .end local v12    # "encodedBytes":[B
    .end local v13    # "eos":Ljava/io/OutputStream;
    .end local v14    # "i":I
    :cond_5
    new-instance v13, Lcom/sun/mail/util/QEncoderStream;

    move-object/from16 v0, v16

    move/from16 v1, p6

    invoke-direct {v13, v0, v1}, Lcom/sun/mail/util/QEncoderStream;-><init>(Ljava/io/OutputStream;Z)V

    .restart local v13    # "eos":Ljava/io/OutputStream;
    goto :goto_2

    .line 816
    .restart local v12    # "encodedBytes":[B
    :cond_6
    const-string v3, " "

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 820
    .restart local v14    # "i":I
    :cond_7
    aget-byte v3, v12, v14

    int-to-char v3, v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 819
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 807
    .end local v12    # "encodedBytes":[B
    .end local v14    # "i":I
    :catch_0
    move-exception v3

    goto :goto_3
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

    .prologue
    .line 407
    if-nez p1, :cond_1

    .line 420
    .end local p0    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 409
    .restart local p0    # "os":Ljava/io/OutputStream;
    :cond_1
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 411
    :cond_2
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 413
    :cond_3
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 414
    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 415
    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 416
    :cond_4
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 417
    :cond_5
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .prologue
    .line 445
    if-nez p1, :cond_1

    .line 458
    .end local p0    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-object p0

    .line 447
    .restart local p0    # "os":Ljava/io/OutputStream;
    :cond_1
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    new-instance v0, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 449
    :cond_2
    const-string v0, "quoted-printable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    new-instance v0, Lcom/sun/mail/util/QPEncoderStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    goto :goto_0

    .line 451
    :cond_3
    const-string/jumbo v0, "uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 452
    const-string/jumbo v0, "x-uuencode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 453
    const-string/jumbo v0, "x-uue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 454
    :cond_4
    new-instance v0, Lcom/sun/mail/util/UUEncoderStream;

    invoke-direct {v0, p0, p2}, Lcom/sun/mail/util/UUEncoderStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    .line 455
    :cond_5
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    const-string v0, "7bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const-string v0, "8bit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 501
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

    .prologue
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

    .prologue
    const/4 v0, 0x0

    .line 683
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

    .prologue
    .line 711
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "encodingWord"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 727
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result v8

    .line 728
    .local v8, "ascii":I
    if-ne v8, v5, :cond_0

    .line 765
    .end local p0    # "string":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 733
    .restart local p0    # "string":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_2

    .line 734
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, "jcharset":Ljava/lang/String;
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p1

    .line 740
    :goto_1
    if-nez p2, :cond_1

    .line 741
    const/4 v0, 0x3

    if-eq v8, v0, :cond_3

    .line 742
    const-string p2, "Q"

    .line 748
    :cond_1
    :goto_2
    const-string v0, "B"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 749
    const/4 v1, 0x1

    .line 756
    .local v1, "b64":Z
    :goto_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 761
    .local v7, "outb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v3, v0, 0x44

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "=?"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v6, p3

    .line 757
    invoke-static/range {v0 .. v7}, Ljavax/mail/internet/MimeUtility;->doEncode(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZZLjava/lang/StringBuffer;)V

    .line 765
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 737
    .end local v1    # "b64":Z
    .end local v2    # "jcharset":Ljava/lang/String;
    .end local v7    # "outb":Ljava/lang/StringBuffer;
    :cond_2
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "jcharset":Ljava/lang/String;
    goto :goto_1

    .line 744
    :cond_3
    const-string p2, "B"

    goto :goto_2

    .line 750
    :cond_4
    const-string v0, "Q"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 751
    const/4 v1, 0x0

    .restart local v1    # "b64":Z
    goto :goto_3

    .line 753
    .end local v1    # "b64":Z
    :cond_5
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown transfer encoding: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 753
    invoke-direct {v0, v3}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fold(ILjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "used"    # I
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/16 v10, 0x4c

    const/16 v9, 0x20

    const/16 v8, 0x9

    .line 1056
    sget-boolean v7, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v7, :cond_0

    move-object v5, p1

    .end local p1    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    move-object v7, p1

    .line 1103
    :goto_0
    return-object v7

    .line 1062
    .end local v5    # "s":Ljava/lang/String;
    .restart local p1    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "end":I
    :goto_1
    if-gez v1, :cond_3

    .line 1067
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v1, v7, :cond_2

    .line 1068
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1071
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, p0

    if-gt v7, v10, :cond_5

    move-object v5, p1

    .end local p1    # "s":Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    move-object v7, p1

    .line 1072
    goto :goto_0

    .line 1063
    .end local v5    # "s":Ljava/lang/String;
    .restart local p1    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1064
    .local v0, "c":C
    if-eq v0, v9, :cond_4

    if-eq v0, v8, :cond_4

    const/16 v7, 0xd

    if-eq v0, v7, :cond_4

    const/16 v7, 0xa

    if-ne v0, v7, :cond_1

    .line 1062
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1075
    .end local v0    # "c":C
    :cond_5
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1076
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 1077
    .local v3, "lastc":C
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, p0

    if-gt v7, v10, :cond_6

    .line 1102
    :goto_3
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1103
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    .end local p1    # "s":Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    goto :goto_0

    .line 1078
    .end local v5    # "s":Ljava/lang/String;
    .restart local p1    # "s":Ljava/lang/String;
    :cond_6
    const/4 v4, -0x1

    .line 1079
    .local v4, "lastspace":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v2, v7, :cond_8

    .line 1088
    :cond_7
    if-ne v4, v11, :cond_c

    .line 1090
    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1091
    const-string p1, ""

    .line 1092
    const/4 p0, 0x0

    .line 1093
    goto :goto_3

    .line 1080
    :cond_8
    if-eq v4, v11, :cond_9

    add-int v7, p0, v2

    if-gt v7, v10, :cond_7

    .line 1082
    :cond_9
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1083
    .restart local v0    # "c":C
    if-eq v0, v9, :cond_a

    if-ne v0, v8, :cond_b

    .line 1084
    :cond_a
    if-eq v3, v9, :cond_b

    if-eq v3, v8, :cond_b

    .line 1085
    move v4, v2

    .line 1086
    :cond_b
    move v3, v0

    .line 1079
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1095
    .end local v0    # "c":C
    :cond_c
    invoke-virtual {p1, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1096
    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1097
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1098
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1099
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1100
    const/4 p0, 0x1

    goto :goto_2
.end method

.method public static getDefaultJavaCharset()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1242
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1247
    const/4 v0, 0x0

    .line 1249
    .local v0, "mimecs":Ljava/lang/String;
    :try_start_0
    const-string v3, "mail.mime.charset"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1251
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1252
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1253
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1274
    :goto_1
    return-object v3

    .line 1257
    :cond_0
    :try_start_1
    const-string v3, "file.encoding"

    .line 1258
    const-string v4, "8859_1"

    .line 1257
    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1274
    :cond_1
    :goto_2
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    goto :goto_1

    .line 1259
    :catch_0
    move-exception v2

    .line 1267
    .local v2, "sex":Ljava/lang/SecurityException;
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v3, Ljavax/mail/internet/MimeUtility$1NullInputStream;

    invoke-direct {v3}, Ljavax/mail/internet/MimeUtility$1NullInputStream;-><init>()V

    invoke-direct {v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1268
    .local v1, "reader":Ljava/io/InputStreamReader;
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    .line 1269
    sget-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1270
    const-string v3, "8859_1"

    sput-object v3, Ljavax/mail/internet/MimeUtility;->defaultJavaCharset:Ljava/lang/String;

    goto :goto_2

    .line 1250
    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .end local v2    # "sex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method static getDefaultMIMECharset()Ljava/lang/String;
    .locals 1

    .prologue
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

    .line 1284
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;
    .locals 9
    .param p0, "dh"    # Ljavax/activation/DataHandler;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    const/4 v3, 0x0

    .line 310
    .local v3, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 311
    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getDataSource()Ljavax/activation/DataSource;

    move-result-object v6

    invoke-static {v6}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v3

    .line 352
    .end local v3    # "encoding":Ljava/lang/String;
    .local v4, "encoding":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 314
    .end local v4    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v2, Ljavax/mail/internet/ContentType;

    invoke-virtual {p0}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .local v2, "cType":Ljavax/mail/internet/ContentType;
    const-string v6, "text/*"

    invoke-virtual {v2, v6}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 321
    new-instance v0, Ljavax/mail/internet/AsciiOutputStream;

    invoke-direct {v0, v7, v7}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 323
    .local v0, "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_1
    invoke-virtual {p0, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :goto_1
    invoke-virtual {v0}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 335
    const-string v3, "base64"

    :goto_2
    move-object v4, v3

    .end local v3    # "encoding":Ljava/lang/String;
    .restart local v4    # "encoding":Ljava/lang/String;
    move-object v1, v2

    .end local v2    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v1    # "cType":Ljavax/mail/internet/ContentType;
    move-object v6, v3

    .line 352
    goto :goto_0

    .line 315
    .end local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    .end local v4    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 316
    .local v5, "ex":Ljava/lang/Exception;
    const-string v6, "base64"

    move-object v4, v3

    .end local v3    # "encoding":Ljava/lang/String;
    .restart local v4    # "encoding":Ljava/lang/String;
    goto :goto_0

    .line 329
    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .end local v4    # "encoding":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    .restart local v2    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v3    # "encoding":Ljava/lang/String;
    :pswitch_0
    const-string v3, "7bit"

    .line 330
    goto :goto_2

    .line 332
    :pswitch_1
    const-string v3, "quoted-printable"

    .line 333
    goto :goto_2

    .line 342
    .end local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :cond_1
    new-instance v0, Ljavax/mail/internet/AsciiOutputStream;

    sget-boolean v6, Ljavax/mail/internet/MimeUtility;->encodeEolStrict:Z

    invoke-direct {v0, v8, v6}, Ljavax/mail/internet/AsciiOutputStream;-><init>(ZZ)V

    .line 344
    .restart local v0    # "aos":Ljavax/mail/internet/AsciiOutputStream;
    :try_start_2
    invoke-virtual {p0, v0}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 346
    :goto_3
    invoke-virtual {v0}, Ljavax/mail/internet/AsciiOutputStream;->getAscii()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 347
    const-string v3, "7bit"

    goto :goto_2

    .line 349
    :cond_2
    const-string v3, "base64"

    goto :goto_2

    .line 324
    :catch_1
    move-exception v6

    goto :goto_1

    .line 345
    :catch_2
    move-exception v6

    goto :goto_3

    .line 327
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getEncoding(Ljavax/activation/DataSource;)Ljava/lang/String;
    .locals 10
    .param p0, "ds"    # Ljavax/activation/DataSource;

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "cType":Ljavax/mail/internet/ContentType;
    const/4 v6, 0x0

    .line 201
    .local v6, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 203
    .local v2, "encoding":Ljava/lang/String;
    instance-of v8, p0, Ljavax/mail/EncodingAware;

    if-eqz v8, :cond_0

    move-object v8, p0

    .line 204
    check-cast v8, Ljavax/mail/EncodingAware;

    invoke-interface {v8}, Ljavax/mail/EncodingAware;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 205
    if-eqz v2, :cond_0

    move-object v3, v2

    .end local v2    # "encoding":Ljava/lang/String;
    .local v3, "encoding":Ljava/lang/String;
    move-object v8, v2

    .line 240
    :goto_0
    return-object v8

    .line 209
    .end local v3    # "encoding":Ljava/lang/String;
    .restart local v2    # "encoding":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-interface {p0}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .local v1, "cType":Ljavax/mail/internet/ContentType;
    :try_start_1
    invoke-interface {p0}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 212
    const-string v8, "text/*"

    invoke-virtual {v1, v8}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v7

    .line 214
    .local v7, "isText":Z
    const/4 v9, -0x1

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    :goto_1
    invoke-static {v6, v9, v8}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/io/InputStream;IZ)I

    move-result v5

    .line 215
    .local v5, "i":I
    packed-switch v5, :pswitch_data_0

    .line 226
    const-string v2, "base64"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    :goto_2
    if-eqz v6, :cond_1

    .line 236
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_3
    move-object v3, v2

    .end local v2    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    move-object v0, v1

    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v0    # "cType":Ljavax/mail/internet/ContentType;
    move-object v8, v2

    .line 240
    goto :goto_0

    .line 214
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v5    # "i":I
    .restart local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v2    # "encoding":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    .line 217
    .restart local v5    # "i":I
    :pswitch_0
    :try_start_3
    const-string v2, "7bit"

    .line 218
    goto :goto_2

    .line 220
    :pswitch_1
    if-eqz v7, :cond_3

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->nonAsciiCharset(Ljavax/mail/internet/ContentType;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 221
    const-string v2, "base64"

    goto :goto_2

    .line 223
    :cond_3
    const-string v2, "quoted-printable"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    goto :goto_2

    .line 230
    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .end local v5    # "i":I
    .end local v7    # "isText":Z
    .restart local v0    # "cType":Ljavax/mail/internet/ContentType;
    :catch_0
    move-exception v4

    .line 235
    .local v4, "ex":Ljava/lang/Exception;
    :goto_4
    if-eqz v6, :cond_4

    .line 236
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 231
    :cond_4
    :goto_5
    const-string v8, "base64"

    move-object v3, v2

    .end local v2    # "encoding":Ljava/lang/String;
    .restart local v3    # "encoding":Ljava/lang/String;
    goto :goto_0

    .line 232
    .end local v3    # "encoding":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v2    # "encoding":Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 235
    :goto_6
    if-eqz v6, :cond_5

    .line 236
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 238
    :cond_5
    :goto_7
    throw v8

    .line 237
    .restart local v4    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_5

    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    goto :goto_7

    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v5    # "i":I
    .restart local v7    # "isText":Z
    :catch_3
    move-exception v8

    goto :goto_3

    .line 232
    .end local v5    # "i":I
    .end local v7    # "isText":Z
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v0    # "cType":Ljavax/mail/internet/ContentType;
    goto :goto_6

    .line 230
    .end local v0    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v1    # "cType":Ljavax/mail/internet/ContentType;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "cType":Ljavax/mail/internet/ContentType;
    .restart local v0    # "cType":Ljavax/mail/internet/ContentType;
    goto :goto_4

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .prologue
    .line 1172
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .prologue
    const/4 v3, -0x1

    .line 1177
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1178
    .local v2, "len":I
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    move v1, v3

    .line 1184
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    :goto_1
    return v1

    .line 1179
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-gez v4, :cond_0

    .line 1178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1183
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    move v1, v3

    .line 1184
    goto :goto_1
.end method

.method public static javaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 1196
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 1202
    .end local p0    # "charset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1201
    .restart local p0    # "charset":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljavax/mail/internet/MimeUtility;->mime2java:Ljava/util/Hashtable;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1202
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static loadMappings(Lcom/sun/mail/util/LineInputStream;Ljava/util/Hashtable;)V
    .locals 6
    .param p0, "is"    # Lcom/sun/mail/util/LineInputStream;
    .param p1, "table"    # Ljava/util/Hashtable;

    .prologue
    .line 1394
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1399
    .local v0, "currLine":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1418
    .end local v0    # "currLine":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1395
    :catch_0
    move-exception v1

    .line 1396
    .local v1, "ioex":Ljava/io/IOException;
    goto :goto_1

    .line 1401
    .end local v1    # "ioex":Ljava/io/IOException;
    .restart local v0    # "currLine":Ljava/lang/String;
    :cond_2
    const-string v5, "--"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "--"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1406
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1411
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, " \t"

    invoke-direct {v3, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    .local v3, "tk":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1414
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 1415
    .local v4, "value":Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1416
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public static mimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 1219
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    if-nez p0, :cond_1

    .line 1225
    .end local p0    # "charset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1224
    .restart local p0    # "charset":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljavax/mail/internet/MimeUtility;->java2mime:Ljava/util/Hashtable;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1225
    .local v0, "alias":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p0, v0

    goto :goto_0
.end method

.method private static nonAsciiCharset(Ljavax/mail/internet/ContentType;)Z
    .locals 9
    .param p0, "ct"    # Ljavax/mail/internet/ContentType;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 253
    const-string v7, "charset"

    invoke-virtual {p0, v7}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "charset":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 275
    :goto_0
    return v5

    .line 256
    :cond_0
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 258
    sget-object v7, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    monitor-enter v7

    .line 259
    :try_start_0
    sget-object v8, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 258
    .local v1, "bool":Ljava/lang/Boolean;
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-nez v1, :cond_1

    .line 263
    :try_start_1
    const-string v7, "\r\n"

    invoke-virtual {v7, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 265
    .local v0, "b":[B
    array-length v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    const/4 v7, 0x0

    aget-byte v7, v0, v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    aget-byte v7, v0, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    .line 264
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 271
    .end local v0    # "b":[B
    :goto_2
    sget-object v6, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    monitor-enter v6

    .line 272
    :try_start_2
    sget-object v5, Ljavax/mail/internet/MimeUtility;->nonAsciiCharsetMap:Ljava/util/Map;

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    .line 258
    .end local v1    # "bool":Ljava/lang/Boolean;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .restart local v0    # "b":[B
    .restart local v1    # "bool":Ljava/lang/Boolean;
    :cond_2
    move v5, v6

    .line 265
    goto :goto_1

    .line 266
    .end local v0    # "b":[B
    :catch_0
    move-exception v4

    .line 267
    .local v4, "uex":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 268
    .end local v4    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 269
    .local v3, "ex":Ljava/lang/RuntimeException;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 271
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method static final nonascii(I)Z
    .locals 1
    .param p0, "b"    # I

    .prologue
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

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "specials"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/16 v13, 0x5c

    const/16 v12, 0xd

    const/16 v11, 0xa

    const/16 v10, 0x22

    .line 996
    if-nez p0, :cond_1

    move v5, v8

    .line 997
    .local v5, "len":I
    :goto_0
    if-nez v5, :cond_2

    .line 998
    const-string p0, "\"\""

    .line 1036
    .end local p0    # "word":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p0

    .line 996
    .end local v5    # "len":I
    .restart local p0    # "word":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_0

    .line 1004
    .restart local v5    # "len":I
    :cond_2
    const/4 v6, 0x0

    .line 1005
    .local v6, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v5, :cond_3

    .line 1031
    if-eqz v6, :cond_0

    .line 1032
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v8, v5, 0x2

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1033
    .local v7, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1034
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1006
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1007
    .local v0, "c":C
    if-eq v0, v10, :cond_4

    if-eq v0, v13, :cond_4

    if-eq v0, v12, :cond_4

    if-ne v0, v11, :cond_9

    .line 1009
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    add-int/lit8 v9, v5, 0x3

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1010
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1011
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    const/4 v4, 0x0

    .line 1013
    .local v4, "lastc":I
    move v3, v2

    .local v3, "j":I
    :goto_3
    if-lt v3, v5, :cond_5

    .line 1024
    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1025
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1014
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1015
    .local v1, "cc":C
    if-eq v1, v10, :cond_6

    if-eq v1, v13, :cond_6

    .line 1016
    if-eq v1, v12, :cond_6

    if-ne v1, v11, :cond_7

    .line 1017
    :cond_6
    if-ne v1, v11, :cond_8

    if-ne v4, v12, :cond_8

    .line 1021
    :cond_7
    :goto_4
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1022
    move v4, v1

    .line 1013
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1020
    :cond_8
    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1026
    .end local v1    # "cc":C
    .end local v3    # "j":I
    .end local v4    # "lastc":I
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_9
    const/16 v9, 0x20

    if-lt v0, v9, :cond_a

    const/16 v9, 0x7f

    if-ge v0, v9, :cond_a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_b

    .line 1028
    :cond_a
    const/4 v6, 0x1

    .line 1005
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x9

    const/16 v8, 0x20

    const/4 v7, 0x0

    .line 1115
    sget-boolean v5, Ljavax/mail/internet/MimeUtility;->foldText:Z

    if-nez v5, :cond_1

    .line 1162
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1118
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 1120
    .local v3, "sb":Ljava/lang/StringBuffer;
    :goto_1
    const-string v5, "\r\n"

    invoke-static {p0, v5}, Ljavax/mail/internet/MimeUtility;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .local v1, "i":I
    if-gez v1, :cond_2

    .line 1158
    if-eqz v3, :cond_0

    .line 1159
    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1160
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1121
    :cond_2
    move v4, v1

    .line 1122
    .local v4, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1123
    .local v2, "l":I
    add-int/lit8 v1, v1, 0x1

    .line 1124
    if-ge v1, v2, :cond_3

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    .line 1125
    add-int/lit8 v1, v1, 0x1

    .line 1126
    :cond_3
    if-eqz v4, :cond_4

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_c

    .line 1130
    :cond_4
    if-ge v1, v2, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    if-eq v0, v8, :cond_5

    if-ne v0, v9, :cond_a

    .line 1131
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 1132
    :goto_2
    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_9

    if-eq v0, v9, :cond_9

    .line 1134
    :cond_6
    if-nez v3, :cond_7

    .line 1135
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1136
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_7
    if-eqz v4, :cond_8

    .line 1137
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1138
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1140
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1141
    goto :goto_1

    .line 1133
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1144
    .end local v0    # "c":C
    :cond_a
    if-nez v3, :cond_b

    .line 1145
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1146
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_b
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1147
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1148
    goto/16 :goto_1

    .line 1151
    :cond_c
    if-nez v3, :cond_d

    .line 1152
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3    # "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1153
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_d
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1154
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1155
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1
.end method
