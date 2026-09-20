.class public final Lcom/isaigu/gymapp/dialog/BlockProgramRunner;
.super Ljava/lang/Object;
.source "BlockProgramRunner.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static armed:Z

.field private static blockIndex:I

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

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyBlockToAll(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V
    .registers 7

    .line 202
    if-eqz p0, :cond_55

    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_7

    goto :goto_55

    .line 205
    :cond_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 206
    if-nez v0, :cond_e

    .line 207
    return-void

    .line 209
    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 211
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 212
    goto :goto_51

    .line 214
    :cond_2a
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v3

    .line 215
    invoke-virtual {p0, v3}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->applyTo(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 216
    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_4e

    iget-object v4, v2, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v4, :cond_4e

    .line 217
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

    .line 219
    :cond_4e
    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 209
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 221
    :cond_54
    return-void

    .line 203
    :cond_55
    :goto_55
    return-void
.end method

.method private static applyWorkLengthToAll()V
    .registers 5

    .line 185
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-nez v0, :cond_5

    .line 186
    return-void

    .line 188
    :cond_5
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 189
    if-nez v0, :cond_c

    .line 190
    return-void

    .line 192
    :cond_c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resolveWorkLengthSeconds()I

    move-result v1

    .line 193
    const/4 v2, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 194
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 195
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    .line 196
    iput v1, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 193
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 199
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

    .line 57
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_3
    sput-object p0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 59
    sput-boolean p2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->repeat:Z

    .line 60
    const/4 p0, 0x1

    invoke-static {p0, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    sput p2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->configuredWorkSec:I

    .line 61
    if-eqz p1, :cond_16

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1b

    :cond_16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_1b
    sput-object p2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    .line 62
    const/4 p1, 0x0

    sput p1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 63
    sput p1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 64
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->lastAdvanceMs:J

    .line 65
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2e

    const/4 p2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    :goto_2f
    sput-boolean p2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    .line 66
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resolveOnOff()[I

    move-result-object p2

    .line 67
    sget-object p3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    aget p1, p2, p1

    aget p0, p2, p0

    invoke-static {p3, p1, p0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result p0

    sput p0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->sequenceWorkSec:I

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
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

    .line 146
    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2f

    .line 149
    :cond_a
    add-int/2addr p1, p2

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 150
    nop

    .line 151
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 152
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iget v2, v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 154
    :cond_2a
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 147
    :cond_2f
    :goto_2f
    return v0
.end method

.method private static firstActiveItem()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 224
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 225
    return-object v1

    .line 227
    :cond_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 228
    if-nez v0, :cond_d

    .line 229
    return-object v1

    .line 231
    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 232
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 233
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    .line 234
    return-object v3

    .line 231
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 237
    :cond_26
    return-object v1
.end method

.method public static getBlockCount()I
    .registers 1

    .line 42
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

    .line 34
    sget v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    return v0
.end method

.method public static getCurrentBlockCycles()I
    .registers 3

    .line 46
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    sget v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    if-ltz v1, :cond_21

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_f

    goto :goto_21

    .line 49
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

    .line 47
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public static getCyclesDone()I
    .registers 1

    .line 38
    sget v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    return v0
.end method

.method public static isArmed()Z
    .registers 1

    .line 30
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    return v0
.end method

.method public static onPulseCycleComplete(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 8

    .line 99
    if-eqz p0, :cond_b6

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-nez v0, :cond_e

    goto/16 :goto_b6

    .line 102
    :cond_e
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    if-eqz v0, :cond_b5

    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_b5

    .line 105
    :cond_1c
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->firstActiveItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_25

    if-eq v0, p0, :cond_25

    .line 107
    return-void

    .line 109
    :cond_25
    sget-object p0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 110
    :try_start_28
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    if-eqz v0, :cond_b0

    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    goto/16 :goto_b0

    .line 113
    :cond_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 114
    sget-wide v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->lastAdvanceMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-gez v6, :cond_46

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_46
    sget v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    sget-object v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_52

    .line 118
    monitor-exit p0

    return-void

    .line 120
    :cond_52
    sget-object v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    sget v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 121
    sget v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 122
    iget v2, v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v3, v2, :cond_6c

    .line 123
    monitor-exit p0

    return-void

    .line 125
    :cond_6c
    sput-wide v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->lastAdvanceMs:J

    .line 126
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 127
    sget v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    add-int/2addr v1, v4

    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 128
    sget-object v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_9b

    .line 129
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->repeat:Z

    if-eqz v1, :cond_94

    .line 130
    sput v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 131
    sget-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->applyBlockToAll(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlay()V

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_94
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    .line 136
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->triggerAllStop()V

    .line 137
    monitor-exit p0

    return-void

    .line 139
    :cond_9b
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    sget v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->applyBlockToAll(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 140
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlay()V

    .line 141
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBlockSignal()V

    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 111
    :cond_b0
    :goto_b0
    monitor-exit p0

    return-void

    .line 142
    :catchall_b2
    move-exception v0

    monitor-exit p0
    :try_end_b4
    .catchall {:try_start_28 .. :try_end_b4} :catchall_b2

    throw v0

    .line 103
    :cond_b5
    :goto_b5
    return-void

    .line 100
    :cond_b6
    :goto_b6
    return-void
.end method

.method public static onTrainingStart()V
    .registers 3

    .line 86
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    if-eqz v1, :cond_25

    sget-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_25

    .line 90
    :cond_10
    const/4 v1, 0x0

    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 91
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 92
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->applyWorkLengthToAll()V

    .line 93
    sget-object v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->applyBlockToAll(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 88
    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    .line 94
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public static reset()V
    .registers 3

    .line 72
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    .line 74
    sput-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->repeat:Z

    .line 75
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->configuredWorkSec:I

    .line 76
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->sequenceWorkSec:I

    .line 77
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 78
    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 79
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->lastAdvanceMs:J

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    .line 81
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 82
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private static resolveOnOff()[I
    .registers 4

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->firstActiveItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 168
    nop

    .line 169
    nop

    .line 170
    const/4 v1, 0x4

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 171
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_2d

    .line 173
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v2, :cond_20

    .line 174
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_21

    .line 173
    :cond_20
    const/4 v2, 0x4

    .line 176
    :goto_21
    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v3, :cond_2a

    .line 177
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    move v0, v1

    move v1, v2

    goto :goto_2e

    .line 176
    :cond_2a
    move v1, v2

    const/4 v0, 0x4

    goto :goto_2e

    .line 181
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

    .line 158
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resolveOnOff()[I

    move-result-object v0

    .line 159
    sget-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->sequenceWorkSec:I

    .line 160
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->repeat:Z

    if-eqz v1, :cond_1d

    .line 161
    sget v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->configuredWorkSec:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 163
    :cond_1d
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
