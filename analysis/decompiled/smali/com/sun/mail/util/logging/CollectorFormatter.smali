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
            "Ljava/util/Comparator",
            "<-",
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

    .prologue
    .line 92
    const-class v0, Lcom/sun/mail/util/logging/CollectorFormatter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/mail/util/logging/CollectorFormatter;->$assertionsDisabled:Z

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 122
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 130
    sget-wide v2, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 134
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

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
    .locals 4
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 122
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 130
    sget-wide v2, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 134
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "p":Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "format":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

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
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "f"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/logging/Formatter;",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/util/logging/LogRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 122
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 130
    sget-wide v2, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 134
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "p":Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "format":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 185
    iput-object p3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    .line 186
    return-void
.end method

.method private declared-synchronized accept(Ljava/util/logging/LogRecord;)V
    .locals 6
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    const-wide/16 v4, 0x1

    .line 375
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v0

    .line 376
    .local v0, "millis":J
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 377
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 381
    :goto_0
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 383
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 384
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    :cond_0
    monitor-exit p0

    return-void

    .line 379
    :cond_1
    :try_start_1
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 375
    .end local v0    # "millis":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized acceptAndUpdate(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z
    .locals 1
    .param p1, "e"    # Ljava/util/logging/LogRecord;
    .param p2, "u"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 505
    monitor-enter p0

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

    .line 510
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;
    .locals 26
    .param p1, "h"    # Ljava/util/logging/Handler;
    .param p2, "reset"    # Z

    .prologue
    .line 421
    monitor-enter p0

    .line 422
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    move-object/from16 v18, v0

    .line 423
    .local v18, "record":Ljava/util/logging/LogRecord;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    .line 424
    .local v2, "c":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 425
    .local v6, "g":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    move-wide/from16 v20, v0

    .line 426
    .local v20, "t":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 427
    .local v14, "msl":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 428
    .local v12, "msh":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 429
    .local v16, "now":J
    const-wide/16 v22, 0x0

    cmp-long v22, v2, v22

    if-nez v22, :cond_0

    .line 430
    move-wide/from16 v12, v16

    .line 433
    :cond_0
    if-eqz p2, :cond_1

    .line 434
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sun/mail/util/logging/CollectorFormatter;->reset(J)V

    .line 421
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 442
    .local v4, "f":Ljava/util/logging/Formatter;
    if-eqz v4, :cond_4

    .line 443
    monitor-enter v4

    .line 444
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, "head":Ljava/lang/String;
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v10

    .line 446
    .local v10, "msg":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v19

    .line 443
    .local v19, "tail":Ljava/lang/String;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 454
    :goto_1
    const/4 v8, 0x0

    .line 455
    .local v8, "l":Ljava/util/Locale;
    if-eqz v18, :cond_2

    .line 456
    invoke-virtual/range {v18 .. v18}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v11

    .line 457
    .local v11, "rb":Ljava/util/ResourceBundle;
    if-nez v11, :cond_6

    const/4 v8, 0x0

    .line 461
    .end local v11    # "rb":Ljava/util/ResourceBundle;
    :cond_2
    :goto_2
    if-nez v8, :cond_7

    .line 462
    new-instance v9, Ljava/text/MessageFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 470
    .local v9, "mf":Ljava/text/MessageFormat;
    :goto_3
    const/16 v22, 0xe

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x3

    .line 471
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    const-wide/16 v24, 0x1

    sub-long v24, v2, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x5

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x6

    sub-long v24, v2, v20

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x7

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x9

    sub-long v24, v12, v14

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0xa

    sget-wide v24, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0xb

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0xc

    .line 472
    sget-wide v24, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    sub-long v24, v16, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0xd

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    .line 470
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    return-object v22

    .line 421
    .end local v2    # "c":J
    .end local v4    # "f":Ljava/util/logging/Formatter;
    .end local v5    # "head":Ljava/lang/String;
    .end local v6    # "g":J
    .end local v8    # "l":Ljava/util/Locale;
    .end local v9    # "mf":Ljava/text/MessageFormat;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v12    # "msh":J
    .end local v14    # "msl":J
    .end local v16    # "now":J
    .end local v18    # "record":Ljava/util/logging/LogRecord;
    .end local v19    # "tail":Ljava/lang/String;
    .end local v20    # "t":J
    :catchall_0
    move-exception v22

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 445
    .restart local v2    # "c":J
    .restart local v4    # "f":Ljava/util/logging/Formatter;
    .restart local v5    # "head":Ljava/lang/String;
    .restart local v6    # "g":J
    .restart local v12    # "msh":J
    .restart local v14    # "msl":J
    .restart local v16    # "now":J
    .restart local v18    # "record":Ljava/util/logging/LogRecord;
    .restart local v20    # "t":J
    :cond_3
    :try_start_3
    const-string v10, ""

    goto/16 :goto_0

    .line 443
    .end local v5    # "head":Ljava/lang/String;
    :catchall_1
    move-exception v22

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v22

    .line 449
    :cond_4
    const-string v5, ""

    .line 450
    .restart local v5    # "head":Ljava/lang/String;
    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v10

    .line 451
    .restart local v10    # "msg":Ljava/lang/String;
    :goto_4
    const-string v19, ""

    .restart local v19    # "tail":Ljava/lang/String;
    goto/16 :goto_1

    .line 450
    .end local v10    # "msg":Ljava/lang/String;
    .end local v19    # "tail":Ljava/lang/String;
    :cond_5
    const-string v10, ""

    goto :goto_4

    .line 457
    .restart local v8    # "l":Ljava/util/Locale;
    .restart local v10    # "msg":Ljava/lang/String;
    .restart local v11    # "rb":Ljava/util/ResourceBundle;
    .restart local v19    # "tail":Ljava/lang/String;
    :cond_6
    invoke-virtual {v11}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v8

    goto/16 :goto_2

    .line 464
    .end local v11    # "rb":Ljava/util/ResourceBundle;
    :cond_7
    new-instance v9, Ljava/text/MessageFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v8}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .restart local v9    # "mf":Ljava/text/MessageFormat;
    goto/16 :goto_3
.end method

.method private initComparator(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 7
    .param p1, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    const-string v5, ".comparator"

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, "name":Ljava/lang/String;
    const-string v5, ".comparator.reverse"

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, "reverse":Ljava/lang/String;
    if-eqz v2, :cond_4

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    .line 580
    const-string v5, "null"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 581
    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->newComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    .line 582
    .local v0, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 583
    sget-boolean v5, Lcom/sun/mail/util/logging/CollectorFormatter;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez v0, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 603
    .end local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :catch_0
    move-exception v3

    .line 604
    .local v3, "re":Ljava/lang/RuntimeException;
    throw v3

    .line 584
    .end local v3    # "re":Ljava/lang/RuntimeException;
    .restart local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 608
    :cond_1
    :goto_0
    return-object v0

    .line 587
    .end local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :cond_2
    if-eqz v4, :cond_3

    .line 588
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 589
    const-string v6, "No comparator to reverse."

    .line 588
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 605
    :catch_1
    move-exception v1

    .line 606
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v5, v1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 591
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    .line 594
    .restart local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    goto :goto_0

    .line 595
    .end local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    :cond_4
    if-eqz v4, :cond_5

    .line 596
    :try_start_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 597
    const-string v6, "No comparator to reverse."

    .line 596
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 600
    :cond_5
    const-class v5, Ljava/util/Comparator;

    invoke-static {}, Lcom/sun/mail/util/logging/SeverityComparator;->getInstance()Lcom/sun/mail/util/logging/SeverityComparator;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v0    # "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/util/logging/LogRecord;>;"
    goto :goto_0
.end method

.method private initFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 523
    const-string v1, ".format"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 525
    :cond_0
    const-string/jumbo v0, "{0}{1}{2}{4,choice,-1#|0#|0<... {4,number,integer} more}\n"

    .line 527
    :cond_1
    return-object v0
.end method

.method private initFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;
    .locals 6
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 541
    const-string v4, ".formatter"

    invoke-virtual {p1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "v":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 545
    :try_start_0
    invoke-static {v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 558
    .local v1, "f":Ljava/util/logging/Formatter;
    :goto_0
    return-object v1

    .line 546
    .end local v1    # "f":Ljava/util/logging/Formatter;
    :catch_0
    move-exception v2

    .line 547
    .local v2, "re":Ljava/lang/RuntimeException;
    throw v2

    .line 548
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v4, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 552
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    .line 554
    .restart local v1    # "f":Ljava/util/logging/Formatter;
    goto :goto_0

    .line 556
    .end local v1    # "f":Ljava/util/logging/Formatter;
    :cond_1
    const-class v4, Ljava/util/logging/Formatter;

    new-instance v5, Lcom/sun/mail/util/logging/CompactFormatter;

    invoke-direct {v5}, Lcom/sun/mail/util/logging/CompactFormatter;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Formatter;

    .restart local v1    # "f":Ljava/util/logging/Formatter;
    goto :goto_0
.end method

.method private declared-synchronized peek()Ljava/util/logging/LogRecord;
    .locals 1

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reset(J)V
    .locals 5
    .param p1, "min"    # J

    .prologue
    .line 393
    monitor-enter p0

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
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    .line 399
    const-wide/16 v0, 0x0

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

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected apply(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Ljava/util/logging/LogRecord;
    .locals 1
    .param p1, "t"    # Ljava/util/logging/LogRecord;
    .param p2, "u"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 358
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 365
    .end local p1    # "t":Ljava/util/logging/LogRecord;
    :goto_0
    return-object p1

    .restart local p1    # "t":Ljava/util/logging/LogRecord;
    :cond_2
    move-object p1, p2

    .line 363
    goto :goto_0

    :cond_3
    move-object p1, p2

    .line 365
    goto :goto_0
.end method

.method protected finish(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/CollectorFormatter;->peek()Ljava/util/logging/LogRecord;

    move-result-object v1

    .line 207
    .local v1, "peek":Ljava/util/logging/LogRecord;
    if-eqz v1, :cond_1

    move-object v3, v1

    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/sun/mail/util/logging/CollectorFormatter;->apply(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Ljava/util/logging/LogRecord;

    move-result-object v2

    .line 208
    .local v2, "update":Ljava/util/logging/LogRecord;
    if-eq v1, v2, :cond_2

    .line 209
    invoke-virtual {v2}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    .line 210
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/CollectorFormatter;->acceptAndUpdate(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z

    move-result v0

    .line 215
    .local v0, "accepted":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 216
    const-string v3, ""

    return-object v3

    .end local v0    # "accepted":Z
    .end local v2    # "update":Ljava/util/logging/LogRecord;
    :cond_1
    move-object v3, p1

    .line 207
    goto :goto_0

    .line 212
    .restart local v2    # "update":Ljava/util/logging/LogRecord;
    :cond_2
    const/4 v0, 0x1

    .line 213
    .restart local v0    # "accepted":Z
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/CollectorFormatter;->accept(Ljava/util/logging/LogRecord;)V

    goto :goto_1
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 341
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 345
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 342
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "ignore":Ljava/lang/RuntimeException;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method
