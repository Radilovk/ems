.class final Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;
.super Ljava/lang/Object;
.source "SoftRamp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/model/SoftRamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# instance fields
.field final g:I

.field final item:Lcom/isaigu/gymapp/train/model/TrainItem;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/train/model/TrainItem;I)V
    .registers 3

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 358
    iput p2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->g:I

    .line 359
    return-void
.end method


# virtual methods
.method public run()V
    .registers 17

    .prologue
    const-wide/16 v14, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 364
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->g:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->alive(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v2

    if-nez v2, :cond_13

    .line 425
    :cond_12
    :goto_12
    return-void

    .line 367
    :cond_13
    # getter for: Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$000()Ljava/util/WeakHashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    move-object v8, v0

    .line 368
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-eqz v2, :cond_12

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 372
    iget-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastTick:J

    sub-long v4, v2, v4

    .line 373
    iput-wide v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastTick:J

    .line 374
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v6, v6, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/CommandSender;->isBusy()Z

    move-result v12

    .line 375
    if-nez v12, :cond_85

    .line 376
    const-wide/16 v4, 0x0

    iput-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    .line 377
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->stalled:Z

    .line 388
    :cond_44
    :goto_44
    iget-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    sub-long v4, v2, v4

    iget v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampMs:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_b3

    move v11, v9

    .line 389
    :goto_50
    invoke-static {v8, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->frac(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)D

    move-result-wide v14

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 391
    const/4 v4, 0x0

    .line 393
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v2, :cond_b5

    .line 394
    iget v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move-object v6, v4

    .line 403
    :goto_68
    invoke-static {v2, v14, v15}, Lcom/isaigu/gymapp/train/model/SoftRamp;->level(ID)I

    move-result v7

    .line 404
    iget v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    if-eq v7, v2, :cond_e2

    .line 405
    if-eqz v12, :cond_c9

    .line 406
    # getter for: Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$100()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7d} :catch_7e

    goto :goto_12

    .line 422
    :catch_7e
    move-exception v2

    .line 423
    const-string v3, "SoftRamp.tick"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 378
    :cond_85
    :try_start_85
    iget-wide v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    cmp-long v6, v6, v14

    if-nez v6, :cond_8e

    .line 379
    iput-wide v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    goto :goto_44

    .line 380
    :cond_8e
    iget-boolean v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    if-eqz v6, :cond_44

    .line 381
    iget-boolean v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->stalled:Z

    if-eqz v6, :cond_9c

    .line 382
    iget-wide v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    add-long/2addr v4, v6

    iput-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    goto :goto_44

    .line 383
    :cond_9c
    iget-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-lez v4, :cond_44

    .line 384
    const/4 v4, 0x1

    iput-boolean v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->stalled:Z

    .line 385
    iget-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    iget-wide v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    goto :goto_44

    :cond_b3
    move v11, v10

    .line 388
    goto :goto_50

    .line 396
    :cond_b5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    .line 397
    if-nez v4, :cond_c4

    .line 398
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    goto/16 :goto_12

    .line 401
    :cond_c4
    const/4 v2, 0x1

    aget v2, v4, v2

    move-object v6, v4

    goto :goto_68

    .line 409
    :cond_c9
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v2, :cond_f0

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v4, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v5, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendMain(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V

    .line 414
    :goto_e0
    iput v7, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    .line 416
    :cond_e2
    if-eqz v11, :cond_10b

    .line 417
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 418
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    if-nez v2, :cond_109

    move v2, v9

    :goto_ec
    iput-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    goto/16 :goto_12

    .line 412
    :cond_f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v2, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v4, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v5, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    const/4 v12, 0x0

    aget v6, v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    goto :goto_e0

    :cond_109
    move v2, v10

    .line 418
    goto :goto_ec

    .line 421
    :cond_10b
    # getter for: Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$100()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_116
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_116} :catch_7e

    goto/16 :goto_12
.end method
