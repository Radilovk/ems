.class public Ljavax/mail/internet/MailDateFormat;
.super Ljava/text/SimpleDateFormat;
.source "MailDateFormat.java"


# static fields
.field private static final cal:Ljava/util/Calendar;

.field static debug:Z = false

.field private static logger:Lcom/sun/mail/util/MailLogger; = null

.field private static final serialVersionUID:J = -0x711451d5f59c82abL


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 257
    const/4 v0, 0x0

    sput-boolean v0, Ljavax/mail/internet/MailDateFormat;->debug:Z

    .line 258
    new-instance v1, Lcom/sun/mail/util/MailLogger;

    .line 259
    const-class v2, Ljavax/mail/internet/MailDateFormat;

    .line 260
    nop

    .line 261
    nop

    .line 262
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 258
    const-string v4, "DEBUG"

    invoke-direct {v1, v2, v4, v0, v3}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    sput-object v1, Ljavax/mail/internet/MailDateFormat;->logger:Lcom/sun/mail/util/MailLogger;

    .line 350
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 349
    sput-object v0, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    .line 350
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 144
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "EEE, d MMM yyyy HH:mm:ss \'XXXXX\' (z)"

    invoke-direct {p0, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 145
    return-void
.end method

.method private static declared-synchronized ourUTC(IIIIIIIZ)Ljava/util/Date;
    .locals 3
    .param p0, "year"    # I
    .param p1, "mon"    # I
    .param p2, "mday"    # I
    .param p3, "hour"    # I
    .param p4, "min"    # I
    .param p5, "sec"    # I
    .param p6, "tzoffset"    # I
    .param p7, "lenient"    # Z

    const-class v0, Ljavax/mail/internet/MailDateFormat;

    monitor-enter v0

    .line 355
    :try_start_0
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 356
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, p7}, Ljava/util/Calendar;->setLenient(Z)V

    .line 357
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 358
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 359
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 360
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 361
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p4}, Ljava/util/Calendar;->set(II)V

    .line 362
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v1, v2, p6}, Ljava/util/Calendar;->add(II)V

    .line 363
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p5}, Ljava/util/Calendar;->set(II)V

    .line 365
    sget-object v1, Ljavax/mail/internet/MailDateFormat;->cal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 354
    .end local p0    # "year":I
    .end local p1    # "mon":I
    .end local p2    # "mday":I
    .end local p3    # "hour":I
    .end local p4    # "min":I
    .end local p5    # "sec":I
    .end local p6    # "tzoffset":I
    .end local p7    # "lenient":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static parseDate([CLjava/text/ParsePosition;Z)Ljava/util/Date;
    .locals 19
    .param p0, "orig"    # [C
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .param p2, "lenient"    # Z

    .line 270
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "\'"

    const/4 v0, -0x1

    .line 271
    .local v0, "day":I
    const/4 v4, -0x1

    .line 272
    .local v4, "month":I
    const/4 v5, -0x1

    .line 273
    .local v5, "year":I
    const/4 v6, 0x0

    .line 274
    .local v6, "hours":I
    const/4 v7, 0x0

    .line 275
    .local v7, "minutes":I
    const/4 v8, 0x0

    .line 276
    .local v8, "seconds":I
    const/4 v9, 0x0

    .line 278
    .local v9, "offset":I
    :try_start_0
    new-instance v10, Ljavax/mail/internet/MailDateParser;

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    invoke-direct {v10, v1, v11}, Ljavax/mail/internet/MailDateParser;-><init>([CI)V

    .line 281
    .local v10, "p":Ljavax/mail/internet/MailDateParser;
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipUntilNumber()V

    .line 282
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v13

    .line 284
    .end local v0    # "day":I
    .local v13, "day":I
    const/16 v0, 0x2d

    invoke-virtual {v10, v0}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v11

    if-nez v11, :cond_0

    .line 285
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 289
    :cond_0
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseMonth()I

    move-result v12

    .line 290
    .end local v4    # "month":I
    .local v12, "month":I
    invoke-virtual {v10, v0}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 295
    :cond_1
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v0

    .line 296
    .end local v5    # "year":I
    .local v0, "year":I
    const/16 v4, 0x32

    if-ge v0, v4, :cond_2

    .line 297
    add-int/lit16 v0, v0, 0x7d0

    goto :goto_0

    .line 298
    :cond_2
    const/16 v4, 0x64

    if-ge v0, v4, :cond_3

    .line 299
    add-int/lit16 v0, v0, 0x76c

    move v4, v0

    goto :goto_1

    .line 298
    :cond_3
    :goto_0
    move v4, v0

    .line 305
    .end local v0    # "year":I
    .local v4, "year":I
    :goto_1
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 306
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v14

    .line 309
    .end local v6    # "hours":I
    .local v14, "hours":I
    const/16 v0, 0x3a

    invoke-virtual {v10, v0}, Ljavax/mail/internet/MailDateParser;->skipChar(C)V

    .line 310
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v15

    .line 313
    .end local v7    # "minutes":I
    .local v15, "minutes":I
    invoke-virtual {v10, v0}, Ljavax/mail/internet/MailDateParser;->skipIfChar(C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseNumber()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v8, v0

    .line 320
    :cond_4
    :try_start_1
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->skipWhiteSpace()V

    .line 321
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->parseTimeZone()I

    move-result v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v0

    .line 322
    goto :goto_2

    :catch_0
    move-exception v0

    .line 323
    .local v0, "pe":Ljava/text/ParseException;
    :try_start_2
    sget-object v5, Ljavax/mail/internet/MailDateFormat;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 324
    sget-object v5, Ljavax/mail/internet/MailDateFormat;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "No timezone? : \'"

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 324
    invoke-virtual {v5, v6, v7, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .end local v0    # "pe":Ljava/text/ParseException;
    :cond_5
    :goto_2
    invoke-virtual {v10}, Ljavax/mail/internet/MailDateParser;->getIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 330
    nop

    .line 331
    nop

    .line 330
    move v11, v4

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, p2

    invoke-static/range {v11 .. v18}, Ljavax/mail/internet/MailDateFormat;->ourUTC(IIIIIIIZ)Ljava/util/Date;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 332
    .local v0, "d":Ljava/util/Date;
    return-object v0

    .line 334
    .end local v0    # "d":Ljava/util/Date;
    .end local v4    # "year":I
    .end local v8    # "seconds":I
    .end local v9    # "offset":I
    .end local v10    # "p":Ljavax/mail/internet/MailDateParser;
    .end local v12    # "month":I
    .end local v13    # "day":I
    .end local v14    # "hours":I
    .end local v15    # "minutes":I
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ljavax/mail/internet/MailDateFormat;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 341
    sget-object v4, Ljavax/mail/internet/MailDateFormat;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 342
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad date: \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    invoke-virtual {v4, v5, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    :cond_6
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 345
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "dateStrBuf"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .line 168
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 169
    .local v0, "start":I
    invoke-super {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 170
    const/4 v1, 0x0

    .line 173
    .local v1, "pos":I
    add-int/lit8 v1, v0, 0x19

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_1

    .line 177
    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 178
    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 179
    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 180
    iget-object v3, p0, Ljavax/mail/internet/MailDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 179
    add-int/2addr v2, v3

    .line 182
    .local v2, "offset":I
    if-gez v2, :cond_0

    .line 183
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    const/16 v4, 0x2d

    invoke-virtual {p2, v1, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 184
    neg-int v2, v2

    .line 185
    goto :goto_1

    .line 186
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .restart local v3    # "pos":I
    const/16 v4, 0x2b

    invoke-virtual {p2, v1, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 188
    :goto_1
    div-int/lit8 v1, v2, 0x3c

    div-int/lit16 v1, v1, 0x3e8

    .line 189
    .local v1, "rawOffsetInMins":I
    div-int/lit8 v4, v1, 0x3c

    .line 190
    .local v4, "offsetInHrs":I
    rem-int/lit8 v5, v1, 0x3c

    .line 192
    .local v5, "offsetInMins":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos":I
    .local v6, "pos":I
    div-int/lit8 v7, v4, 0xa

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v3, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 193
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "pos":I
    .restart local v3    # "pos":I
    rem-int/lit8 v7, v4, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 194
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos":I
    .restart local v6    # "pos":I
    div-int/lit8 v7, v5, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v3, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 195
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "pos":I
    .restart local v3    # "pos":I
    rem-int/lit8 v7, v5, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 198
    return-object p2

    .line 173
    .end local v2    # "offset":I
    .end local v3    # "pos":I
    .end local v4    # "offsetInHrs":I
    .end local v5    # "offsetInMins":I
    .local v1, "pos":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat;->isLenient()Z

    move-result v1

    invoke-static {v0, p2, v1}, Ljavax/mail/internet/MailDateFormat;->parseDate([CLjava/text/ParsePosition;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 2
    .param p1, "newCalendar"    # Ljava/util/Calendar;

    .line 373
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method setCalendar() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .locals 2
    .param p1, "newNumberFormat"    # Ljava/text/NumberFormat;

    .line 378
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method setNumberFormat() shouldn\'t be called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
