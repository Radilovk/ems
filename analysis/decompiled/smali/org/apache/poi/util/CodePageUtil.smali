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

    .prologue
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

    .prologue
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

    .prologue
    .line 276
    if-gtz p0, :cond_0

    .line 277
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Codepage number may not be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 281
    :sswitch_0
    const-string v0, "UTF-16"

    goto :goto_0

    .line 283
    :sswitch_1
    const-string v0, "UTF-16BE"

    goto :goto_0

    .line 285
    :sswitch_2
    const-string v0, "UTF-8"

    goto :goto_0

    .line 287
    :sswitch_3
    const-string v0, "cp037"

    goto :goto_0

    .line 289
    :sswitch_4
    const-string v0, "GBK"

    goto :goto_0

    .line 291
    :sswitch_5
    const-string v0, "ms949"

    goto :goto_0

    .line 293
    :sswitch_6
    if-eqz p1, :cond_1

    .line 294
    const-string v0, "Cp1250"

    goto :goto_0

    .line 296
    :cond_1
    const-string/jumbo v0, "windows-1250"

    goto :goto_0

    .line 298
    :sswitch_7
    if-eqz p1, :cond_2

    .line 299
    const-string v0, "Cp1251"

    goto :goto_0

    .line 301
    :cond_2
    const-string/jumbo v0, "windows-1251"

    goto :goto_0

    .line 304
    :sswitch_8
    if-eqz p1, :cond_3

    .line 305
    const-string v0, "Cp1252"

    goto :goto_0

    .line 307
    :cond_3
    const-string/jumbo v0, "windows-1252"

    goto :goto_0

    .line 309
    :sswitch_9
    if-eqz p1, :cond_4

    .line 310
    const-string v0, "Cp1253"

    goto :goto_0

    .line 312
    :cond_4
    const-string/jumbo v0, "windows-1253"

    goto :goto_0

    .line 314
    :sswitch_a
    if-eqz p1, :cond_5

    .line 315
    const-string v0, "Cp1254"

    goto :goto_0

    .line 317
    :cond_5
    const-string/jumbo v0, "windows-1254"

    goto :goto_0

    .line 319
    :sswitch_b
    if-eqz p1, :cond_6

    .line 320
    const-string v0, "Cp1255"

    goto :goto_0

    .line 322
    :cond_6
    const-string/jumbo v0, "windows-1255"

    goto :goto_0

    .line 324
    :sswitch_c
    if-eqz p1, :cond_7

    .line 325
    const-string v0, "Cp1255"

    goto :goto_0

    .line 327
    :cond_7
    const-string/jumbo v0, "windows-1256"

    goto :goto_0

    .line 329
    :sswitch_d
    if-eqz p1, :cond_8

    .line 330
    const-string v0, "Cp1257"

    goto :goto_0

    .line 332
    :cond_8
    const-string/jumbo v0, "windows-1257"

    goto :goto_0

    .line 334
    :sswitch_e
    if-eqz p1, :cond_9

    .line 335
    const-string v0, "Cp1258"

    goto :goto_0

    .line 337
    :cond_9
    const-string/jumbo v0, "windows-1258"

    goto :goto_0

    .line 339
    :sswitch_f
    const-string v0, "johab"

    goto :goto_0

    .line 342
    :sswitch_10
    const-string v0, "MacRoman"

    goto :goto_0

    .line 344
    :sswitch_11
    const-string v0, "SJIS"

    goto :goto_0

    .line 346
    :sswitch_12
    const-string v0, "Big5"

    goto :goto_0

    .line 348
    :sswitch_13
    const-string v0, "EUC-KR"

    goto :goto_0

    .line 350
    :sswitch_14
    const-string v0, "MacArabic"

    goto :goto_0

    .line 352
    :sswitch_15
    const-string v0, "MacHebrew"

    goto :goto_0

    .line 354
    :sswitch_16
    const-string v0, "MacGreek"

    goto :goto_0

    .line 356
    :sswitch_17
    const-string v0, "MacCyrillic"

    goto :goto_0

    .line 358
    :sswitch_18
    const-string v0, "EUC_CN"

    goto/16 :goto_0

    .line 360
    :sswitch_19
    const-string v0, "MacRomania"

    goto/16 :goto_0

    .line 362
    :sswitch_1a
    const-string v0, "MacUkraine"

    goto/16 :goto_0

    .line 364
    :sswitch_1b
    const-string v0, "MacThai"

    goto/16 :goto_0

    .line 366
    :sswitch_1c
    const-string v0, "MacCentralEurope"

    goto/16 :goto_0

    .line 368
    :sswitch_1d
    const-string v0, "MacIceland"

    goto/16 :goto_0

    .line 370
    :sswitch_1e
    const-string v0, "MacTurkish"

    goto/16 :goto_0

    .line 372
    :sswitch_1f
    const-string v0, "MacCroatian"

    goto/16 :goto_0

    .line 375
    :sswitch_20
    const-string v0, "US-ASCII"

    goto/16 :goto_0

    .line 377
    :sswitch_21
    const-string v0, "KOI8-R"

    goto/16 :goto_0

    .line 379
    :sswitch_22
    if-eqz p1, :cond_a

    .line 380
    const-string v0, "ISO8859_1"

    goto/16 :goto_0

    .line 382
    :cond_a
    const-string v0, "ISO-8859-1"

    goto/16 :goto_0

    .line 384
    :sswitch_23
    if-eqz p1, :cond_b

    .line 385
    const-string v0, "ISO8859_2"

    goto/16 :goto_0

    .line 387
    :cond_b
    const-string v0, "ISO-8859-2"

    goto/16 :goto_0

    .line 389
    :sswitch_24
    if-eqz p1, :cond_c

    .line 390
    const-string v0, "ISO8859_3"

    goto/16 :goto_0

    .line 392
    :cond_c
    const-string v0, "ISO-8859-3"

    goto/16 :goto_0

    .line 394
    :sswitch_25
    if-eqz p1, :cond_d

    .line 395
    const-string v0, "ISO8859_4"

    goto/16 :goto_0

    .line 397
    :cond_d
    const-string v0, "ISO-8859-4"

    goto/16 :goto_0

    .line 399
    :sswitch_26
    if-eqz p1, :cond_e

    .line 400
    const-string v0, "ISO8859_5"

    goto/16 :goto_0

    .line 402
    :cond_e
    const-string v0, "ISO-8859-5"

    goto/16 :goto_0

    .line 404
    :sswitch_27
    if-eqz p1, :cond_f

    .line 405
    const-string v0, "ISO8859_6"

    goto/16 :goto_0

    .line 407
    :cond_f
    const-string v0, "ISO-8859-6"

    goto/16 :goto_0

    .line 409
    :sswitch_28
    if-eqz p1, :cond_10

    .line 410
    const-string v0, "ISO8859_7"

    goto/16 :goto_0

    .line 412
    :cond_10
    const-string v0, "ISO-8859-7"

    goto/16 :goto_0

    .line 414
    :sswitch_29
    if-eqz p1, :cond_11

    .line 415
    const-string v0, "ISO8859_8"

    goto/16 :goto_0

    .line 417
    :cond_11
    const-string v0, "ISO-8859-8"

    goto/16 :goto_0

    .line 419
    :sswitch_2a
    if-eqz p1, :cond_12

    .line 420
    const-string v0, "ISO8859_9"

    goto/16 :goto_0

    .line 422
    :cond_12
    const-string v0, "ISO-8859-9"

    goto/16 :goto_0

    .line 426
    :sswitch_2b
    const-string v0, "ISO-2022-JP"

    goto/16 :goto_0

    .line 428
    :sswitch_2c
    const-string v0, "ISO-2022-KR"

    goto/16 :goto_0

    .line 430
    :sswitch_2d
    const-string v0, "EUC-JP"

    goto/16 :goto_0

    .line 432
    :sswitch_2e
    const-string v0, "EUC-KR"

    goto/16 :goto_0

    .line 434
    :sswitch_2f
    const-string v0, "GB2312"

    goto/16 :goto_0

    .line 436
    :sswitch_30
    const-string v0, "GB18030"

    goto/16 :goto_0

    .line 438
    :sswitch_31
    const-string v0, "SJIS"

    goto/16 :goto_0

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_3
        0x3a4 -> :sswitch_31
        0x3a8 -> :sswitch_4
        0x3b5 -> :sswitch_5
        0x4b0 -> :sswitch_0
        0x4b1 -> :sswitch_1
        0x4e2 -> :sswitch_6
        0x4e3 -> :sswitch_7
        0x4e4 -> :sswitch_8
        0x4e5 -> :sswitch_9
        0x4e6 -> :sswitch_a
        0x4e7 -> :sswitch_b
        0x4e8 -> :sswitch_c
        0x4e9 -> :sswitch_d
        0x4ea -> :sswitch_e
        0x551 -> :sswitch_f
        0x2710 -> :sswitch_10
        0x2711 -> :sswitch_11
        0x2712 -> :sswitch_12
        0x2713 -> :sswitch_13
        0x2714 -> :sswitch_14
        0x2715 -> :sswitch_15
        0x2716 -> :sswitch_16
        0x2717 -> :sswitch_17
        0x2718 -> :sswitch_18
        0x271a -> :sswitch_19
        0x2721 -> :sswitch_1a
        0x2725 -> :sswitch_1b
        0x272d -> :sswitch_1c
        0x275f -> :sswitch_1d
        0x2761 -> :sswitch_1e
        0x2762 -> :sswitch_1f
        0x4e9f -> :sswitch_20
        0x5182 -> :sswitch_21
        0x6faf -> :sswitch_22
        0x6fb0 -> :sswitch_23
        0x6fb1 -> :sswitch_24
        0x6fb2 -> :sswitch_25
        0x6fb3 -> :sswitch_26
        0x6fb4 -> :sswitch_27
        0x6fb5 -> :sswitch_28
        0x6fb6 -> :sswitch_29
        0x6fb7 -> :sswitch_2a
        0x8000 -> :sswitch_10
        0x8001 -> :sswitch_8
        0xc42c -> :sswitch_2b
        0xc42d -> :sswitch_2b
        0xc42e -> :sswitch_2b
        0xc431 -> :sswitch_2c
        0xcadc -> :sswitch_2d
        0xcaed -> :sswitch_2e
        0xcec8 -> :sswitch_2f
        0xd698 -> :sswitch_30
        0xfde8 -> :sswitch_20
        0xfde9 -> :sswitch_2
    .end sparse-switch
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

    .prologue
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

    .prologue
    .line 221
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/poi/util/CodePageUtil;->getStringFromCodePage([BIII)Ljava/lang/String;

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

    .prologue
    .line 233
    invoke-static {p3}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "encoding":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1
.end method
