.class final Lcom/isaigu/gymapp/ai/WakeListener$Mic;
.super Ljava/lang/Object;
.source "WakeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Mic"
.end annotation


# instance fields
.field final gen:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput p1, p0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    .line 408
    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 412
    const/4 v3, 0x0

    .line 414
    :goto_1
    :try_start_1
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v2

    if-eqz v2, :cond_79

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_79

    .line 415
    const-wide/16 v4, 0x5dc

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_15
    .catchall {:try_start_1 .. :try_end_14} :catchall_359

    goto :goto_1

    .line 541
    :catch_15
    move-exception v2

    .line 542
    :goto_16
    :try_start_16
    const-string v4, "wake"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 544
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v2

    if-nez v2, :cond_3c

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    if-eqz v2, :cond_4a

    .line 545
    :cond_3c
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_35d

    .line 548
    :cond_4a
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 549
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v2, :cond_75

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v4

    if-ne v2, v4, :cond_75

    .line 550
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 551
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 552
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 553
    const/4 v4, 0x2

    if-ne v2, v4, :cond_75

    .line 554
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    :cond_75
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->close(Landroid/media/AudioRecord;)V

    .line 559
    :goto_78
    return-void

    .line 417
    :cond_79
    const/16 v2, 0x320

    :try_start_7b
    new-array v0, v2, [S

    move-object/from16 v19, v0

    .line 418
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->startSource()I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$100()I
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_82} :catch_15
    .catchall {:try_start_7b .. :try_end_82} :catchall_359

    move-result v17

    .line 419
    const/4 v4, 0x0

    .line 421
    const/4 v2, 0x0

    move/from16 v16, v17

    move/from16 v18, v4

    .line 422
    :goto_89
    :try_start_89
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v4

    if-eqz v4, :cond_113

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v5

    if-ne v4, v5, :cond_113

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v4, v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_113

    .line 423
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    aget v4, v4, v16

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WakeListener;->open(I)Landroid/media/AudioRecord;
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_a7} :catch_15
    .catchall {:try_start_89 .. :try_end_a7} :catchall_35d

    move-result-object v7

    .line 424
    if-nez v7, :cond_b9

    .line 425
    add-int/lit8 v5, v18, 0x1

    .line 426
    add-int/lit8 v3, v16, 0x1

    :try_start_ae
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v4, v4

    rem-int v4, v3, v4

    move/from16 v16, v4

    move/from16 v18, v5

    move-object v3, v7

    .line 427
    goto :goto_89

    .line 429
    :cond_b9
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(I)I

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 432
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 433
    const/4 v8, 0x0

    move v14, v9

    move v6, v2

    .line 434
    :goto_c6
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v2

    if-eqz v2, :cond_36b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v9

    if-ne v2, v9, :cond_36b

    .line 435
    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v9, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v2, v9}, Landroid/media/AudioRecord;->read([SII)I

    move-result v12

    .line 436
    if-gtz v12, :cond_186

    .line 437
    add-int/lit8 v2, v3, 0x1

    const/16 v3, 0x14

    if-le v2, v3, :cond_17e

    .line 438
    const-string v2, "wake"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mic source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    aget v4, v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_10e} :catch_261
    .catchall {:try_start_ae .. :try_end_10e} :catchall_2bd

    .line 439
    const/4 v3, 0x1

    move v2, v6

    .line 524
    :goto_110
    if-nez v3, :cond_347

    move-object v3, v7

    .line 532
    :cond_113
    :try_start_113
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v4

    if-eqz v4, :cond_14e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v5

    if-ne v4, v5, :cond_14e

    if-nez v2, :cond_14e

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v2, v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_14e

    .line 534
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 535
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 536
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    invoke-static/range {v17 .. v17}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(I)I

    .line 537
    const-string v2, "wake"

    const-string v4, "mic: no source gives sound"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 539
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_14e
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_14e} :catch_15
    .catchall {:try_start_113 .. :try_end_14e} :catchall_35d

    .line 548
    :cond_14e
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 549
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v2, :cond_179

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v4

    if-ne v2, v4, :cond_179

    .line 550
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 551
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 552
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 553
    const/4 v4, 0x2

    if-ne v2, v4, :cond_179

    .line 554
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    :cond_179
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->close(Landroid/media/AudioRecord;)V

    goto/16 :goto_78

    .line 442
    :cond_17e
    const-wide/16 v12, 0x32

    :try_start_180
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    move v3, v2

    .line 443
    goto/16 :goto_c6

    .line 445
    :cond_186
    const/4 v15, 0x0

    .line 446
    const/4 v2, 0x0

    .line 447
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    if-eqz v3, :cond_194

    .line 448
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->earBegin(I)V

    .line 449
    const/4 v3, 0x0

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    .line 451
    :cond_194
    const/4 v3, 0x0

    move v9, v3

    :goto_196
    if-ge v9, v12, :cond_368

    .line 452
    aget-short v3, v19, v9

    if-gez v3, :cond_229

    aget-short v3, v19, v9

    neg-int v3, v3

    .line 453
    :goto_19f
    if-le v3, v10, :cond_1a2

    move v10, v3

    .line 456
    :cond_1a2
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    sget v11, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    aget-short v13, v19, v9

    aput-short v13, v3, v11

    .line 457
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    add-int/lit8 v3, v3, 0x1

    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v11, v11

    rem-int/2addr v3, v11

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    .line 458
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v11, v11

    if-ge v3, v11, :cond_1c1

    .line 459
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    .line 461
    :cond_1c1
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v3, :cond_22d

    .line 462
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    aget-short v11, v19, v9

    invoke-virtual {v3, v11}, Lcom/isaigu/gymapp/ai/WakeWord;->push(S)I

    .line 463
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const/4 v11, 0x0

    iput-object v11, v3, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 464
    aget-short v3, v19, v9

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->earSample(S)Z

    move-result v3

    if-eqz v3, :cond_247

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->earDone()V

    .line 466
    const/4 v2, 0x1

    move v11, v2

    .line 500
    :goto_1de
    add-int v2, v14, v12

    .line 501
    const/16 v3, 0x640

    if-lt v2, v3, :cond_364

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 503
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/WakeListener;->levelOf(I)I

    move-result v9

    sput v9, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 504
    const/16 v9, 0xc

    if-le v10, v9, :cond_313

    .line 506
    if-nez v6, :cond_21e

    .line 507
    const/4 v4, 0x1

    .line 508
    const/4 v5, 0x0

    sput-boolean v5, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 509
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->keepSource(I)V
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600(I)V

    .line 510
    const-string v5, "wake"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mic source "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    aget v9, v9, v16

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " gives sound"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v4

    .line 517
    :cond_21e
    :goto_21e
    const/4 v5, 0x0

    .line 518
    const/4 v4, 0x0

    move v9, v4

    move v10, v5

    move-wide v12, v2

    .line 520
    :goto_223
    if-eqz v11, :cond_342

    move v3, v8

    move v2, v6

    .line 521
    goto/16 :goto_110

    .line 452
    :cond_229
    aget-short v3, v19, v9

    goto/16 :goto_19f

    .line 471
    :cond_22d
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    aget-short v11, v19, v9

    invoke-virtual {v3, v11}, Lcom/isaigu/gymapp/ai/WakeWord;->push(S)I

    move-result v3

    .line 472
    if-nez v3, :cond_24c

    .line 473
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 474
    if-eqz v3, :cond_247

    .line 475
    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const/4 v13, 0x0

    iput-object v13, v11, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 476
    const-string v11, "wake"

    invoke-static {v11, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_247
    :goto_247
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto/16 :goto_196

    .line 480
    :cond_24c
    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 481
    if-eqz v11, :cond_265

    .line 482
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v13

    new-instance v20, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;

    move-object/from16 v0, v20

    invoke-direct {v0, v11, v3}, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;-><init>(Lcom/isaigu/gymapp/ai/WakeSetup$Sink;I)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_247

    .line 541
    :catch_261
    move-exception v2

    move-object v3, v7

    goto/16 :goto_16

    .line 483
    :cond_265
    const/4 v11, 0x1

    if-ne v3, v11, :cond_2f6

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v11

    if-eqz v11, :cond_2f6

    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget-boolean v11, v11, Lcom/isaigu/gymapp/ai/WakeWord;->cloud:Z

    if-eqz v11, :cond_2f6

    .line 485
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudEar;->take()Z

    move-result v3

    if-eqz v3, :cond_2ed

    .line 486
    const-string v3, "wake"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "suspected d="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v13, v13, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " limit="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    .line 487
    invoke-virtual {v13}, Lcom/isaigu/gymapp/ai/WakeWord;->threshold()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " \u2192 the cloud ear"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 486
    invoke-static {v3, v11}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->earBegin(I)V

    .line 489
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v3

    new-instance v11, Lcom/isaigu/gymapp/ai/WakeListener$Listening;

    invoke-direct {v11}, Lcom/isaigu/gymapp/ai/WakeListener$Listening;-><init>()V

    invoke-virtual {v3, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2bc
    .catch Ljava/lang/Throwable; {:try_start_180 .. :try_end_2bc} :catch_261
    .catchall {:try_start_180 .. :try_end_2bc} :catchall_2bd

    goto :goto_247

    .line 548
    :catchall_2bd
    move-exception v2

    :goto_2be
    const/4 v3, 0x0

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 549
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v3, :cond_2e9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v4

    if-ne v3, v4, :cond_2e9

    .line 550
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 551
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 552
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 553
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2e9

    .line 554
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    :cond_2e9
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/WakeListener;->close(Landroid/media/AudioRecord;)V

    .line 558
    throw v2

    .line 491
    :cond_2ed
    :try_start_2ed
    const-string v3, "wake"

    const-string v11, "suspicion dropped: too many this minute"

    invoke-static {v3, v11}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_247

    .line 493
    :cond_2f6
    const/4 v11, 0x1

    if-ne v3, v11, :cond_247

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v3

    if-eqz v3, :cond_247

    .line 494
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 495
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/ai/WakeListener$Wake;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/WakeListener$Wake;-><init>()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    const/4 v2, 0x1

    move v11, v2

    .line 497
    goto/16 :goto_1de

    .line 512
    :cond_313
    if-nez v6, :cond_361

    sub-long/2addr v2, v4

    const-wide/16 v12, 0x9c4

    cmp-long v2, v2, v12

    if-lez v2, :cond_361

    .line 513
    const-string v2, "wake"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mic source "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    aget v4, v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": only silence"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const/4 v3, 0x1

    move v2, v6

    .line 515
    goto/16 :goto_110

    :cond_342
    move v14, v9

    move v3, v15

    move-wide v4, v12

    .line 523
    goto/16 :goto_c6

    .line 527
    :cond_347
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/WakeListener;->close(Landroid/media/AudioRecord;)V
    :try_end_34a
    .catch Ljava/lang/Throwable; {:try_start_2ed .. :try_end_34a} :catch_261
    .catchall {:try_start_2ed .. :try_end_34a} :catchall_2bd

    .line 528
    const/4 v3, 0x0

    .line 529
    add-int/lit8 v5, v18, 0x1

    .line 530
    add-int/lit8 v4, v16, 0x1

    :try_start_34f
    sget-object v6, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v6, v6

    rem-int/2addr v4, v6
    :try_end_353
    .catch Ljava/lang/Throwable; {:try_start_34f .. :try_end_353} :catch_15
    .catchall {:try_start_34f .. :try_end_353} :catchall_359

    move/from16 v16, v4

    move/from16 v18, v5

    .line 531
    goto/16 :goto_89

    .line 548
    :catchall_359
    move-exception v2

    move-object v7, v3

    goto/16 :goto_2be

    :catchall_35d
    move-exception v2

    move-object v7, v3

    goto/16 :goto_2be

    :cond_361
    move-wide v2, v4

    goto/16 :goto_21e

    :cond_364
    move v9, v2

    move-wide v12, v4

    goto/16 :goto_223

    :cond_368
    move v11, v2

    goto/16 :goto_1de

    :cond_36b
    move v3, v8

    move v2, v6

    goto/16 :goto_110
.end method
