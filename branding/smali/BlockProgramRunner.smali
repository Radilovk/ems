.class public final Lcom/isaigu/gymapp/dialog/BlockProgramRunner;
.super Ljava/lang/Object;
.source "BlockProgramRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/BlockProgramRunner$ItemAction;
    }
.end annotation


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
    .registers 2

    .line 187
    if-nez p0, :cond_3

    .line 188
    return-void

    .line 190
    :cond_3
    new-instance v0, Lcom/isaigu/gymapp/dialog/-$$Lambda$BlockProgramRunner$gZEv4osaFSE8XAIvAQDrZQJ87ts;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/dialog/-$$Lambda$BlockProgramRunner$gZEv4osaFSE8XAIvAQDrZQJ87ts;-><init>(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->forEachActive(Lcom/isaigu/gymapp/dialog/BlockProgramRunner$ItemAction;)V

    .line 201
    return-void
.end method

.method private static applyWorkLengthToAll()V
    .registers 2

    .line 182
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resolveWorkLengthSeconds()I

    move-result v0

    .line 183
    new-instance v1, Lcom/isaigu/gymapp/dialog/-$$Lambda$BlockProgramRunner$MLb5Dtmem5KUyZQ11a0ZLonVo-o;

    invoke-direct {v1, v0}, Lcom/isaigu/gymapp/dialog/-$$Lambda$BlockProgramRunner$MLb5Dtmem5KUyZQ11a0ZLonVo-o;-><init>(I)V

    invoke-static {v1}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->forEachActive(Lcom/isaigu/gymapp/dialog/BlockProgramRunner$ItemAction;)V

    .line 184
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

    .line 143
    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2f

    .line 146
    :cond_a
    add-int/2addr p1, p2

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 147
    nop

    .line 148
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 149
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    iget v2, v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 151
    :cond_2a
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 144
    :cond_2f
    :goto_2f
    return v0
.end method

.method private static firstActiveItem()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .line 204
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 205
    return-object v1

    .line 207
    :cond_6
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 208
    if-nez v0, :cond_d

    .line 209
    return-object v1

    .line 211
    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 212
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 213
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    .line 214
    return-object v3

    .line 211
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 217
    :cond_26
    return-object v1
.end method

.method private static forEachActive(Lcom/isaigu/gymapp/dialog/BlockProgramRunner$ItemAction;)V
    .registers 5

    .line 221
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->manager:Lcom/isaigu/gymapp/train/TrainItemManager;

    if-eqz v0, :cond_2a

    if-nez p0, :cond_7

    goto :goto_2a

    .line 224
    :cond_7
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 225
    if-nez v0, :cond_e

    .line 226
    return-void

    .line 228
    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 230
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 231
    invoke-interface {p0, v2}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner$ItemAction;->run(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 228
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 234
    :cond_29
    return-void

    .line 222
    :cond_2a
    :goto_2a
    return-void
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

.method static synthetic lambda$applyBlockToAll$1(Lcom/isaigu/gymapp/dialog/ProgramSegment;Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .line 191
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    if-nez v0, :cond_7

    .line 192
    return-void

    .line 194
    :cond_7
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->applyTo(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 196
    iget-object p0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz p0, :cond_2b

    iget-object p0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean p0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz p0, :cond_2b

    .line 197
    iget-object p0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v1, :cond_25

    iget v0, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_29

    :cond_25
    iget-object v0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    :goto_29
    iput v0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 199
    :cond_2b
    invoke-virtual {p1}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 200
    return-void
.end method

.method static synthetic lambda$applyWorkLengthToAll$0(ILcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 2

    .line 183
    iput p0, p1, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    return-void
.end method

.method public static onPulseCycleComplete(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 8

    .line 99
    if-eqz p0, :cond_a9

    sget-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    if-eqz v0, :cond_a9

    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_a9

    .line 102
    :cond_10
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->firstActiveItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_19

    if-eq v0, p0, :cond_19

    .line 104
    return-void

    .line 106
    :cond_19
    sget-object p0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 107
    :try_start_1c
    sget-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    if-eqz v0, :cond_a4

    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto/16 :goto_a4

    .line 110
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    sget-wide v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->lastAdvanceMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-gez v6, :cond_3a

    .line 112
    monitor-exit p0

    return-void

    .line 114
    :cond_3a
    sget v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    sget-object v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_46

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_46
    sget-object v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    sget v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 118
    sget v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 119
    iget v2, v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v3, v2, :cond_60

    .line 120
    monitor-exit p0

    return-void

    .line 122
    :cond_60
    sput-wide v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->lastAdvanceMs:J

    .line 123
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->cyclesDone:I

    .line 124
    sget v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    add-int/2addr v1, v4

    sput v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 125
    sget-object v2, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_8f

    .line 126
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->repeat:Z

    if-eqz v1, :cond_88

    .line 127
    sput v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    .line 128
    sget-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->applyBlockToAll(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 129
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlay()V

    .line 130
    monitor-exit p0

    return-void

    .line 132
    :cond_88
    sput-boolean v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->armed:Z

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->triggerAllStop()V

    .line 134
    monitor-exit p0

    return-void

    .line 136
    :cond_8f
    sget-object v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    sget v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blockIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->applyBlockToAll(Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 137
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->refreshBlockOverlay()V

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/dialog/IntervalTimerHelper;->playBlockSignal()V

    .line 139
    monitor-exit p0

    .line 140
    return-void

    .line 108
    :cond_a4
    :goto_a4
    monitor-exit p0

    return-void

    .line 139
    :catchall_a6
    move-exception v0

    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_1c .. :try_end_a8} :catchall_a6

    throw v0

    .line 100
    :cond_a9
    :goto_a9
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

    .line 164
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->firstActiveItem()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 165
    nop

    .line 166
    nop

    .line 167
    const/4 v1, 0x4

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 168
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_2d

    .line 170
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    if-lez v2, :cond_20

    .line 171
    iget v2, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    goto :goto_21

    .line 170
    :cond_20
    const/4 v2, 0x4

    .line 173
    :goto_21
    iget v3, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    if-lez v3, :cond_2a

    .line 174
    iget v1, v0, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    move v0, v1

    move v1, v2

    goto :goto_2e

    .line 173
    :cond_2a
    move v1, v2

    const/4 v0, 0x4

    goto :goto_2e

    .line 178
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

    .line 155
    invoke-static {}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->resolveOnOff()[I

    move-result-object v0

    .line 156
    sget-object v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->blocks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->computeSequenceSeconds(Ljava/util/ArrayList;II)I

    move-result v0

    sput v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->sequenceWorkSec:I

    .line 157
    sget-boolean v1, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->repeat:Z

    if-eqz v1, :cond_1d

    .line 158
    sget v0, Lcom/isaigu/gymapp/dialog/BlockProgramRunner;->configuredWorkSec:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 160
    :cond_1d
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
