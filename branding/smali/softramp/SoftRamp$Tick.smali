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
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 423
    iput p2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->g:I

    .line 424
    return-void
.end method


# virtual methods
.method public run()V
    .registers 17

    .prologue
    const-wide/16 v14, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 429
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->g:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->alive(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v2

    if-nez v2, :cond_13

    .line 490
    :cond_12
    :goto_12
    return-void

    .line 432
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

    .line 433
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-eqz v2, :cond_12

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 437
    iget-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastTick:J

    sub-long v4, v2, v4

    .line 438
    iput-wide v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastTick:J

    .line 439
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v6, v6, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v6}, Lcom/isaigu/gymapp/train/model/CommandSender;->isBusy()Z

    move-result v12

    .line 440
    if-nez v12, :cond_85

    .line 441
    const-wide/16 v4, 0x0

    iput-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    .line 442
    const/4 v4, 0x0

    iput-boolean v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->stalled:Z

    .line 453
    :cond_44
    :goto_44
    iget-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    sub-long v4, v2, v4

    iget v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampMs:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_b3

    move v11, v9

    .line 454
    :goto_50
    invoke-static {v8, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->frac(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)D

    move-result-wide v14

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 456
    const/4 v4, 0x0

    .line 458
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v2, :cond_b5

    .line 459
    iget v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move-object v6, v4

    .line 468
    :goto_68
    invoke-static {v2, v14, v15}, Lcom/isaigu/gymapp/train/model/SoftRamp;->level(ID)I

    move-result v7

    .line 469
    iget v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    if-eq v7, v2, :cond_e2

    .line 470
    if-eqz v12, :cond_c9

    .line 471
    # getter for: Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$100()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7d} :catch_7e

    goto :goto_12

    .line 487
    :catch_7e
    move-exception v2

    .line 488
    const-string v3, "SoftRamp.tick"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 443
    :cond_85
    :try_start_85
    iget-wide v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    cmp-long v6, v6, v14

    if-nez v6, :cond_8e

    .line 444
    iput-wide v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    goto :goto_44

    .line 445
    :cond_8e
    iget-boolean v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    if-eqz v6, :cond_44

    .line 446
    iget-boolean v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->stalled:Z

    if-eqz v6, :cond_9c

    .line 447
    iget-wide v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    add-long/2addr v4, v6

    iput-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    goto :goto_44

    .line 448
    :cond_9c
    iget-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-lez v4, :cond_44

    .line 449
    const/4 v4, 0x1

    iput-boolean v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->stalled:Z

    .line 450
    iget-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    iget-wide v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->busySince:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    goto :goto_44

    :cond_b3
    move v11, v10

    .line 453
    goto :goto_50

    .line 461
    :cond_b5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    .line 462
    if-nez v4, :cond_c4

    .line 463
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    goto/16 :goto_12

    .line 466
    :cond_c4
    const/4 v2, 0x1

    aget v2, v4, v2

    move-object v6, v4

    goto :goto_68

    .line 474
    :cond_c9
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v2, :cond_f0

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v4, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v5, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendMain(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V

    .line 479
    :goto_e0
    iput v7, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    .line 481
    :cond_e2
    if-eqz v11, :cond_10b

    .line 482
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 483
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    if-nez v2, :cond_109

    move v2, v9

    :goto_ec
    iput-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    goto/16 :goto_12

    .line 477
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

    .line 483
    goto :goto_ec

    .line 486
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
