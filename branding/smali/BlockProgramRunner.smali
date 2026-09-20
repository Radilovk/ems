.class public final Lcom/isaigu/gymapp/dialog/BlockProgramRunner;
.super Ljava/lang/Object;
.source "BlockProgramRunner.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static armed:Z

.field private static blockIndex:I

.field private static blockRemainingMs:J

.field private static blockTotalMs:J

.field private static blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;"
        }
    .end annotation
.end field

.field private static configuredWorkSec:I

.field private static cycleMs:I

.field private static cyclesDone:I

.field private static lastAdvanceMs:J

.field private static manager:Lcom/isaigu/gymapp/train/TrainItemManager;

.field private static repeat:Z

.field private static sequenceWorkSec:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->LOCK:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyBlockToAll(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V
    .registers 7

    .line 247
    if-eqz p0, :cond_55

    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_7

    goto :goto_55

    .line 250
    :cond_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 251
    if-nez v0, :cond_e

    .line 252
    return-void

    .line 254
    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 256
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 257
    goto :goto_51

    .line 259
    :cond_2a
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 260
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->applyTo(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 261
    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_4e

    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v4, :cond_4e

    .line 262
    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v5, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v5, :cond_48

    iget v3, v3, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_4c

    :cond_48
    iget-object v3, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    :goto_4c
    iput v3, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 264
    :cond_4e
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 254
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 266
    :cond_54
    return-void

    .line 248
    :cond_55
    :goto_55
    return-void
.end method

.method private static applyWorkLengthToAll()V
    .registers 5

    .line 230
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 231
    return-void

    .line 233
    :cond_5
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 234
    if-nez v0, :cond_c

    .line 235
    return-void

    .line 237
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resolveWorkLengthSeconds()I

    move-result v1

    .line 238
    const/4 v2, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 239
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 240
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    .line 241
    iput v1, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 238
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 244
    :cond_2a
    return-void
.end method

.method public static arm(Lcom/isaigu/gymapp/train/TrainItemManager;Ljava/util/ArrayList;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/train/TrainItemManager;",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;ZI)V"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    sput-object p0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 80
    sput-boolean p2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->repeat:Z

    .line 81
    const/4 p0, 0x1

    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    sput p2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->configuredWorkSec:I

    .line 82
    if-eqz p1, :cond_16

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1b

    :cond_16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1b
    sput-object p2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    .line 83
    const/4 p1, 0x0

    sput p1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 84
    sput p1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 85
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->lastAdvanceMs:J

    .line 86
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2e

    const/4 p2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    :goto_2f
    sput-boolean p2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    .line 87
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resolveOnOff()[I

    move-result-object p2

    .line 88
    sget-object p3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    aget p1, p2, p1

    aget p0, p2, p0

    invoke-static {p3, p1, p0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->sequenceWorkSec:I

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public static computeSequenceSeconds(Ljava/util/ArrayList;II)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;II)I"
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2f

    .line 194
    :cond_a
    add-int/2addr p1, p2

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 195
    nop

    .line 196
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 197
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iget v2, v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 199
    :cond_2a
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 192
    :cond_2f
    :goto_2f
    return v0
.end method

.method private static firstActiveItem()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 269
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 270
    return-object v1

    .line 272
    :cond_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 273
    if-nez v0, :cond_d

    .line 274
    return-object v1

    .line 276
    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 277
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 278
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    .line 279
    return-object v3

    .line 276
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 282
    :cond_26
    return-object v1
.end method

.method public static getBlockCount()I
    .registers 1

    .line 45
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static getBlockIndex()I
    .registers 1

    .line 37
    sget v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    return v0
.end method

.method public static getBlockRemainingMs()J
    .registers 2

    .line 56
    sget-wide v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockRemainingMs:J

    return-wide v0
.end method

.method public static getBlockTotalMs()J
    .registers 2

    .line 60
    sget-wide v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockTotalMs:J

    return-wide v0
.end method

.method public static getCurrentBlockCycles()I
    .registers 3

    .line 49
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    sget v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    if-ltz v1, :cond_21

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_f

    goto :goto_21

    .line 52
    :cond_f
    const/4 v0, 0x1

    sget-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    sget v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iget v1, v1, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 50
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public static getCyclesDone()I
    .registers 1

    .line 41
    sget v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    return v0
.end method

.method public static isArmed()Z
    .registers 1

    .line 33
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    return v0
.end method

.method public static onPulseCycleComplete(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 8

    .line 124
    if-eqz p0, :cond_c8

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-nez v0, :cond_e

    goto/16 :goto_c8

    .line 127
    :cond_e
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    if-eqz v0, :cond_c7

    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_c7

    .line 130
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->firstActiveItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_25

    if-eq v0, p0, :cond_25

    .line 132
    return-void

    .line 134
    :cond_25
    sget-object p0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 135
    :try_start_28
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    if-eqz v0, :cond_c2

    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    goto/16 :goto_c2

    .line 138
    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 139
    sget-wide v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->lastAdvanceMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-gez v6, :cond_46

    .line 140
    monitor-exit p0

    return-void

    .line 142
    :cond_46
    sget v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    sget-object v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_52

    .line 143
    monitor-exit p0

    return-void

    .line 145
    :cond_52
    sget-object v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    sget v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 146
    sget v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 147
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->syncBlockTimerFromState()V

    .line 148
    sget v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    iget v2, v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v3, v2, :cond_74

    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlay()V

    .line 150
    monitor-exit p0

    return-void

    .line 152
    :cond_74
    sput-wide v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->lastAdvanceMs:J

    .line 153
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 154
    sget v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    add-int/2addr v1, v4

    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 155
    sget-object v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_aa

    .line 156
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->repeat:Z

    if-eqz v1, :cond_9f

    .line 157
    sput v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 158
    sget-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->applyBlockToAll(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 159
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->syncBlockTimerFromState()V

    .line 160
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlay()V

    .line 161
    monitor-exit p0

    return-void

    .line 163
    :cond_9f
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockRemainingMs:J

    .line 164
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    .line 165
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->triggerAllStop()V

    .line 166
    monitor-exit p0

    return-void

    .line 168
    :cond_aa
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    sget v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->applyBlockToAll(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 169
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->syncBlockTimerFromState()V

    .line 170
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlay()V

    .line 171
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBlockSignal()V

    .line 172
    monitor-exit p0

    .line 173
    return-void

    .line 136
    :cond_c2
    :goto_c2
    monitor-exit p0

    return-void

    .line 172
    :catchall_c4
    move-exception v0

    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_28 .. :try_end_c6} :catchall_c4

    throw v0

    .line 128
    :cond_c7
    :goto_c7
    return-void

    .line 125
    :cond_c8
    :goto_c8
    return-void
.end method

.method public static onTrainingStart()V
    .registers 3

    .line 110
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    if-eqz v1, :cond_28

    sget-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_28

    .line 114
    :cond_10
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 115
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->applyWorkLengthToAll()V

    .line 117
    sget-object v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->applyBlockToAll(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 118
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->syncBlockTimerFromState()V

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 112
    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    .line 119
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public static reset()V
    .registers 4

    .line 93
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    .line 95
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->repeat:Z

    .line 96
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->configuredWorkSec:I

    .line 97
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->sequenceWorkSec:I

    .line 98
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 99
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 100
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->lastAdvanceMs:J

    .line 101
    sput-wide v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockRemainingMs:J

    .line 102
    sput-wide v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockTotalMs:J

    .line 103
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cycleMs:I

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    .line 105
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private static resolveOnOff()[I
    .registers 4

    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->firstActiveItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 213
    nop

    .line 214
    nop

    .line 215
    const/4 v1, 0x4

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 216
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_2d

    .line 218
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v2, :cond_20

    .line 219
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_21

    .line 218
    :cond_20
    const/4 v2, 0x4

    .line 221
    :goto_21
    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v3, :cond_2a

    .line 222
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    move v0, v1

    move v1, v2

    goto :goto_2e

    .line 221
    :cond_2a
    move v1, v2

    const/4 v0, 0x4

    goto :goto_2e

    .line 226
    :cond_2d
    const/4 v0, 0x4

    :goto_2e
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2
.end method

.method static resolveWorkLengthSeconds()I
    .registers 4

    .line 203
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resolveOnOff()[I

    move-result-object v0

    .line 204
    sget-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->sequenceWorkSec:I

    .line 205
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->repeat:Z

    if-eqz v1, :cond_1d

    .line 206
    sget v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->configuredWorkSec:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 208
    :cond_1d
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private static syncBlockTimerFromState()V
    .registers 6

    .line 176
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    sget v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    if-ltz v0, :cond_52

    sget-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_15

    goto :goto_52

    .line 181
    :cond_15
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resolveOnOff()[I

    move-result-object v0

    .line 182
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    add-int/2addr v2, v0

    const/16 v0, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cycleMs:I

    .line 183
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    sget v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 184
    iget v0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 185
    int-to-long v2, v0

    sget v4, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cycleMs:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    sput-wide v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockTotalMs:J

    .line 186
    sget v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 187
    int-to-long v0, v0

    sget v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cycleMs:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockRemainingMs:J

    .line 188
    return-void

    .line 177
    :cond_52
    :goto_52
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockRemainingMs:J

    .line 178
    sput-wide v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockTotalMs:J

    .line 179
    return-void
.end method

.method public static tickBlock(J)V
    .registers 7

    .line 64
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_17

    sget-wide v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockRemainingMs:J

    cmp-long v4, v2, v0

    if-gtz v4, :cond_d

    goto :goto_17

    .line 67
    :cond_d
    sub-long/2addr v2, p0

    sput-wide v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockRemainingMs:J

    .line 68
    cmp-long p0, v2, v0

    if-gez p0, :cond_16

    .line 69
    sput-wide v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockRemainingMs:J

    .line 71
    :cond_16
    return-void

    .line 65
    :cond_17
    :goto_17
    return-void
.end method
