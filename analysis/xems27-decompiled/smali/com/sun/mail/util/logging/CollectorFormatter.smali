.class public Lcom/sun/mail/util/logging/CollectorFormatter;
.super Ljava/util/logging/Formatter;
.source "CollectorFormatter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INIT_TIME:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private count:J

.field private final fmt:Ljava/lang/String;

.field private final formatter:Ljava/util/logging/Formatter;

.field private generation:J

.field private last:Ljava/util/logging/LogRecord;

.field private maxMillis:J

.field private minMillis:J

.field private thrown:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    nop

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 122
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 130
    sget-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 134
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "p":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    .line 147
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 148
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 122
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 130
    sget-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 134
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "p":Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    .line 163
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 164
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/logging/Formatter;Ljava/util/Comparator;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/logging/Formatter;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 122
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 130
    sget-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 134
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "p":Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 185
    iput-object p3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    .line 186
    return-void
.end method

.method private declared-synchronized accept(Ljava/util/logging/LogRecord;)V
    .locals 7
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 375
    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v0

    .line 376
    .local v0, "millis":J
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 377
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 378
    goto :goto_0

    .line 379
    .end local p0    # "this":Lcom/sun/mail/util/logging/CollectorFormatter;
    :cond_0
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 381
    :goto_0
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 383
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 384
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_1
    monitor-exit p0

    return-void

    .line 374
    .end local v0    # "millis":J
    .end local p1    # "record":Ljava/util/logging/LogRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized acceptAndUpdate(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z
    .locals 1
    .param p1, "e"    # Ljava/util/logging/LogRecord;
    .param p2, "u"    # Ljava/util/logging/LogRecord;

    monitor-enter p0

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    if-ne p1, v0, :cond_0

    .line 506
    invoke-direct {p0, p2}, Lcom/sun/mail/util/logging/CollectorFormatter;->accept(Ljava/util/logging/LogRecord;)V

    .line 507
    iput-object p2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 510
    .end local p0    # "this":Lcom/sun/mail/util/logging/CollectorFormatter;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 504
    .end local p1    # "e":Ljava/util/logging/LogRecord;
    .end local p2    # "u":Ljava/util/logging/LogRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;
    .locals 24
    .param p1, "h"    # Ljava/util/logging/Handler;
    .param p2, "reset"    # Z

    .line 421
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v0, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    move-object v3, v0

    .line 423
    .local v3, "record":Ljava/util/logging/LogRecord;
    iget-wide v4, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    .line 424
    .local v4, "c":J
    iget-wide v6, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 425
    .local v6, "g":J
    iget-wide v8, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    .line 426
    .local v8, "t":J
    iget-wide v10, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 427
    .local v10, "msl":J
    iget-wide v12, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 428
    .local v12, "msh":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 429
    .local v14, "now":J
    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-nez v0, :cond_0

    .line 430
    move-wide v12, v14

    .line 433
    :cond_0
    if-eqz p2, :cond_1

    .line 434
    invoke-direct {v1, v12, v13}, Lcom/sun/mail/util/logging/CollectorFormatter;->reset(J)V

    .line 421
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 441
    move-wide/from16 v16, v6

    .end local v6    # "g":J
    .local v16, "g":J
    iget-object v6, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 442
    .local v6, "f":Ljava/util/logging/Formatter;
    if-eqz v6, :cond_3

    .line 443
    monitor-enter v6

    .line 444
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "head":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const-string v7, ""

    .line 446
    .local v7, "msg":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v2}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v18

    .line 443
    .local v18, "tail":Ljava/lang/String;
    monitor-exit v6

    move-object/from16 v2, v18

    goto :goto_2

    .end local v0    # "head":Ljava/lang/String;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v18    # "tail":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 449
    :cond_3
    const-string v0, ""

    .line 450
    .restart local v0    # "head":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_4
    const-string v7, ""

    .line 451
    .restart local v7    # "msg":Ljava/lang/String;
    :goto_1
    const-string v18, ""

    move-object/from16 v2, v18

    .line 454
    .local v2, "tail":Ljava/lang/String;
    :goto_2
    const/16 v18, 0x0

    .line 455
    .local v18, "l":Ljava/util/Locale;
    if-eqz v3, :cond_6

    .line 456
    invoke-virtual {v3}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v19

    .line 457
    .local v19, "rb":Ljava/util/ResourceBundle;
    if-nez v19, :cond_5

    const/16 v20, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v20

    :goto_3
    move-object/from16 v18, v20

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    goto :goto_4

    .line 455
    .end local v19    # "rb":Ljava/util/ResourceBundle;
    :cond_6
    move-object/from16 v19, v3

    move-object/from16 v3, v18

    .line 461
    .end local v18    # "l":Ljava/util/Locale;
    .local v3, "l":Ljava/util/Locale;
    .local v19, "record":Ljava/util/logging/LogRecord;
    :goto_4
    if-nez v3, :cond_7

    .line 462
    move-wide/from16 v20, v14

    .end local v14    # "now":J
    .local v20, "now":J
    new-instance v14, Ljava/text/MessageFormat;

    iget-object v15, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 463
    .local v14, "mf":Ljava/text/MessageFormat;
    goto :goto_5

    .line 464
    .end local v20    # "now":J
    .local v14, "now":J
    :cond_7
    move-wide/from16 v20, v14

    .end local v14    # "now":J
    .restart local v20    # "now":J
    new-instance v14, Ljava/text/MessageFormat;

    iget-object v15, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    invoke-direct {v14, v15, v3}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 470
    .local v14, "mf":Ljava/text/MessageFormat;
    :goto_5
    const/16 v15, 0xe

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x1

    invoke-virtual {v1, v7}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x3

    .line 471
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x4

    const-wide/16 v22, 0x1

    sub-long v22, v4, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x6

    sub-long v22, v4, v8

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0x9

    sub-long v22, v12, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0xa

    sget-wide v22, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0xb

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0xc

    .line 472
    sget-wide v22, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    sub-long v22, v20, v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    const/16 v18, 0xd

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v15, v18

    .line 470
    invoke-virtual {v14, v15}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 421
    .end local v0    # "head":Ljava/lang/String;
    .end local v2    # "tail":Ljava/lang/String;
    .end local v3    # "l":Ljava/util/Locale;
    .end local v4    # "c":J
    .end local v6    # "f":Ljava/util/logging/Formatter;
    .end local v7    # "msg":Ljava/lang/String;
    .end local v8    # "t":J
    .end local v10    # "msl":J
    .end local v12    # "msh":J
    .end local v14    # "mf":Ljava/text/MessageFormat;
    .end local v16    # "g":J
    .end local v19    # "record":Ljava/util/logging/LogRecord;
    .end local v20    # "now":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private initComparator(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 4
    .param p1, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    .line 576
    const-string v0, ".comparator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "name":Ljava/lang/String;
    const-string v1, ".comparator.reverse"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "reverse":Ljava/lang/String;
    const-string v2, "No comparator to reverse."

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 580
    const-string v3, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 581
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v2

    .line 582
    .local v2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 583
    nop

    .line 584
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v3

    move-object v2, v3

    .line 586
    goto :goto_0

    .line 587
    .end local v2    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :cond_0
    if-nez v1, :cond_1

    .line 591
    const/4 v2, 0x0

    .line 594
    .restart local v2    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    goto :goto_0

    .line 588
    .end local v2    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 589
    nop

    .line 588
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "reverse":Ljava/lang/String;
    .end local p1    # "p":Ljava/lang/String;
    throw v3

    .line 605
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "reverse":Ljava/lang/String;
    .restart local p1    # "p":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 603
    :catch_1
    move-exception v2

    goto :goto_2

    .line 595
    :cond_2
    if-nez v1, :cond_4

    .line 600
    const-class v2, Ljava/util/Comparator;

    invoke-static {}, Lcom/sun/mail/util/logging/SeverityComparator;->getInstance()Lcom/sun/mail/util/logging/SeverityComparator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Comparator;

    .line 603
    .restart local v2    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    nop

    .line 608
    :cond_3
    :goto_0
    return-object v2

    .line 596
    .end local v2    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 597
    nop

    .line 596
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "reverse":Ljava/lang/String;
    .end local p1    # "p":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "reverse":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    .restart local p1    # "p":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v3, v2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 604
    .local v2, "re":Ljava/lang/RuntimeException;
    :goto_2
    throw v2
.end method

.method private initFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .line 523
    const-string v0, ".format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 525
    :cond_0
    const-string v0, "{0}{1}{2}{4,choice,-1#|0#|0<... {4,number,integer} more}\n"

    .line 527
    :cond_1
    return-object v0
.end method

.method private initFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;
    .locals 3
    .param p1, "p"    # Ljava/lang/String;

    .line 541
    const-string v0, ".formatter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    :try_start_0
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .local v1, "f":Ljava/util/logging/Formatter;
    goto :goto_0

    .line 548
    .end local v1    # "f":Ljava/util/logging/Formatter;
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v2, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 546
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 547
    .local v1, "re":Ljava/lang/RuntimeException;
    throw v1

    .line 552
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v1, 0x0

    .line 554
    .local v1, "f":Ljava/util/logging/Formatter;
    goto :goto_0

    .line 556
    .end local v1    # "f":Ljava/util/logging/Formatter;
    :cond_1
    const-class v1, Ljava/util/logging/Formatter;

    new-instance v2, Lcom/sun/mail/util/logging/CompactFormatter;

    invoke-direct {v2}, Lcom/sun/mail/util/logging/CompactFormatter;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Formatter;

    .line 558
    .restart local v1    # "f":Ljava/util/logging/Formatter;
    :goto_0
    return-object v1
.end method

.method private declared-synchronized peek()Ljava/util/logging/LogRecord;
    .locals 1

    monitor-enter p0

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 493
    .end local p0    # "this":Lcom/sun/mail/util/logging/CollectorFormatter;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reset(J)V
    .locals 4
    .param p1, "min"    # J

    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    .line 395
    iget-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 398
    .end local p0    # "this":Lcom/sun/mail/util/logging/CollectorFormatter;
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    .line 399
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    .line 400
    iput-wide p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 401
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 392
    .end local p1    # "min":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected apply(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Ljava/util/logging/LogRecord;
    .locals 1
    .param p1, "t"    # Ljava/util/logging/LogRecord;
    .param p2, "u"    # Ljava/util/logging/LogRecord;

    .line 358
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 362
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 363
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 365
    :cond_1
    return-object p2

    .line 359
    :cond_2
    const/4 v0, 0x0

    throw v0
.end method

.method protected finish(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 3
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .line 199
    if-eqz p1, :cond_3

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/CollectorFormatter;->peek()Ljava/util/logging/LogRecord;

    move-result-object v0

    .line 207
    .local v0, "peek":Ljava/util/logging/LogRecord;
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/sun/mail/util/logging/CollectorFormatter;->apply(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Ljava/util/logging/LogRecord;

    move-result-object v1

    .line 208
    .local v1, "update":Ljava/util/logging/LogRecord;
    if-eq v0, v1, :cond_2

    .line 209
    invoke-virtual {v1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/CollectorFormatter;->acceptAndUpdate(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z

    move-result v2

    .line 211
    .local v2, "accepted":Z
    goto :goto_1

    .line 212
    .end local v2    # "accepted":Z
    :cond_2
    const/4 v2, 0x1

    .line 213
    .restart local v2    # "accepted":Z
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CollectorFormatter;->accept(Ljava/util/logging/LogRecord;)V

    .line 215
    .end local v0    # "peek":Ljava/util/logging/LogRecord;
    .end local v1    # "update":Ljava/util/logging/LogRecord;
    :goto_1
    if-eqz v2, :cond_0

    .line 216
    const-string v0, ""

    return-object v0

    .line 200
    .end local v2    # "accepted":Z
    :cond_3
    const/4 v0, 0x0

    throw v0
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    .line 327
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 341
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .local v0, "result":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "ignore":Ljava/lang/RuntimeException;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 345
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0
.end method
