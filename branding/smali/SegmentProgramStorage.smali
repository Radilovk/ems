.class public final Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;
.super Ljava/lang/Object;
.source "SegmentProgramStorage.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "file_name_segment_program_overlay"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 3

    .line 18
    if-nez p0, :cond_3

    .line 19
    return-void

    .line 21
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->loadEntries()Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_2b

    iget-boolean v1, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->enabled:Z

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_2b

    .line 26
    :cond_1e
    iget-object v0, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    .line 27
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->applySegmentToAll(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 28
    return-void

    .line 24
    :cond_2b
    :goto_2b
    return-void
.end method

.method private static applyLoaded(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;",
            ">;",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ")V"
        }
    .end annotation

    .line 104
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    move-result-object p0

    .line 105
    if-eqz p0, :cond_24

    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->enabled:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_24

    .line 108
    :cond_17
    iget-object p0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/isaigu/gymapp/dialog/ProgramSegment;

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->applySegmentToAll(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 109
    return-void

    .line 106
    :cond_24
    :goto_24
    return-void
.end method

.method private static applySegment(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V
    .registers 2

    .line 122
    if-eqz p0, :cond_5

    .line 123
    invoke-virtual {p1, p0}, Lcom/isaigu/gymapp/dialog/ProgramSegment;->applyTo(Lcom/isaigu/gymapp/bean/ProgramDataBean;)V

    .line 125
    :cond_5
    return-void
.end method

.method private static applySegmentToAll(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V
    .registers 3

    .line 112
    if-nez p1, :cond_3

    .line 113
    return-void

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->applySegment(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->applySegment(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 117
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->applySegment(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 118
    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->applySegment(Lcom/isaigu/gymapp/bean/ProgramDataBean;Lcom/isaigu/gymapp/dialog/ProgramSegment;)V

    .line 119
    return-void
.end method

.method private static findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;",
            ">;",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ")",
            "Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;"
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    if-nez p1, :cond_6

    goto :goto_3e

    .line 131
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 132
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 133
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    .line 134
    iget-object v2, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->id:Ljava/lang/Long;

    if-eqz v2, :cond_29

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->id:Ljava/lang/Long;

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 135
    return-object v1

    .line 137
    :cond_29
    iget-object v2, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v2, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v2, :cond_3c

    iget-object v2, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 138
    return-object v1

    .line 140
    :cond_3c
    goto :goto_a

    .line 141
    :cond_3d
    return-object v0

    .line 129
    :cond_3e
    :goto_3e
    return-object v0
.end method

.method public static getSegments(Lcom/isaigu/gymapp/bean/TrainProgram;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/isaigu/gymapp/dialog/ProgramSegment;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->loadForProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    move-result-object p0

    .line 87
    if-eqz p0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    goto :goto_e

    .line 90
    :cond_b
    iget-object p0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    return-object p0

    .line 88
    :cond_e
    :goto_e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static isActive(Lcom/isaigu/gymapp/bean/TrainProgram;)Z
    .registers 2

    .line 81
    invoke-static {p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->loadForProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    move-result-object p0

    .line 82
    if-eqz p0, :cond_18

    iget-boolean v0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->enabled:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private static loadEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;",
            ">;"
        }
    .end annotation

    .line 146
    const-class v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    const-string v1, "file_name_segment_program_overlay"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/utils/FileUtils;->getDataList(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_f

    .line 148
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 150
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static loadForProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;
    .registers 3

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->loadEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_f

    .line 70
    return-object v0

    .line 72
    :cond_f
    new-instance v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    invoke-direct {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->id:Ljava/lang/Long;

    .line 74
    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->name:Ljava/lang/String;

    .line 75
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->enabled:Z

    .line 76
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    .line 77
    return-object v0
.end method

.method public static mergeList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/bean/TrainProgram;",
            ">;)V"
        }
    .end annotation

    .line 94
    if-eqz p0, :cond_22

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_22

    .line 97
    :cond_9
    invoke-static {}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->loadEntries()Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 99
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->applyLoaded(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 100
    goto :goto_11

    .line 101
    :cond_21
    return-void

    .line 95
    :cond_22
    :goto_22
    return-void
.end method

.method public static save(Lcom/isaigu/gymapp/bean/TrainProgram;)V
    .registers 4

    .line 31
    if-nez p0, :cond_3

    .line 32
    return-void

    .line 34
    :cond_3
    invoke-static {}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->loadEntries()Ljava/util/List;

    move-result-object v0

    .line 35
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    move-result-object v1

    .line 36
    if-nez v1, :cond_1d

    .line 37
    new-instance v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    invoke-direct {v1}, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;-><init>()V

    .line 38
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v2, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->id:Ljava/lang/Long;

    .line 39
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->name:Ljava/lang/String;

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_1d
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object v2, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->id:Ljava/lang/Long;

    .line 43
    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object p0, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->name:Ljava/lang/String;

    .line 44
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->saveEntries(Ljava/util/List;)V

    .line 45
    return-void
.end method

.method private static saveEntries(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;",
            ">;)V"
        }
    .end annotation

    .line 154
    const-class v0, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    const-string v1, "file_name_segment_program_overlay"

    invoke-static {v1, v0, p0}, Lcom/isaigu/gymapp/utils/FileUtils;->saveListData(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)V

    .line 155
    return-void
.end method

.method public static saveEntry(Lcom/isaigu/gymapp/bean/TrainProgram;Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;)V
    .registers 5

    .line 48
    if-eqz p0, :cond_31

    if-nez p1, :cond_5

    goto :goto_31

    .line 51
    :cond_5
    invoke-static {}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->loadEntries()Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->findEntry(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainProgram;)Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;

    move-result-object v1

    .line 53
    if-nez v1, :cond_13

    .line 54
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 56
    :cond_13
    iget-boolean v2, p1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->enabled:Z

    iput-boolean v2, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->enabled:Z

    .line 57
    iget-object v2, p1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    iget-object p1, p1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    goto :goto_23

    :cond_1e
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    iput-object p1, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->segments:Ljava/util/ArrayList;

    .line 58
    iget-object p1, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->id:Ljava/lang/Long;

    iput-object p1, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->id:Ljava/lang/Long;

    .line 59
    iget-object p0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    iput-object p0, v1, Lcom/isaigu/gymapp/dialog/SegmentProgramEntry;->name:Ljava/lang/String;

    .line 61
    :goto_2d
    invoke-static {v0}, Lcom/isaigu/gymapp/dialog/SegmentProgramStorage;->saveEntries(Ljava/util/List;)V

    .line 62
    return-void

    .line 49
    :cond_31
    :goto_31
    return-void
.end method
