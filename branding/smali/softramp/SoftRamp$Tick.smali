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
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p1, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 305
    iput p2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->g:I

    .line 306
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 311
    :try_start_2
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->g:I

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->alive(Lcom/isaigu/gymapp/train/model/TrainItem;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 356
    :cond_c
    :goto_c
    return-void

    .line 314
    :cond_d
    # getter for: Lcom/isaigu/gymapp/train/model/SoftRamp;->slots:Ljava/util/WeakHashMap;
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$000()Ljava/util/WeakHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;

    move-object v8, v0

    .line 315
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    if-eqz v2, :cond_c

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 319
    iget-wide v4, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampAt:J

    sub-long v4, v2, v4

    iget v6, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rampMs:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_68

    move v11, v9

    .line 320
    :goto_2f
    invoke-static {v8, v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->frac(Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;J)D

    move-result-wide v12

    .line 321
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 322
    const/4 v4, 0x0

    .line 324
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v2, :cond_6a

    .line 325
    iget v2, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    move-object v6, v4

    .line 334
    :goto_45
    invoke-static {v2, v12, v13}, Lcom/isaigu/gymapp/train/model/SoftRamp;->level(ID)I

    move-result v7

    .line 335
    iget v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    if-eq v7, v2, :cond_8e

    .line 336
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v2, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/CommandSender;->isBusy()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 337
    # getter for: Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$100()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_60} :catch_61

    goto :goto_c

    .line 353
    :catch_61
    move-exception v2

    .line 354
    const-string v3, "SoftRamp.tick"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_68
    move v11, v10

    .line 319
    goto :goto_2f

    .line 327
    :cond_6a
    :try_start_6a
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/train/model/SoftRamp;->second(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;)[I

    move-result-object v4

    .line 328
    if-nez v4, :cond_76

    .line 329
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    goto :goto_c

    .line 332
    :cond_76
    const/4 v2, 0x1

    aget v2, v4, v2

    move-object v6, v4

    goto :goto_45

    .line 340
    :cond_7b
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->on:Z

    if-eqz v2, :cond_9c

    .line 341
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v4, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v5, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-static {v2, v3, v4, v5, v7}, Lcom/isaigu/gymapp/train/model/SoftRamp;->sendMain(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZII)V

    .line 345
    :goto_8c
    iput v7, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->lastSent:I

    .line 347
    :cond_8e
    if-eqz v11, :cond_b1

    .line 348
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->ramping:Z

    .line 349
    iget-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->rising:Z

    if-nez v2, :cond_af

    move v2, v9

    :goto_98
    iput-boolean v2, v8, Lcom/isaigu/gymapp/train/model/SoftRamp$Slot;->held:Z

    goto/16 :goto_c

    .line 343
    :cond_9c
    iget-object v2, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v2, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->sender:Lcom/isaigu/gymapp/train/model/CommandSender;

    iget-object v4, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget-object v4, v4, Lcom/isaigu/gymapp/train/model/TrainItem;->partsDisabled:[Z

    iget-object v5, p0, Lcom/isaigu/gymapp/train/model/SoftRamp$Tick;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    iget v5, v5, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    const/4 v12, 0x0

    aget v6, v6, v12

    invoke-virtual/range {v2 .. v7}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendActivePause(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZIII)V

    goto :goto_8c

    :cond_af
    move v2, v10

    .line 349
    goto :goto_98

    .line 352
    :cond_b1
    # getter for: Lcom/isaigu/gymapp/train/model/SoftRamp;->main:Landroid/os/Handler;
    invoke-static {}, Lcom/isaigu/gymapp/train/model/SoftRamp;->access$100()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_ba} :catch_61

    goto/16 :goto_c
.end method
