.class public final Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;
.super Ljava/lang/Object;
.source "SegmentProgramRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;
    }
.end annotation


# static fields
.field private static final EXTENDED_WORK_LENGTH_SEC:I = 0x15180

.field private static final states:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->states:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applySegment(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V
    .registers 3

    .line 106
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_14

    if-nez p1, :cond_9

    goto :goto_14

    .line 110
    :cond_9
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->applyTo(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 112
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->onParamsChange()V

    .line 113
    return-void

    .line 108
    :cond_14
    :goto_14
    return-void
.end method

.method private static clearState(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 2

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->states:Ljava/util/Map;

    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->keyFor(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method private static keyFor(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/lang/String;
    .registers 3

    .line 130
    const-string v0, "unknown"

    if-nez p0, :cond_5

    .line 131
    return-object v0

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v1, :cond_1d

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v1, :cond_35

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_35
    return-object v0
.end method

.method public static onPulsePhaseFinished(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 6

    .line 67
    if-eqz p0, :cond_7e

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_8

    goto/16 :goto_7e

    .line 70
    :cond_8
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-nez v0, :cond_f

    .line 71
    return-void

    .line 73
    :cond_f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->isActive(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 75
    return-void

    .line 77
    :cond_1a
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->getSegments(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 79
    return-void

    .line 81
    :cond_25
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->stateFor(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;

    move-result-object v0

    .line 82
    iget v2, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->segmentIndex:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_32

    .line 83
    return-void

    .line 85
    :cond_32
    iget v2, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->segmentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 86
    iget v3, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->cyclesDone:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->cyclesDone:I

    .line 87
    iget v3, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->cyclesDone:I

    iget v2, v2, Lcom/isaigu/gymapp/dialog/ProgramSegment;->cycles:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v3, v2, :cond_4b

    .line 88
    return-void

    .line 90
    :cond_4b
    const/4 v2, 0x0

    iput v2, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->cyclesDone:I

    .line 91
    iget v2, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->segmentIndex:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->segmentIndex:I

    .line 92
    iget v2, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->segmentIndex:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_5f

    .line 93
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->stop()V

    .line 94
    return-void

    .line 96
    :cond_5f
    iget v0, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->segmentIndex:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 97
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->applySegment(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 98
    iget-object v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->inStart:Z

    if-eqz v1, :cond_77

    .line 99
    iget-object p0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulseContinue:I

    iput v0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    goto :goto_7d

    .line 101
    :cond_77
    iget-object p0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget v0, v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;->pulsePause:I

    iput v0, p0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->secondValue:I

    .line 103
    :goto_7d
    return-void

    .line 68
    :cond_7e
    :goto_7e
    return-void
.end method

.method public static onTrainingStart(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .line 27
    if-nez p0, :cond_3

    .line 28
    return-void

    .line 30
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->clearState(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 32
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->isActive(Lcom/isaigu/gymapp/bean/TrainProgram;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 33
    return-void

    .line 35
    :cond_11
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->getSegments(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/util/ArrayList;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 37
    return-void

    .line 39
    :cond_1c
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->stateFor(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;

    move-result-object v0

    .line 40
    const/4 v2, 0x0

    iput v2, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->segmentIndex:I

    .line 41
    iput v2, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->cyclesDone:I

    .line 42
    iget v3, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    iput v3, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->savedWorkLength:I

    .line 43
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->extended:Z

    .line 44
    const v0, 0x15180

    iput v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 45
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->applySegment(Lcom/isaigu/gymapp/train/model/TrainItem;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 46
    return-void
.end method

.method public static onTrainingStop(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 5

    .line 49
    if-nez p0, :cond_3

    .line 50
    return-void

    .line 52
    :cond_3
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->states:Ljava/util/Map;

    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->keyFor(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;

    .line 54
    if-eqz v1, :cond_34

    iget-boolean v2, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->extended:Z

    if-eqz v2, :cond_34

    .line 55
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v2

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    .line 56
    :goto_21
    if-eqz v2, :cond_2c

    iget v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    if-lez v3, :cond_2c

    .line 57
    iget v1, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    iput v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    goto :goto_34

    .line 58
    :cond_2c
    iget v2, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->savedWorkLength:I

    if-lez v2, :cond_34

    .line 59
    iget v1, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;->savedWorkLength:I

    iput v1, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    .line 62
    :cond_34
    :goto_34
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->clearState(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 63
    return-void
.end method

.method private static stateFor(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;
    .registers 3

    .line 116
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->keyFor(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/lang/String;

    move-result-object p0

    .line 117
    sget-object v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->states:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;

    .line 118
    if-nez v0, :cond_19

    .line 119
    new-instance v0, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$State;-><init>(Lcom/isaigu/gymapp/dialog/SegmentProgramRunner$1;)V

    .line 120
    sget-object v1, Lcom/isaigu/gymapp/dialog/SegmentProgramRunner;->states:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_19
    return-object v0
.end method
