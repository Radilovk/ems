.class public Lorg/apache/poi/util/CodePageUtil;
.super Ljava/lang/Object;
.source "CodePageUtil.java"


# static fields
.field public static final CP_037:I = 0x25

.field public static final CP_EUC_JP:I = 0xcadc

.field public static final CP_EUC_KR:I = 0xcaed

.field public static final CP_GB18030:I = 0xd698

.field public static final CP_GB2312:I = 0xcec8

.field public static final CP_GBK:I = 0x3a8

.field public static final CP_ISO_2022_JP1:I = 0xc42c

.field public static final CP_ISO_2022_JP2:I = 0xc42d

.field public static final CP_ISO_2022_JP3:I = 0xc42e

.field public static final CP_ISO_2022_KR:I = 0xc431

.field public static final CP_ISO_8859_1:I = 0x6faf

.field public static final CP_ISO_8859_2:I = 0x6fb0

.field public static final CP_ISO_8859_3:I = 0x6fb1

.field public static final CP_ISO_8859_4:I = 0x6fb2

.field public static final CP_ISO_8859_5:I = 0x6fb3

.field public static final CP_ISO_8859_6:I = 0x6fb4

.field public static final CP_ISO_8859_7:I = 0x6fb5

.field public static final CP_ISO_8859_8:I = 0x6fb6

.field public static final CP_ISO_8859_9:I = 0x6fb7

.field public static final CP_JOHAB:I = 0x551

.field public static final CP_KOI8_R:I = 0x5182

.field public static final CP_MAC_ARABIC:I = 0x2714

.field public static final CP_MAC_CENTRAL_EUROPE:I = 0x272d

.field public static final CP_MAC_CHINESE_SIMPLE:I = 0x2718

.field public static final CP_MAC_CHINESE_TRADITIONAL:I = 0x2712

.field public static final CP_MAC_CROATIAN:I = 0x2762

.field public static final CP_MAC_CYRILLIC:I = 0x2717

.field public static final CP_MAC_GREEK:I = 0x2716

.field public static final CP_MAC_HEBREW:I = 0x2715

.field public static final CP_MAC_ICELAND:I = 0x275f

.field public static final CP_MAC_JAPAN:I = 0x2711

.field public static final CP_MAC_KOREAN:I = 0x2713

.field public static final CP_MAC_ROMAN:I = 0x2710

.field public static final CP_MAC_ROMANIA:I = 0x271a

.field public static final CP_MAC_ROMAN_BIFF23:I = 0x8000

.field public static final CP_MAC_THAI:I = 0x2725

.field public static final CP_MAC_TURKISH:I = 0x2761

.field public static final CP_MAC_UKRAINE:I = 0x2721

.field public static final CP_MS949:I = 0x3b5

.field public static final CP_SJIS:I = 0x3a4

.field public static final CP_UNICODE:I = 0x4b0

.field public static final CP_US_ACSII:I = 0x4e9f

.field public static final CP_US_ASCII2:I = 0xfde8

.field public static final CP_UTF16:I = 0x4b0

.field public static final CP_UTF16_BE:I = 0x4b1

.field public static final CP_UTF8:I = 0xfde9

.field public static final CP_WINDOWS_1250:I = 0x4e2

.field public static final CP_WINDOWS_1251:I = 0x4e3

.field public static final CP_WINDOWS_1252:I = 0x4e4

.field public static final CP_WINDOWS_1252_BIFF23:I = 0x8001

.field public static final CP_WINDOWS_1253:I = 0x4e5

.field public static final CP_WINDOWS_1254:I = 0x4e6

.field public static final CP_WINDOWS_1255:I = 0x4e7

.field public static final CP_WINDOWS_1256:I = 0x4e8

.field public static final CP_WINDOWS_1257:I = 0x4e9

.field public static final CP_WINDOWS_1258:I = 0x4ea


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static codepageToEncoding(I)Ljava/lang/String;
    .locals 1
    .param p0, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 255
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static codepageToEncoding(IZ)Ljava/lang/String;
    .locals 3
    .param p0, "codepage"    # I
    .param p1, "javaLangFormat"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 276
    if-lez p0, :cond_16

    .line 279
    const/16 v0, 0x4b0

    if-eq p0, v0, :cond_15

    const/16 v0, 0x4b1

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2761

    if-eq p0, v0, :cond_13

    const/16 v0, 0x2762

    if-eq p0, v0, :cond_12

    const-string v0, "EUC-KR"

    const-string v1, "SJIS"

    sparse-switch p0, :sswitch_data_0

    const-string v2, "Cp1255"

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    :pswitch_0
    const-string v0, "UTF-8"

    return-object v0

    .line 426
    :pswitch_1
    const-string v0, "ISO-2022-JP"

    return-object v0

    .line 419
    :pswitch_2
    if-eqz p1, :cond_0

    .line 420
    const-string v0, "ISO8859_9"

    return-object v0

    .line 422
    :cond_0
    const-string v0, "ISO-8859-9"

    return-object v0

    .line 414
    :pswitch_3
    if-eqz p1, :cond_1

    .line 415
    const-string v0, "ISO8859_8"

    return-object v0

    .line 417
    :cond_1
    const-string v0, "ISO-8859-8"

    return-object v0

    .line 409
    :pswitch_4
    if-eqz p1, :cond_2

    .line 410
    const-string v0, "ISO8859_7"

    return-object v0

    .line 412
    :cond_2
    const-string v0, "ISO-8859-7"

    return-object v0

    .line 404
    :pswitch_5
    if-eqz p1, :cond_3

    .line 405
    const-string v0, "ISO8859_6"

    return-object v0

    .line 407
    :cond_3
    const-string v0, "ISO-8859-6"

    return-object v0

    .line 399
    :pswitch_6
    if-eqz p1, :cond_4

    .line 400
    const-string v0, "ISO8859_5"

    return-object v0

    .line 402
    :cond_4
    const-string v0, "ISO-8859-5"

    return-object v0

    .line 394
    :pswitch_7
    if-eqz p1, :cond_5

    .line 395
    const-string v0, "ISO8859_4"

    return-object v0

    .line 397
    :cond_5
    const-string v0, "ISO-8859-4"

    return-object v0

    .line 389
    :pswitch_8
    if-eqz p1, :cond_6

    .line 390
    const-string v0, "ISO8859_3"

    return-object v0

    .line 392
    :cond_6
    const-string v0, "ISO-8859-3"

    return-object v0

    .line 384
    :pswitch_9
    if-eqz p1, :cond_7

    .line 385
    const-string v0, "ISO8859_2"

    return-object v0

    .line 387
    :cond_7
    const-string v0, "ISO-8859-2"

    return-object v0

    .line 379
    :pswitch_a
    if-eqz p1, :cond_8

    .line 380
    const-string v0, "ISO8859_1"

    return-object v0

    .line 382
    :cond_8
    const-string v0, "ISO-8859-1"

    return-object v0

    .line 358
    :pswitch_b
    const-string v0, "EUC_CN"

    return-object v0

    .line 356
    :pswitch_c
    const-string v0, "MacCyrillic"

    return-object v0

    .line 354
    :pswitch_d
    const-string v0, "MacGreek"

    return-object v0

    .line 352
    :pswitch_e
    const-string v0, "MacHebrew"

    return-object v0

    .line 350
    :pswitch_f
    const-string v0, "MacArabic"

    return-object v0

    .line 348
    :pswitch_10
    return-object v0

    .line 346
    :pswitch_11
    const-string v0, "Big5"

    return-object v0

    .line 344
    :pswitch_12
    return-object v1

    .line 342
    :pswitch_13
    const-string v0, "MacRoman"

    return-object v0

    .line 334
    :pswitch_14
    if-eqz p1, :cond_9

    .line 335
    const-string v0, "Cp1258"

    return-object v0

    .line 337
    :cond_9
    const-string v0, "windows-1258"

    return-object v0

    .line 329
    :pswitch_15
    if-eqz p1, :cond_a

    .line 330
    const-string v0, "Cp1257"

    return-object v0

    .line 332
    :cond_a
    const-string v0, "windows-1257"

    return-object v0

    .line 324
    :pswitch_16
    if-eqz p1, :cond_b

    .line 325
    return-object v2

    .line 327
    :cond_b
    const-string v0, "windows-1256"

    return-object v0

    .line 319
    :pswitch_17
    if-eqz p1, :cond_c

    .line 320
    return-object v2

    .line 322
    :cond_c
    const-string v0, "windows-1255"

    return-object v0

    .line 314
    :pswitch_18
    if-eqz p1, :cond_d

    .line 315
    const-string v0, "Cp1254"

    return-object v0

    .line 317
    :cond_d
    const-string v0, "windows-1254"

    return-object v0

    .line 309
    :pswitch_19
    if-eqz p1, :cond_e

    .line 310
    const-string v0, "Cp1253"

    return-object v0

    .line 312
    :cond_e
    const-string v0, "windows-1253"

    return-object v0

    .line 304
    :pswitch_1a
    if-eqz p1, :cond_f

    .line 305
    const-string v0, "Cp1252"

    return-object v0

    .line 307
    :cond_f
    const-string v0, "windows-1252"

    return-object v0

    .line 298
    :pswitch_1b
    if-eqz p1, :cond_10

    .line 299
    const-string v0, "Cp1251"

    return-object v0

    .line 301
    :cond_10
    const-string v0, "windows-1251"

    return-object v0

    .line 293
    :pswitch_1c
    if-eqz p1, :cond_11

    .line 294
    const-string v0, "Cp1250"

    return-object v0

    .line 296
    :cond_11
    const-string v0, "windows-1250"

    return-object v0

    .line 436
    :sswitch_0
    const-string v0, "GB18030"

    return-object v0

    .line 434
    :sswitch_1
    const-string v0, "GB2312"

    return-object v0

    .line 432
    :sswitch_2
    return-object v0

    .line 430
    :sswitch_3
    const-string v0, "EUC-JP"

    return-object v0

    .line 428
    :sswitch_4
    const-string v0, "ISO-2022-KR"

    return-object v0

    .line 377
    :sswitch_5
    const-string v0, "KOI8-R"

    return-object v0

    .line 375
    :pswitch_1d
    :sswitch_6
    const-string v0, "US-ASCII"

    return-object v0

    .line 368
    :sswitch_7
    const-string v0, "MacIceland"

    return-object v0

    .line 366
    :sswitch_8
    const-string v0, "MacCentralEurope"

    return-object v0

    .line 364
    :sswitch_9
    const-string v0, "MacThai"

    return-object v0

    .line 362
    :sswitch_a
    const-string v0, "MacUkraine"

    return-object v0

    .line 360
    :sswitch_b
    const-string v0, "MacRomania"

    return-object v0

    .line 339
    :sswitch_c
    const-string v0, "johab"

    return-object v0

    .line 291
    :sswitch_d
    const-string v0, "ms949"

    return-object v0

    .line 289
    :sswitch_e
    const-string v0, "GBK"

    return-object v0

    .line 438
    :sswitch_f
    return-object v1

    .line 287
    :sswitch_10
    const-string v0, "cp037"

    return-object v0

    .line 372
    :cond_12
    const-string v0, "MacCroatian"

    return-object v0

    .line 370
    :cond_13
    const-string v0, "MacTurkish"

    return-object v0

    .line 283
    :cond_14
    const-string v0, "UTF-16BE"

    return-object v0

    .line 281
    :cond_15
    const-string v0, "UTF-16"

    return-object v0

    .line 277
    :cond_16
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codepage number may not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_10
        0x3a4 -> :sswitch_f
        0x3a8 -> :sswitch_e
        0x3b5 -> :sswitch_d
        0x551 -> :sswitch_c
        0x271a -> :sswitch_b
        0x2721 -> :sswitch_a
        0x2725 -> :sswitch_9
        0x272d -> :sswitch_8
        0x275f -> :sswitch_7
        0x4e9f -> :sswitch_6
        0x5182 -> :sswitch_5
        0xc431 -> :sswitch_4
        0xcadc -> :sswitch_3
        0xcaed -> :sswitch_2
        0xcec8 -> :sswitch_1
        0xd698 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4e2
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2710
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6faf
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8000
        :pswitch_13
        :pswitch_1a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xc42c
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xfde8
        :pswitch_1d
        :pswitch_0
    .end packed-switch
.end method

.method public static getBytesInCodePage(Ljava/lang/String;I)[B
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 208
    invoke-static {p1}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "encoding":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static getStringFromCodePage([BI)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # [B
    .param p1, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 221
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringFromCodePage([BIII)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "codepage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 233
    invoke-static {p3}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "encoding":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1
.end method
