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
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput p1, p0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    .line 323
    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 327
    const/4 v3, 0x0

    .line 329
    :goto_1
    :try_start_1
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/WakeListener;->permitted(Landroid/app/Activity;Z)Z

    move-result v2

    if-nez v2, :cond_56

    .line 330
    const-wide/16 v4, 0x5dc

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_15
    .catchall {:try_start_1 .. :try_end_14} :catchall_239

    goto :goto_1

    .line 431
    :catch_15
    move-exception v2

    .line 432
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

    .line 433
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 434
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v2

    if-nez v2, :cond_3c

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    if-eqz v2, :cond_4a

    .line 435
    :cond_3c
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_253

    .line 438
    :cond_4a
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 439
    if-eqz v3, :cond_55

    .line 441
    :try_start_4f
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_24c

    .line 444
    :goto_52
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 447
    :cond_55
    :goto_55
    return-void

    .line 332
    :cond_56
    const/16 v2, 0x320

    :try_start_58
    new-array v0, v2, [S

    move-object/from16 v19, v0

    .line 333
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->startSource()I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$100()I
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5f} :catch_15
    .catchall {:try_start_58 .. :try_end_5f} :catchall_239

    move-result v17

    .line 334
    const/4 v4, 0x0

    .line 336
    const/4 v2, 0x0

    move/from16 v16, v17

    move/from16 v18, v4

    .line 337
    :goto_66
    :try_start_66
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v4

    if-eqz v4, :cond_f0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v5

    if-ne v4, v5, :cond_f0

    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v4, v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_f0

    .line 338
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    aget v4, v4, v16

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WakeListener;->open(I)Landroid/media/AudioRecord;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_84} :catch_15
    .catchall {:try_start_66 .. :try_end_84} :catchall_253

    move-result-object v7

    .line 339
    if-nez v7, :cond_96

    .line 340
    add-int/lit8 v5, v18, 0x1

    .line 341
    add-int/lit8 v3, v16, 0x1

    :try_start_8b
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v4, v4

    rem-int v4, v3, v4

    move/from16 v16, v4

    move/from16 v18, v5

    move-object v3, v7

    .line 342
    goto :goto_66

    .line 344
    :cond_96
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(I)I

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 347
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 348
    const/4 v8, 0x0

    move v14, v9

    move v6, v2

    .line 349
    :goto_a3
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v2

    if-eqz v2, :cond_25e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v9

    if-ne v2, v9, :cond_25e

    .line 350
    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v9, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v2, v9}, Landroid/media/AudioRecord;->read([SII)I

    move-result v12

    .line 351
    if-gtz v12, :cond_140

    .line 352
    add-int/lit8 v2, v3, 0x1

    const/16 v3, 0x14

    if-le v2, v3, :cond_138

    .line 353
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
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_eb} :catch_186
    .catchall {:try_start_8b .. :try_end_eb} :catchall_251

    .line 354
    const/4 v3, 0x1

    move v2, v6

    .line 410
    :goto_ed
    if-nez v3, :cond_224

    move-object v3, v7

    .line 422
    :cond_f0
    :try_start_f0
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v4

    if-eqz v4, :cond_12b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v5

    if-ne v4, v5, :cond_12b

    if-nez v2, :cond_12b

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v2, v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_12b

    .line 424
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 425
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 426
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    invoke-static/range {v17 .. v17}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(I)I

    .line 427
    const-string v2, "wake"

    const-string v4, "mic: no source gives sound"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 429
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_12b
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_12b} :catch_15
    .catchall {:try_start_f0 .. :try_end_12b} :catchall_253

    .line 438
    :cond_12b
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 439
    if-eqz v3, :cond_55

    .line 441
    :try_start_130
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_133} :catch_249

    .line 444
    :goto_133
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    goto/16 :goto_55

    .line 357
    :cond_138
    const-wide/16 v12, 0x32

    :try_start_13a
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    move v3, v2

    .line 358
    goto/16 :goto_a3

    .line 360
    :cond_140
    const/4 v15, 0x0

    .line 361
    const/4 v2, 0x0

    .line 362
    const/4 v3, 0x0

    move v9, v3

    :goto_144
    if-ge v9, v12, :cond_25b

    .line 363
    aget-short v3, v19, v9

    if-gez v3, :cond_16e

    aget-short v3, v19, v9

    neg-int v3, v3

    .line 364
    :goto_14d
    if-le v3, v10, :cond_150

    move v10, v3

    .line 367
    :cond_150
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    aget-short v11, v19, v9

    invoke-virtual {v3, v11}, Lcom/isaigu/gymapp/ai/WakeWord;->push(S)I

    move-result v3

    .line 368
    if-nez v3, :cond_171

    .line 369
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 370
    if-eqz v3, :cond_16a

    .line 371
    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    const/4 v13, 0x0

    iput-object v13, v11, Lcom/isaigu/gymapp/ai/WakeWord;->miss:Ljava/lang/String;

    .line 372
    const-string v11, "wake"

    invoke-static {v11, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_16a
    :goto_16a
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_144

    .line 363
    :cond_16e
    aget-short v3, v19, v9

    goto :goto_14d

    .line 376
    :cond_171
    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 377
    if-eqz v11, :cond_18a

    .line 378
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v13

    new-instance v20, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;

    move-object/from16 v0, v20

    invoke-direct {v0, v11, v3}, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;-><init>(Lcom/isaigu/gymapp/ai/WakeSetup$Sink;I)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16a

    .line 431
    :catch_186
    move-exception v2

    move-object v3, v7

    goto/16 :goto_16

    .line 379
    :cond_18a
    const/4 v11, 0x1

    if-ne v3, v11, :cond_16a

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 380
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 381
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/ai/WakeListener$Wake;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/WakeListener$Wake;-><init>()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    const/4 v2, 0x1

    move v11, v2

    .line 386
    :goto_1a5
    add-int v2, v14, v12

    .line 387
    const/16 v3, 0x640

    if-lt v2, v3, :cond_258

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 389
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/WakeListener;->levelOf(I)I

    move-result v9

    sput v9, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 390
    const/16 v9, 0xc

    if-le v10, v9, :cond_1f0

    .line 392
    if-nez v6, :cond_1e5

    .line 393
    const/4 v4, 0x1

    .line 394
    const/4 v5, 0x0

    sput-boolean v5, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 395
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->keepSource(I)V
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600(I)V

    .line 396
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

    .line 403
    :cond_1e5
    :goto_1e5
    const/4 v5, 0x0

    .line 404
    const/4 v4, 0x0

    move v9, v4

    move v10, v5

    move-wide v12, v2

    .line 406
    :goto_1ea
    if-eqz v11, :cond_21f

    move v3, v8

    move v2, v6

    .line 407
    goto/16 :goto_ed

    .line 398
    :cond_1f0
    if-nez v6, :cond_256

    sub-long/2addr v2, v4

    const-wide/16 v12, 0x9c4

    cmp-long v2, v2, v12

    if-lez v2, :cond_256

    .line 399
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
    :try_end_21b
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_21b} :catch_186
    .catchall {:try_start_13a .. :try_end_21b} :catchall_251

    .line 400
    const/4 v3, 0x1

    move v2, v6

    .line 401
    goto/16 :goto_ed

    :cond_21f
    move v14, v9

    move v3, v15

    move-wide v4, v12

    .line 409
    goto/16 :goto_a3

    .line 414
    :cond_224
    :try_start_224
    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_227
    .catch Ljava/lang/Throwable; {:try_start_224 .. :try_end_227} :catch_247
    .catchall {:try_start_224 .. :try_end_227} :catchall_251

    .line 417
    :goto_227
    :try_start_227
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V
    :try_end_22a
    .catch Ljava/lang/Throwable; {:try_start_227 .. :try_end_22a} :catch_186
    .catchall {:try_start_227 .. :try_end_22a} :catchall_251

    .line 418
    const/4 v3, 0x0

    .line 419
    add-int/lit8 v5, v18, 0x1

    .line 420
    add-int/lit8 v4, v16, 0x1

    :try_start_22f
    sget-object v6, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v6, v6

    rem-int/2addr v4, v6
    :try_end_233
    .catch Ljava/lang/Throwable; {:try_start_22f .. :try_end_233} :catch_15
    .catchall {:try_start_22f .. :try_end_233} :catchall_239

    move/from16 v16, v4

    move/from16 v18, v5

    .line 421
    goto/16 :goto_66

    .line 438
    :catchall_239
    move-exception v2

    move-object v7, v3

    :goto_23b
    const/4 v3, 0x0

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 439
    if-eqz v7, :cond_246

    .line 441
    :try_start_240
    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_243
    .catch Ljava/lang/Throwable; {:try_start_240 .. :try_end_243} :catch_24f

    .line 444
    :goto_243
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V

    .line 446
    :cond_246
    throw v2

    .line 415
    :catch_247
    move-exception v3

    goto :goto_227

    .line 442
    :catch_249
    move-exception v2

    goto/16 :goto_133

    :catch_24c
    move-exception v2

    goto/16 :goto_52

    :catch_24f
    move-exception v3

    goto :goto_243

    .line 438
    :catchall_251
    move-exception v2

    goto :goto_23b

    :catchall_253
    move-exception v2

    move-object v7, v3

    goto :goto_23b

    :cond_256
    move-wide v2, v4

    goto :goto_1e5

    :cond_258
    move v9, v2

    move-wide v12, v4

    goto :goto_1ea

    :cond_25b
    move v11, v2

    goto/16 :goto_1a5

    :cond_25e
    move v3, v8

    move v2, v6

    goto/16 :goto_ed
.end method
