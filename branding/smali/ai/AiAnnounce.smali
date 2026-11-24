.class public final Lcom/isaigu/gymapp/ai/AiAnnounce;
.super Ljava/lang/Object;
.source "AiAnnounce.java"


# static fields
.field private static done:Z

.field private static lastExercise:Ljava/lang/String;

.field private static lastPhase:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static auto(Lcom/isaigu/gymapp/ai/AutoEngine;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 23
    if-nez p0, :cond_6

    .line 61
    :cond_5
    :goto_5
    return-void

    .line 26
    :cond_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 27
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v3, :cond_12

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_24

    .line 28
    :cond_12
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    if-nez v0, :cond_5

    .line 29
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    .line 30
    const-string v0, "\u041a\u0440\u0430\u0439. \u0411\u0440\u0430\u0432\u043e \u2014 \u043f\u0438\u0439 \u0432\u043e\u0434\u0430 \u0438 \u0441\u0435 \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0438 \u043b\u0435\u043a\u043e."

    const-string v1, "The end. Well done \u2014 drink some water."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto :goto_5

    .line 34
    :cond_24
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_5

    .line 37
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v5

    .line 38
    if-eqz v5, :cond_ba

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 39
    :goto_4c
    if-eqz v3, :cond_74

    sget-object v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastPhase:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 40
    sget-object v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastPhase:Ljava/lang/String;

    if-nez v0, :cond_bc

    move v0, v1

    .line 41
    :goto_5b
    sput-object v3, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastPhase:Ljava/lang/String;

    .line 42
    sput-object v4, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    .line 43
    const-string v3, "WARMUP"

    iget-object v4, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 44
    const-string v0, "\u0417\u0430\u043f\u043e\u0447\u0432\u0430\u043c\u0435 \u0441\u044a\u0441 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430."

    const-string v3, "We start with the warm-up."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    .line 52
    :cond_74
    :goto_74
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_5

    sget-object v3, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 54
    sget-object v3, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    if-nez v3, :cond_fa

    .line 55
    :goto_86
    sput-object v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    .line 56
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_fc

    const-string v0, "\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435: "

    const-string v1, "Exercise: "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_ba
    move-object v3, v4

    .line 38
    goto :goto_4c

    :cond_bc
    move v0, v2

    .line 40
    goto :goto_5b

    .line 45
    :cond_be
    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 46
    const-string v0, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u0442, \u0438\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043b\u0435\u043a."

    const-string v3, "Recovery \u2014 the muscles let go, the impulse is light."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto :goto_74

    .line 49
    :cond_d0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_f1

    const-string v0, ""

    :goto_d9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto :goto_74

    :cond_f1
    const-string v0, "\u041e\u0441\u043d\u043e\u0432\u043d\u0430 \u0447\u0430\u0441\u0442: "

    const-string v4, "Main part: "

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d9

    :cond_fa
    move v1, v2

    .line 54
    goto :goto_86

    .line 58
    :cond_fc
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v1, "Next: "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a3
.end method

.method static end()V
    .registers 2

    .prologue
    .line 98
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    if-nez v0, :cond_12

    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    .line 100
    const-string v0, "\u041a\u0440\u0430\u0439. \u0411\u0440\u0430\u0432\u043e \u2014 \u043f\u0438\u0439 \u0432\u043e\u0434\u0430 \u0438 \u0441\u0435 \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0438 \u043b\u0435\u043a\u043e."

    const-string v1, "The end. Well done \u2014 drink some water."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    .line 102
    :cond_12
    return-void
.end method

.method static map()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 65
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->map()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v3

    .line 66
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->clock()Lcom/isaigu/gymapp/ai/MapClock;

    move-result-object v1

    .line 67
    if-eqz v3, :cond_14

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isWaiting()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 94
    :cond_14
    :goto_14
    return-void

    .line 70
    :cond_15
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 71
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    if-nez v0, :cond_14

    .line 72
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    .line 73
    const-string v0, "\u041a\u0440\u0430\u0439. \u0411\u0440\u0430\u0432\u043e \u2014 \u043f\u0438\u0439 \u0432\u043e\u0434\u0430 \u0438 \u0441\u0435 \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0438 \u043b\u0435\u043a\u043e."

    const-string v1, "The end. Well done \u2014 drink some water."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto :goto_14

    .line 77
    :cond_2d
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 81
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v4

    .line 82
    sget-object v1, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 83
    sget-object v1, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    if-nez v1, :cond_74

    move v1, v2

    .line 84
    :goto_4a
    sput-object v4, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    .line 86
    iget-object v3, v3, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 87
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v6

    if-nez v6, :cond_c7

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 88
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    :goto_72
    move v3, v0

    .line 90
    goto :goto_53

    :cond_74
    move v1, v0

    .line 83
    goto :goto_4a

    .line 91
    :cond_76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_bb

    const-string v0, "\u0417\u0430\u043f\u043e\u0447\u0432\u0430\u043c\u0435: "

    const-string v1, "We start: "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_85
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    if-le v3, v2, :cond_c4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0441\u0435\u0440\u0438\u0438."

    const-string v3, " sets."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ae
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_bb
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430: "

    const-string v1, "Next: "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    .line 92
    :cond_c4
    const-string v0, "."

    goto :goto_ae

    :cond_c7
    move v0, v3

    goto :goto_72
.end method

.method static reset()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastPhase:Ljava/lang/String;

    .line 17
    sput-object v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    .line 19
    return-void
.end method

.method private static say(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 105
    const-string v0, "ai-train"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "announce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->announce(Ljava/lang/String;)V

    .line 107
    return-void
.end method
