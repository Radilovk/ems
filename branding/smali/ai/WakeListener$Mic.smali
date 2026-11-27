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
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput p1, p0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    .line 332
    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 336
    const/4 v3, 0x0

    .line 338
    :goto_1
    :try_start_1
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v2

    if-eqz v2, :cond_7e

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 339
    const-wide/16 v4, 0x5dc

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_15
    .catchall {:try_start_1 .. :try_end_14} :catchall_36d

    goto :goto_1

    .line 468
    :catch_15
    move-exception v2

    .line 469
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

    .line 470
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 471
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v2

    if-nez v2, :cond_3c

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    if-eqz v2, :cond_4a

    .line 472
    :cond_3c
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_371

    .line 475
    :cond_4a
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 476
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v2, :cond_75

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v4

    if-ne v2, v4, :cond_75

    .line 477
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 478
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 479
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 480
    const/4 v4, 0x2

    if-ne v2, v4, :cond_75

    .line 481
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    :cond_75
    if-eqz v3, :cond_7d

    .line 486
    :try_start_77
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_7a} :catch_368

    .line 489
    :goto_7a
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 492
    :cond_7d
    :goto_7d
    return-void

    .line 341
    :cond_7e
    const/16 v2, 0x320

    :try_start_80
    new-array v0, v2, [S

    move-object/from16 v19, v0

    .line 342
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->startSource()I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$100()I
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_87} :catch_15
    .catchall {:try_start_80 .. :try_end_87} :catchall_36d

    move-result v17

    .line 343
    const/4 v4, 0x0

    .line 345
    const/4 v2, 0x0

    move/from16 v16, v17

    move/from16 v18, v4

    .line 346
    :goto_8e
    :try_start_8e
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v4

    if-eqz v4, :cond_118

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v5

    if-ne v4, v5, :cond_118

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v4, v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_118

    .line 347
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    aget v4, v4, v16

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WakeListener;->open(I)Landroid/media/AudioRecord;
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_ac} :catch_15
    .catchall {:try_start_8e .. :try_end_ac} :catchall_371

    move-result-object v7

    .line 348
    if-nez v7, :cond_be

    .line 349
    add-int/lit8 v5, v18, 0x1

    .line 350
    add-int/lit8 v3, v16, 0x1

    :try_start_b3
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v4, v4

    rem-int v4, v3, v4

    move/from16 v16, v4

    move/from16 v18, v5

    move-object v3, v7

    .line 351
    goto :goto_8e

    .line 353
    :cond_be
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(I)I

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 356
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 357
    const/4 v8, 0x0

    move v14, v9

    move v6, v2

    .line 358
    :goto_cb
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v2

    if-eqz v2, :cond_37f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v9

    if-ne v2, v9, :cond_37f

    .line 359
    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v9, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v2, v9}, Landroid/media/AudioRecord;->read([SII)I

    move-result v12

    .line 360
    if-gtz v12, :cond_190

    .line 361
    add-int/lit8 v2, v3, 0x1

    const/16 v3, 0x14

    if-le v2, v3, :cond_188

    .line 362
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
    :try_end_113
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_113} :catch_26b
    .catchall {:try_start_b3 .. :try_end_113} :catchall_2bf

    .line 363
    const/4 v3, 0x1

    move v2, v6

    .line 447
    :goto_115
    if-nez v3, :cond_34e

    move-object v3, v7

    .line 459
    :cond_118
    :try_start_118
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v4

    if-eqz v4, :cond_153

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v5

    if-ne v4, v5, :cond_153

    if-nez v2, :cond_153

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v2, v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_153

    .line 461
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 462
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 463
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    invoke-static/range {v17 .. v17}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(I)I

    .line 464
    const-string v2, "wake"

    const-string v4, "mic: no source gives sound"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 466
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_153
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_153} :catch_15
    .catchall {:try_start_118 .. :try_end_153} :catchall_371

    .line 475
    :cond_153
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 476
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v2, :cond_17e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v4

    if-ne v2, v4, :cond_17e

    .line 477
    sget v2, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 478
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 479
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 480
    const/4 v4, 0x2

    if-ne v2, v4, :cond_17e

    .line 481
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    :cond_17e
    if-eqz v3, :cond_7d

    .line 486
    :try_start_180
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_183
    .catch Ljava/lang/Throwable; {:try_start_180 .. :try_end_183} :catch_365

    .line 489
    :goto_183
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    goto/16 :goto_7d

    .line 366
    :cond_188
    const-wide/16 v12, 0x32

    :try_start_18a
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    move v3, v2

    .line 367
    goto/16 :goto_cb

    .line 369
    :cond_190
    const/4 v15, 0x0

    .line 370
    const/4 v2, 0x0

    .line 371
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    if-eqz v3, :cond_19e

    .line 372
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->earBegin(I)V

    .line 373
    const/4 v3, 0x0

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->pendingEar:I

    .line 375
    :cond_19e
    const/4 v3, 0x0

    move v9, v3

    :goto_1a0
    if-ge v9, v12, :cond_37c

    .line 376
    aget-short v3, v19, v9

    if-gez v3, :cond_233

    aget-short v3, v19, v9

    neg-int v3, v3

    .line 377
    :goto_1a9
    if-le v3, v10, :cond_1ac

    move v10, v3

    .line 380
    :cond_1ac
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    sget v11, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    aget-short v13, v19, v9

    aput-short v13, v3, v11

    .line 381
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    add-int/lit8 v3, v3, 0x1

    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v11, v11

    rem-int/2addr v3, v11

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawAt:I

    .line 382
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->RAW:[S

    array-length v11, v11

    if-ge v3, v11, :cond_1cb

    .line 383
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->rawFill:I

    .line 385
    :cond_1cb
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v3, :cond_237

    .line 386
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    aget-short v11, v19, v9

    invoke-virtual {v3, v11}, Lcom/isaigu/gymapp/ai/WakeWord;->push(S)I

    .line 387
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const/4 v11, 0x0

    iput-object v11, v3, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 388
    aget-short v3, v19, v9

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->earSample(S)Z

    move-result v3

    if-eqz v3, :cond_251

    .line 389
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->earDone()V

    .line 390
    const/4 v2, 0x1

    move v11, v2

    .line 423
    :goto_1e8
    add-int v2, v14, v12

    .line 424
    const/16 v3, 0x640

    if-lt v2, v3, :cond_378

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 426
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/WakeListener;->levelOf(I)I

    move-result v9

    sput v9, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 427
    const/16 v9, 0xc

    if-le v10, v9, :cond_31a

    .line 429
    if-nez v6, :cond_228

    .line 430
    const/4 v4, 0x1

    .line 431
    const/4 v5, 0x0

    sput-boolean v5, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 432
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->keepSource(I)V
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600(I)V

    .line 433
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

    .line 440
    :cond_228
    :goto_228
    const/4 v5, 0x0

    .line 441
    const/4 v4, 0x0

    move v9, v4

    move v10, v5

    move-wide v12, v2

    .line 443
    :goto_22d
    if-eqz v11, :cond_349

    move v3, v8

    move v2, v6

    .line 444
    goto/16 :goto_115

    .line 376
    :cond_233
    aget-short v3, v19, v9

    goto/16 :goto_1a9

    .line 395
    :cond_237
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    aget-short v11, v19, v9

    invoke-virtual {v3, v11}, Lcom/isaigu/gymapp/ai/WakeWord;->push(S)I

    move-result v3

    .line 396
    if-nez v3, :cond_256

    .line 397
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 398
    if-eqz v3, :cond_251

    .line 399
    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const/4 v13, 0x0

    iput-object v13, v11, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 400
    const-string v11, "wake"

    invoke-static {v11, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_251
    :goto_251
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto/16 :goto_1a0

    .line 404
    :cond_256
    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 405
    if-eqz v11, :cond_26f

    .line 406
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v13

    new-instance v20, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;

    move-object/from16 v0, v20

    invoke-direct {v0, v11, v3}, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;-><init>(Lcom/isaigu/gymapp/ai/WakeSetup$Sink;I)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_251

    .line 468
    :catch_26b
    move-exception v2

    move-object v3, v7

    goto/16 :goto_16

    .line 407
    :cond_26f
    const/4 v11, 0x1

    if-ne v3, v11, :cond_2fd

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v11

    if-eqz v11, :cond_2fd

    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget v11, v11, Lcom/isaigu/gymapp/ai/WakeWord;->loose:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v13

    if-lez v11, :cond_2fd

    .line 409
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudEar;->take()Z

    move-result v3

    if-eqz v3, :cond_2f4

    .line 410
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

    .line 411
    invoke-virtual {v13}, Lcom/isaigu/gymapp/ai/WakeWord;->threshold()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " \u2192 the cloud ear"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 410
    invoke-static {v3, v11}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WakeListener;->earBegin(I)V
    :try_end_2be
    .catch Ljava/lang/Throwable; {:try_start_18a .. :try_end_2be} :catch_26b
    .catchall {:try_start_18a .. :try_end_2be} :catchall_2bf

    goto :goto_251

    .line 475
    :catchall_2bf
    move-exception v2

    :goto_2c0
    const/4 v3, 0x0

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 476
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    if-eqz v3, :cond_2eb

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v4

    if-ne v3, v4, :cond_2eb

    .line 477
    sget v3, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 478
    const/4 v4, 0x0

    sput v4, Lcom/isaigu/gymapp/ai/WakeListener;->ear:I

    .line 479
    const/4 v4, 0x0

    sput-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->cap:[S

    .line 480
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2eb

    .line 481
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$Heard;

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/isaigu/gymapp/ai/WakeListener$Heard;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    :cond_2eb
    if-eqz v7, :cond_2f3

    .line 486
    :try_start_2ed
    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_2f0
    .catch Ljava/lang/Throwable; {:try_start_2ed .. :try_end_2f0} :catch_36b

    .line 489
    :goto_2f0
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V

    .line 491
    :cond_2f3
    throw v2

    .line 414
    :cond_2f4
    :try_start_2f4
    const-string v3, "wake"

    const-string v11, "suspicion dropped: too many this minute"

    invoke-static {v3, v11}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_251

    .line 416
    :cond_2fd
    const/4 v11, 0x1

    if-ne v3, v11, :cond_251

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v3

    if-eqz v3, :cond_251

    .line 417
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 418
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/ai/WakeListener$Wake;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/WakeListener$Wake;-><init>()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    const/4 v2, 0x1

    move v11, v2

    .line 420
    goto/16 :goto_1e8

    .line 435
    :cond_31a
    if-nez v6, :cond_375

    sub-long/2addr v2, v4

    const-wide/16 v12, 0x9c4

    cmp-long v2, v2, v12

    if-lez v2, :cond_375

    .line 436
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
    :try_end_345
    .catch Ljava/lang/Throwable; {:try_start_2f4 .. :try_end_345} :catch_26b
    .catchall {:try_start_2f4 .. :try_end_345} :catchall_2bf

    .line 437
    const/4 v3, 0x1

    move v2, v6

    .line 438
    goto/16 :goto_115

    :cond_349
    move v14, v9

    move v3, v15

    move-wide v4, v12

    .line 446
    goto/16 :goto_cb

    .line 451
    :cond_34e
    :try_start_34e
    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_351
    .catch Ljava/lang/Throwable; {:try_start_34e .. :try_end_351} :catch_363
    .catchall {:try_start_34e .. :try_end_351} :catchall_2bf

    .line 454
    :goto_351
    :try_start_351
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V
    :try_end_354
    .catch Ljava/lang/Throwable; {:try_start_351 .. :try_end_354} :catch_26b
    .catchall {:try_start_351 .. :try_end_354} :catchall_2bf

    .line 455
    const/4 v3, 0x0

    .line 456
    add-int/lit8 v5, v18, 0x1

    .line 457
    add-int/lit8 v4, v16, 0x1

    :try_start_359
    sget-object v6, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v6, v6

    rem-int/2addr v4, v6
    :try_end_35d
    .catch Ljava/lang/Throwable; {:try_start_359 .. :try_end_35d} :catch_15
    .catchall {:try_start_359 .. :try_end_35d} :catchall_36d

    move/from16 v16, v4

    move/from16 v18, v5

    .line 458
    goto/16 :goto_8e

    .line 452
    :catch_363
    move-exception v3

    goto :goto_351

    .line 487
    :catch_365
    move-exception v2

    goto/16 :goto_183

    :catch_368
    move-exception v2

    goto/16 :goto_7a

    :catch_36b
    move-exception v3

    goto :goto_2f0

    .line 475
    :catchall_36d
    move-exception v2

    move-object v7, v3

    goto/16 :goto_2c0

    :catchall_371
    move-exception v2

    move-object v7, v3

    goto/16 :goto_2c0

    :cond_375
    move-wide v2, v4

    goto/16 :goto_228

    :cond_378
    move v9, v2

    move-wide v12, v4

    goto/16 :goto_22d

    :cond_37c
    move v11, v2

    goto/16 :goto_1e8

    :cond_37f
    move v3, v8

    move v2, v6

    goto/16 :goto_115
.end method
