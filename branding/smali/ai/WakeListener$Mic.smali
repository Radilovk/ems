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
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p1, p0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    .line 315
    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .prologue
    .line 319
    const/4 v3, 0x0

    .line 321
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

    .line 322
    const-wide/16 v4, 0x5dc

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_15
    .catchall {:try_start_1 .. :try_end_14} :catchall_229

    goto :goto_1

    .line 418
    :catch_15
    move-exception v2

    .line 419
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

    .line 420
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 421
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v2

    if-nez v2, :cond_3c

    sget-object v2, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    if-eqz v2, :cond_4a

    .line 422
    :cond_3c
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_243

    .line 425
    :cond_4a
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 426
    if-eqz v3, :cond_55

    .line 428
    :try_start_4f
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_52} :catch_23c

    .line 431
    :goto_52
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 434
    :cond_55
    :goto_55
    return-void

    .line 324
    :cond_56
    const/16 v2, 0x320

    :try_start_58
    new-array v0, v2, [S

    move-object/from16 v19, v0

    .line 325
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->startSource()I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$100()I
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5f} :catch_15
    .catchall {:try_start_58 .. :try_end_5f} :catchall_229

    move-result v17

    .line 326
    const/4 v4, 0x0

    .line 328
    const/4 v2, 0x0

    move/from16 v16, v17

    move/from16 v18, v4

    .line 329
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

    .line 330
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    aget v4, v4, v16

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/WakeListener;->open(I)Landroid/media/AudioRecord;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_84} :catch_15
    .catchall {:try_start_66 .. :try_end_84} :catchall_243

    move-result-object v7

    .line 331
    if-nez v7, :cond_96

    .line 332
    add-int/lit8 v5, v18, 0x1

    .line 333
    add-int/lit8 v3, v16, 0x1

    :try_start_8b
    sget-object v4, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v4, v4

    rem-int v4, v3, v4

    move/from16 v16, v4

    move/from16 v18, v5

    move-object v3, v7

    .line 334
    goto :goto_66

    .line 336
    :cond_96
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(I)I

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 339
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 340
    const/4 v8, 0x0

    move v14, v9

    move v6, v2

    .line 341
    :goto_a3
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$000()Z

    move-result v2

    if-eqz v2, :cond_24e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/isaigu/gymapp/ai/WakeListener$Mic;->gen:I

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->micGen:I
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$200()I

    move-result v9

    if-ne v2, v9, :cond_24e

    .line 342
    const/4 v2, 0x0

    move-object/from16 v0, v19

    array-length v9, v0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v2, v9}, Landroid/media/AudioRecord;->read([SII)I

    move-result v12

    .line 343
    if-gtz v12, :cond_140

    .line 344
    add-int/lit8 v2, v3, 0x1

    const/16 v3, 0x14

    if-le v2, v3, :cond_138

    .line 345
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
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_eb} :catch_176
    .catchall {:try_start_8b .. :try_end_eb} :catchall_241

    .line 346
    const/4 v3, 0x1

    move v2, v6

    .line 397
    :goto_ed
    if-nez v3, :cond_214

    move-object v3, v7

    .line 409
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

    .line 411
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 412
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 413
    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->srcIdx:I
    invoke-static/range {v17 .. v17}, Lcom/isaigu/gymapp/ai/WakeListener;->access$302(I)I

    .line 414
    const-string v2, "wake"

    const-string v4, "mic: no source gives sound"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 416
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/WakeListener$MicAgain;-><init>()V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_12b
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_12b} :catch_15
    .catchall {:try_start_f0 .. :try_end_12b} :catchall_243

    .line 425
    :cond_12b
    const/4 v2, 0x0

    sput v2, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 426
    if-eqz v3, :cond_55

    .line 428
    :try_start_130
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_133} :catch_239

    .line 431
    :goto_133
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    goto/16 :goto_55

    .line 349
    :cond_138
    const-wide/16 v12, 0x32

    :try_start_13a
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    move v3, v2

    .line 350
    goto/16 :goto_a3

    .line 352
    :cond_140
    const/4 v15, 0x0

    .line 353
    const/4 v2, 0x0

    .line 354
    const/4 v3, 0x0

    move v9, v3

    :goto_144
    if-ge v9, v12, :cond_24b

    .line 355
    aget-short v3, v19, v9

    if-gez v3, :cond_15e

    aget-short v3, v19, v9

    neg-int v3, v3

    .line 356
    :goto_14d
    if-le v3, v10, :cond_150

    move v10, v3

    .line 359
    :cond_150
    sget-object v3, Lcom/isaigu/gymapp/ai/WakeListener;->SPOTTER:Lcom/isaigu/gymapp/ai/WakeWord;

    aget-short v11, v19, v9

    invoke-virtual {v3, v11}, Lcom/isaigu/gymapp/ai/WakeWord;->push(S)I

    move-result v3

    .line 360
    if-nez v3, :cond_161

    .line 354
    :cond_15a
    :goto_15a
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_144

    .line 355
    :cond_15e
    aget-short v3, v19, v9

    goto :goto_14d

    .line 363
    :cond_161
    sget-object v11, Lcom/isaigu/gymapp/ai/WakeListener;->setup:Lcom/isaigu/gymapp/ai/WakeSetup$Sink;

    .line 364
    if-eqz v11, :cond_17a

    .line 365
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v13

    new-instance v20, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;

    move-object/from16 v0, v20

    invoke-direct {v0, v11, v3}, Lcom/isaigu/gymapp/ai/WakeListener$SetupEvent;-><init>(Lcom/isaigu/gymapp/ai/WakeSetup$Sink;I)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_15a

    .line 418
    :catch_176
    move-exception v2

    move-object v3, v7

    goto/16 :goto_16

    .line 366
    :cond_17a
    const/4 v11, 0x1

    if-ne v3, v11, :cond_15a

    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->on:Z
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$500()Z

    move-result v3

    if-eqz v3, :cond_15a

    .line 367
    const/4 v2, 0x0

    # setter for: Lcom/isaigu/gymapp/ai/WakeListener;->micRun:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/WakeListener;->access$002(Z)Z

    .line 368
    # getter for: Lcom/isaigu/gymapp/ai/WakeListener;->MAIN:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/ai/WakeListener;->access$400()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isaigu/gymapp/ai/WakeListener$Wake;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/WakeListener$Wake;-><init>()V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    const/4 v2, 0x1

    move v11, v2

    .line 373
    :goto_195
    add-int v2, v14, v12

    .line 374
    const/16 v3, 0x640

    if-lt v2, v3, :cond_248

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 376
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/WakeListener;->levelOf(I)I

    move-result v9

    sput v9, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 377
    const/16 v9, 0xc

    if-le v10, v9, :cond_1e0

    .line 379
    if-nez v6, :cond_1d5

    .line 380
    const/4 v4, 0x1

    .line 381
    const/4 v5, 0x0

    sput-boolean v5, Lcom/isaigu/gymapp/ai/WakeListener;->silent:Z

    .line 382
    # invokes: Lcom/isaigu/gymapp/ai/WakeListener;->keepSource(I)V
    invoke-static/range {v16 .. v16}, Lcom/isaigu/gymapp/ai/WakeListener;->access$600(I)V

    .line 383
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

    .line 390
    :cond_1d5
    :goto_1d5
    const/4 v5, 0x0

    .line 391
    const/4 v4, 0x0

    move v9, v4

    move v10, v5

    move-wide v12, v2

    .line 393
    :goto_1da
    if-eqz v11, :cond_20f

    move v3, v8

    move v2, v6

    .line 394
    goto/16 :goto_ed

    .line 385
    :cond_1e0
    if-nez v6, :cond_246

    sub-long/2addr v2, v4

    const-wide/16 v12, 0x9c4

    cmp-long v2, v2, v12

    if-lez v2, :cond_246

    .line 386
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
    :try_end_20b
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_20b} :catch_176
    .catchall {:try_start_13a .. :try_end_20b} :catchall_241

    .line 387
    const/4 v3, 0x1

    move v2, v6

    .line 388
    goto/16 :goto_ed

    :cond_20f
    move v14, v9

    move v3, v15

    move-wide v4, v12

    .line 396
    goto/16 :goto_a3

    .line 401
    :cond_214
    :try_start_214
    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_217
    .catch Ljava/lang/Throwable; {:try_start_214 .. :try_end_217} :catch_237
    .catchall {:try_start_214 .. :try_end_217} :catchall_241

    .line 404
    :goto_217
    :try_start_217
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V
    :try_end_21a
    .catch Ljava/lang/Throwable; {:try_start_217 .. :try_end_21a} :catch_176
    .catchall {:try_start_217 .. :try_end_21a} :catchall_241

    .line 405
    const/4 v3, 0x0

    .line 406
    add-int/lit8 v5, v18, 0x1

    .line 407
    add-int/lit8 v4, v16, 0x1

    :try_start_21f
    sget-object v6, Lcom/isaigu/gymapp/ai/WakeListener;->SOURCES:[I

    array-length v6, v6

    rem-int/2addr v4, v6
    :try_end_223
    .catch Ljava/lang/Throwable; {:try_start_21f .. :try_end_223} :catch_15
    .catchall {:try_start_21f .. :try_end_223} :catchall_229

    move/from16 v16, v4

    move/from16 v18, v5

    .line 408
    goto/16 :goto_66

    .line 425
    :catchall_229
    move-exception v2

    move-object v7, v3

    :goto_22b
    const/4 v3, 0x0

    sput v3, Lcom/isaigu/gymapp/ai/WakeListener;->level:I

    .line 426
    if-eqz v7, :cond_236

    .line 428
    :try_start_230
    invoke-virtual {v7}, Landroid/media/AudioRecord;->stop()V
    :try_end_233
    .catch Ljava/lang/Throwable; {:try_start_230 .. :try_end_233} :catch_23f

    .line 431
    :goto_233
    invoke-virtual {v7}, Landroid/media/AudioRecord;->release()V

    .line 433
    :cond_236
    throw v2

    .line 402
    :catch_237
    move-exception v3

    goto :goto_217

    .line 429
    :catch_239
    move-exception v2

    goto/16 :goto_133

    :catch_23c
    move-exception v2

    goto/16 :goto_52

    :catch_23f
    move-exception v3

    goto :goto_233

    .line 425
    :catchall_241
    move-exception v2

    goto :goto_22b

    :catchall_243
    move-exception v2

    move-object v7, v3

    goto :goto_22b

    :cond_246
    move-wide v2, v4

    goto :goto_1d5

    :cond_248
    move v9, v2

    move-wide v12, v4

    goto :goto_1da

    :cond_24b
    move v11, v2

    goto/16 :goto_195

    :cond_24e
    move v3, v8

    move v2, v6

    goto/16 :goto_ed
.end method
