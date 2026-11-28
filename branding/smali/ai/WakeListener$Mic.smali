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
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput p1, p0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    .line 452
    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 456
    const/4 v3, 0x0

    .line 458
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

    .line 459
    const-wide/16 v4, 0x5dc

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_15
    .catchall {:try_start_1 .. :try_end_14} :catchall_3f2

    goto :goto_1

    .line 605
    :catch_15
    move-exception v2

    .line 606
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

    .line 607
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 608
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v2

    if-nez v2, :cond_3c

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    if-eqz v2, :cond_4a

    .line 609
    :cond_3c
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_3f6

    .line 612
    :cond_4a
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 613
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v2, :cond_75

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v4

    if-ne v2, v4, :cond_75

    .line 614
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 615
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 616
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 617
    const/4 v4, 0x2

    if-ne v2, v4, :cond_75

    .line 618
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    :cond_75
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->close(Landroid/media/AudioRecord;)V

    .line 623
    :goto_78
    return-void

    .line 461
    :cond_79
    const/16 v2, 0x320

    :try_start_7b
    new-array v0, v2, [S

    move-object/from16 v19, v0

    .line 462
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->startSource()I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$100()I
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_82} :catch_15
    .catchall {:try_start_7b .. :try_end_82} :catchall_3f2

    move-result v17

    .line 463
    const/4 v4, 0x0

    .line 465
    const/4 v2, 0x0

    move/from16 v16, v17

    move/from16 v18, v4

    .line 466
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

    .line 467
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    aget v4, v4, v16

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WakeListener;->open(I)Landroid/media/AudioRecord;
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_a7} :catch_15
    .catchall {:try_start_89 .. :try_end_a7} :catchall_3f6

    move-result-object v7

    .line 468
    if-nez v7, :cond_b9

    .line 469
    add-int/lit8 v5, v18, 0x1

    .line 470
    add-int/lit8 v3, v16, 0x1

    :try_start_ae
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v4, v4

    rem-int v4, v3, v4

    move/from16 v16, v4

    move/from16 v18, v5

    move-object v3, v7

    .line 471
    goto :goto_89

    .line 473
    :cond_b9
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(I)I

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 476
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 477
    const/4 v8, 0x0

    move v14, v9

    move v6, v2

    .line 478
    :goto_c6
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v2

    if-eqz v2, :cond_404

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v9

    if-ne v2, v9, :cond_404

    .line 479
    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v9, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v2, v9}, Landroid/media/AudioRecord;->read([SII)I

    move-result v12

    .line 480
    if-gtz v12, :cond_186

    .line 481
    add-int/lit8 v2, v3, 0x1

    const/16 v3, 0x14

    if-le v2, v3, :cond_17e

    .line 482
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
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_10e} :catch_2eb
    .catchall {:try_start_ae .. :try_end_10e} :catchall_356

    .line 483
    const/4 v3, 0x1

    move v2, v6

    .line 588
    :goto_110
    if-nez v3, :cond_3e0

    move-object v3, v7

    .line 596
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

    .line 598
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 599
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 600
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    invoke-static/range {v17 .. v17}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(I)I

    .line 601
    const-string v2, "wake"

    const-string v4, "mic: no source gives sound"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 603
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_14e
    .catch Ljava/lang/Throwable; {:try_start_113 .. :try_end_14e} :catch_15
    .catchall {:try_start_113 .. :try_end_14e} :catchall_3f6

    .line 612
    :cond_14e
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 613
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v2, :cond_179

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v4

    if-ne v2, v4, :cond_179

    .line 614
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 615
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 616
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 617
    const/4 v4, 0x2

    if-ne v2, v4, :cond_179

    .line 618
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    :cond_179
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->close(Landroid/media/AudioRecord;)V

    goto/16 :goto_78

    .line 486
    :cond_17e
    const-wide/16 v12, 0x32

    :try_start_180
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    move v3, v2

    .line 487
    goto/16 :goto_c6

    .line 489
    :cond_186
    const/4 v15, 0x0

    .line 490
    const/4 v2, 0x0

    .line 491
    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->KWS:Lcom/isaigu/gymapp/ai/Kws;

    .line 492
    if-eqz v11, :cond_1a4

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->det:Lcom/isaigu/gymapp/ai/Kws$Detector;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Lcom/isaigu/gymapp/ai/Kws$Detector;

    move-result-object v3

    if-eqz v3, :cond_19c

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->det:Lcom/isaigu/gymapp/ai/Kws$Detector;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Lcom/isaigu/gymapp/ai/Kws$Detector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/Kws$Detector;->model()Lcom/isaigu/gymapp/ai/Kws;

    move-result-object v3

    if-eq v3, v11, :cond_1a4

    .line 493
    :cond_19c
    new-instance v3, Lcom/isaigu/gymapp/ai/Kws$Detector;

    invoke-direct {v3, v11}, Lcom/isaigu/gymapp/ai/Kws$Detector;-><init>(Lcom/isaigu/gymapp/ai/Kws;)V

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->det:Lcom/isaigu/gymapp/ai/Kws$Detector;
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->access$402(Lcom/isaigu/gymapp/ai/Kws$Detector;)Lcom/isaigu/gymapp/ai/Kws$Detector;

    .line 495
    :cond_1a4
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    if-eqz v3, :cond_1b0

    .line 496
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->earBegin(I)V

    .line 497
    const/4 v3, 0x0

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    .line 499
    :cond_1b0
    const/4 v3, 0x0

    move v9, v3

    :goto_1b2
    if-ge v9, v12, :cond_401

    .line 500
    aget-short v3, v19, v9

    if-gez v3, :cond_245

    aget-short v3, v19, v9

    neg-int v3, v3

    .line 501
    :goto_1bb
    if-le v3, v10, :cond_1be

    move v10, v3

    .line 504
    :cond_1be
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    sget v13, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    aget-short v20, v19, v9

    aput-short v20, v3, v13

    .line 505
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    add-int/lit8 v3, v3, 0x1

    sget-object v13, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v13, v13

    rem-int/2addr v3, v13

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    .line 506
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    sget-object v13, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v13, v13

    if-ge v3, v13, :cond_1dd

    .line 507
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    .line 509
    :cond_1dd
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v3, :cond_249

    .line 510
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    aget-short v13, v19, v9

    invoke-virtual {v3, v13}, Lcom/isaigu/gymapp/ai/WakeWord;->push(S)I

    .line 511
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const/4 v13, 0x0

    iput-object v13, v3, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 512
    aget-short v3, v19, v9

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->earSample(S)Z

    move-result v3

    if-eqz v3, :cond_2d3

    .line 513
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->earDone()V

    .line 514
    const/4 v2, 0x1

    move v11, v2

    .line 564
    :goto_1fa
    add-int v2, v14, v12

    .line 565
    const/16 v3, 0x640

    if-lt v2, v3, :cond_3fd

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 567
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/WakeListener;->levelOf(I)I

    move-result v9

    sput v9, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 568
    const/16 v9, 0xc

    if-le v10, v9, :cond_3ac

    .line 570
    if-nez v6, :cond_23a

    .line 571
    const/4 v4, 0x1

    .line 572
    const/4 v5, 0x0

    sput-boolean v5, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 573
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->keepSource(I)V
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/WakeListener;->access$700(I)V

    .line 574
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

    .line 581
    :cond_23a
    :goto_23a
    const/4 v5, 0x0

    .line 582
    const/4 v4, 0x0

    move v9, v4

    move v10, v5

    move-wide v12, v2

    .line 584
    :goto_23f
    if-eqz v11, :cond_3db

    move v3, v8

    move v2, v6

    .line 585
    goto/16 :goto_110

    .line 500
    :cond_245
    aget-short v3, v19, v9

    goto/16 :goto_1bb

    .line 519
    :cond_249
    if-eqz v11, :cond_29f

    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    if-nez v3, :cond_29f

    .line 521
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    aget-short v13, v19, v9

    invoke-virtual {v3, v13}, Lcom/isaigu/gymapp/ai/WakeWord;->push(S)I

    .line 522
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const/4 v13, 0x0

    iput-object v13, v3, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 523
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2d3

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->det:Lcom/isaigu/gymapp/ai/Kws$Detector;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Lcom/isaigu/gymapp/ai/Kws$Detector;

    move-result-object v3

    aget-short v13, v19, v9

    invoke-virtual {v3, v13}, Lcom/isaigu/gymapp/ai/Kws$Detector;->push(S)Z

    move-result v3

    if-eqz v3, :cond_2d3

    .line 524
    const-string v2, "wake"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0442\u0440\u0435\u043d\u0435\u0440 (own voice model) score="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->det:Lcom/isaigu/gymapp/ai/Kws$Detector;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Lcom/isaigu/gymapp/ai/Kws$Detector;

    move-result-object v9

    iget v9, v9, Lcom/isaigu/gymapp/ai/Kws$Detector;->lastScore:F

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 526
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/ai/WakeListener$Wake;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/WakeListener$Wake;-><init>()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 527
    const/4 v2, 0x1

    move v11, v2

    .line 528
    goto/16 :goto_1fa

    .line 532
    :cond_29f
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    aget-short v13, v19, v9

    invoke-virtual {v3, v13}, Lcom/isaigu/gymapp/ai/WakeWord;->push(S)I

    move-result v3

    .line 533
    const/4 v13, 0x2

    if-ne v3, v13, :cond_2be

    .line 534
    sget-object v13, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v13, v13, Lcom/isaigu/gymapp/ai/WakeWord;->ago0:I

    sget-object v20, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord;->ago1:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v13, v0}, Lcom/isaigu/gymapp/ai/WakeListener;->clip(II)[F

    move-result-object v13

    sput-object v13, Lcom/isaigu/gymapp/ai/WakeListener;->lastClip:[F

    .line 536
    :cond_2be
    if-nez v3, :cond_2d8

    .line 537
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 538
    if-eqz v3, :cond_2d3

    .line 539
    sget-object v13, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v13, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 540
    const-string v13, "wake"

    invoke-static {v13, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_2d3
    :goto_2d3
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto/16 :goto_1b2

    .line 544
    :cond_2d8
    sget-object v13, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 545
    if-eqz v13, :cond_2ef

    .line 546
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600()Landroid/os/Handler;

    move-result-object v20

    new-instance v21, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;

    move-object/from16 v0, v21

    invoke-direct {v0, v13, v3}, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;-><init>(Lcom/isaigu/gymapp/ai/WakeSetup$Sink;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2d3

    .line 605
    :catch_2eb
    move-exception v2

    move-object v3, v7

    goto/16 :goto_16

    .line 547
    :cond_2ef
    const/4 v13, 0x1

    if-ne v3, v13, :cond_38f

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v13

    if-eqz v13, :cond_38f

    sget-object v13, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget-boolean v13, v13, Lcom/isaigu/gymapp/ai/WakeWord;->cloud:Z

    if-eqz v13, :cond_38f

    .line 549
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudEar;->take()Z

    move-result v3

    if-eqz v3, :cond_386

    .line 550
    const-string v3, "wake"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "suspected d="

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v20, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/isaigu/gymapp/ai/WakeWord;->lastD:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v20, " limit="

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v20, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    .line 551
    invoke-virtual/range {v20 .. v20}, Lcom/isaigu/gymapp/ai/WakeWord;->threshold()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v20, " \u2192 the cloud ear"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 550
    invoke-static {v3, v13}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->earBegin(I)V

    .line 553
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600()Landroid/os/Handler;

    move-result-object v3

    new-instance v13, Lcom/isaigu/gymapp/ai/WakeListener$Listening;

    invoke-direct {v13}, Lcom/isaigu/gymapp/ai/WakeListener$Listening;-><init>()V

    invoke-virtual {v3, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_354
    .catch Ljava/lang/Throwable; {:try_start_180 .. :try_end_354} :catch_2eb
    .catchall {:try_start_180 .. :try_end_354} :catchall_356

    goto/16 :goto_2d3

    .line 612
    :catchall_356
    move-exception v2

    :goto_357
    const/4 v3, 0x0

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 613
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v3, :cond_382

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v4

    if-ne v3, v4, :cond_382

    .line 614
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 615
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 616
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 617
    const/4 v4, 0x2

    if-ne v3, v4, :cond_382

    .line 618
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    :cond_382
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/WakeListener;->close(Landroid/media/AudioRecord;)V

    .line 622
    throw v2

    .line 555
    :cond_386
    :try_start_386
    const-string v3, "wake"

    const-string v13, "suspicion dropped: too many this minute"

    invoke-static {v3, v13}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d3

    .line 557
    :cond_38f
    const/4 v13, 0x1

    if-ne v3, v13, :cond_2d3

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v3

    if-eqz v3, :cond_2d3

    .line 558
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 559
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/ai/WakeListener$Wake;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/WakeListener$Wake;-><init>()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 560
    const/4 v2, 0x1

    move v11, v2

    .line 561
    goto/16 :goto_1fa

    .line 576
    :cond_3ac
    if-nez v6, :cond_3fa

    sub-long/2addr v2, v4

    const-wide/16 v12, 0x9c4

    cmp-long v2, v2, v12

    if-lez v2, :cond_3fa

    .line 577
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

    .line 578
    const/4 v3, 0x1

    move v2, v6

    .line 579
    goto/16 :goto_110

    :cond_3db
    move v14, v9

    move v3, v15

    move-wide v4, v12

    .line 587
    goto/16 :goto_c6

    .line 591
    :cond_3e0
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/WakeListener;->close(Landroid/media/AudioRecord;)V
    :try_end_3e3
    .catch Ljava/lang/Throwable; {:try_start_386 .. :try_end_3e3} :catch_2eb
    .catchall {:try_start_386 .. :try_end_3e3} :catchall_356

    .line 592
    const/4 v3, 0x0

    .line 593
    add-int/lit8 v5, v18, 0x1

    .line 594
    add-int/lit8 v4, v16, 0x1

    :try_start_3e8
    sget-object v6, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v6, v6

    rem-int/2addr v4, v6
    :try_end_3ec
    .catch Ljava/lang/Throwable; {:try_start_3e8 .. :try_end_3ec} :catch_15
    .catchall {:try_start_3e8 .. :try_end_3ec} :catchall_3f2

    move/from16 v16, v4

    move/from16 v18, v5

    .line 595
    goto/16 :goto_89

    .line 612
    :catchall_3f2
    move-exception v2

    move-object v7, v3

    goto/16 :goto_357

    :catchall_3f6
    move-exception v2

    move-object v7, v3

    goto/16 :goto_357

    :cond_3fa
    move-wide v2, v4

    goto/16 :goto_23a

    :cond_3fd
    move v9, v2

    move-wide v12, v4

    goto/16 :goto_23f

    :cond_401
    move v11, v2

    goto/16 :goto_1fa

    :cond_404
    move v3, v8

    move v2, v6

    goto/16 :goto_110
.end method
