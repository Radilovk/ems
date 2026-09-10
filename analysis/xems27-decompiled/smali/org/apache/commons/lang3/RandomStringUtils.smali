.class public Lorg/apache/commons/lang3/RandomStringUtils;
.super Ljava/lang/Object;
.source "RandomStringUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static random(I)Ljava/lang/String;
    .locals 1
    .param p0, "count"    # I

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ)Ljava/lang/String;
    .locals 7
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z

    .line 288
    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs random(IIIZZ[C)Ljava/lang/String;
    .locals 7
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z
    .param p5, "chars"    # [C

    .line 312
    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .locals 7
    .param p0, "count"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "letters"    # Z
    .param p4, "numbers"    # Z
    .param p5, "chars"    # [C
    .param p6, "random"    # Ljava/util/Random;

    .line 350
    if-nez p0, :cond_0

    .line 351
    const-string v0, ""

    return-object v0

    .line 352
    :cond_0
    if-ltz p0, :cond_13

    .line 355
    if-eqz p5, :cond_2

    array-length v0, p5

    if-eqz v0, :cond_1

    goto :goto_0

    .line 356
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The chars array must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_2
    :goto_0
    const-string v0, "Parameter end ("

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 360
    if-eqz p5, :cond_3

    .line 361
    array-length p2, p5

    goto :goto_1

    .line 363
    :cond_3
    if-nez p3, :cond_4

    if-nez p4, :cond_4

    .line 364
    const p2, 0x10ffff

    goto :goto_1

    .line 366
    :cond_4
    const/16 p2, 0x7b

    .line 367
    const/16 p1, 0x20

    goto :goto_1

    .line 371
    :cond_5
    if-le p2, p1, :cond_12

    .line 376
    :goto_1
    const/16 v1, 0x30

    .line 377
    .local v1, "zero_digit_ascii":I
    const/16 v2, 0x41

    .line 379
    .local v2, "first_letter_ascii":I
    if-nez p5, :cond_8

    const/16 v3, 0x41

    const/16 v4, 0x30

    if-eqz p4, :cond_6

    if-le p2, v4, :cond_7

    :cond_6
    if-eqz p3, :cond_8

    if-le p2, v3, :cond_7

    goto :goto_2

    .line 381
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") must be greater then ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") for generating digits or greater then ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") for generating letters."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 385
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 386
    .local v0, "builder":Ljava/lang/StringBuilder;
    sub-int v3, p2, p1

    .line 388
    .local v3, "gap":I
    :goto_3
    add-int/lit8 v4, p0, -0x1

    .end local p0    # "count":I
    .local v4, "count":I
    if-eqz p0, :cond_11

    .line 390
    if-nez p5, :cond_a

    .line 391
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    .line 393
    .local p0, "codePoint":I
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v6, 0x12

    if-eq v5, v6, :cond_9

    const/16 v6, 0x13

    if-eq v5, v6, :cond_9

    .line 398
    goto :goto_4

    .line 397
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 398
    move p0, v4

    goto :goto_3

    .line 402
    .end local p0    # "codePoint":I
    :cond_a
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, p1

    aget-char p0, p5, p0

    .line 405
    .restart local p0    # "codePoint":I
    :goto_4
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 406
    .local v5, "numberOfChars":I
    if-nez v4, :cond_b

    const/4 v6, 0x1

    if-le v5, v6, :cond_b

    .line 407
    add-int/lit8 v4, v4, 0x1

    .line 408
    move p0, v4

    goto :goto_3

    .line 411
    :cond_b
    if-eqz p3, :cond_c

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-nez v6, :cond_e

    :cond_c
    if-eqz p4, :cond_d

    .line 412
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v6

    if-nez v6, :cond_e

    :cond_d
    if-nez p3, :cond_10

    if-nez p4, :cond_10

    .line 414
    :cond_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 416
    const/4 v6, 0x2

    if-ne v5, v6, :cond_f

    .line 417
    add-int/lit8 v4, v4, -0x1

    move p0, v4

    goto :goto_5

    .line 416
    :cond_f
    move p0, v4

    goto :goto_5

    .line 421
    :cond_10
    add-int/lit8 v4, v4, 0x1

    move p0, v4

    .line 423
    .end local v4    # "count":I
    .end local v5    # "numberOfChars":I
    .local p0, "count":I
    :goto_5
    goto :goto_3

    .line 424
    .end local p0    # "count":I
    .restart local v4    # "count":I
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 372
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "zero_digit_ascii":I
    .end local v2    # "first_letter_ascii":I
    .end local v3    # "gap":I
    .end local v4    # "count":I
    .restart local p0    # "count":I
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") must be greater than start ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested random string length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is less than 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static random(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "count"    # I
    .param p1, "chars"    # Ljava/lang/String;

    .line 443
    if-nez p1, :cond_0

    .line 444
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 446
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(I[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IZZ)Ljava/lang/String;
    .locals 1
    .param p0, "count"    # I
    .param p1, "letters"    # Z
    .param p2, "numbers"    # Z

    .line 268
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs random(I[C)Ljava/lang/String;
    .locals 8
    .param p0, "count"    # I
    .param p1, "chars"    # [C

    .line 462
    if-nez p1, :cond_0

    .line 463
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 465
    :cond_0
    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v7, Lorg/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v1, p0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphabetic(I)Ljava/lang/String;
    .locals 2
    .param p0, "count"    # I

    .line 116
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphabetic(II)Ljava/lang/String;
    .locals 1
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .line 131
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAlphabetic(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphanumeric(I)Ljava/lang/String;
    .locals 1
    .param p0, "count"    # I

    .line 145
    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphanumeric(II)Ljava/lang/String;
    .locals 1
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .line 161
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAlphanumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAscii(I)Ljava/lang/String;
    .locals 3
    .param p0, "count"    # I

    .line 86
    const/16 v0, 0x20

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAscii(II)Ljava/lang/String;
    .locals 1
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .line 102
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomAscii(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomGraph(I)Ljava/lang/String;
    .locals 3
    .param p0, "count"    # I

    .line 176
    const/16 v0, 0x21

    const/16 v1, 0x7e

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomGraph(II)Ljava/lang/String;
    .locals 1
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .line 191
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomGraph(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumeric(I)Ljava/lang/String;
    .locals 2
    .param p0, "count"    # I

    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumeric(II)Ljava/lang/String;
    .locals 1
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .line 220
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomPrint(I)Ljava/lang/String;
    .locals 3
    .param p0, "count"    # I

    .line 235
    const/16 v0, 0x20

    const/16 v1, 0x7e

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v2}, Lorg/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomPrint(II)Ljava/lang/String;
    .locals 1
    .param p0, "minLengthInclusive"    # I
    .param p1, "maxLengthExclusive"    # I

    .line 250
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/RandomUtils;->nextInt(II)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/lang3/RandomStringUtils;->randomPrint(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
