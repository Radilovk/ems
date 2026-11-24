.class public final Lcom/isaigu/gymapp/ai/AiAnnounce;
.super Ljava/lang/Object;
.source "AiAnnounce.java"


# static fields
.field private static done:Z

.field private static lastExercise:Ljava/lang/String;

.field private static lastPhase:Ljava/lang/String;

.field private static mainSaid:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static auto(Lcom/isaigu/gymapp/ai/AutoEngine;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 25
    if-nez p0, :cond_5

    .line 66
    :cond_4
    :goto_4
    return-void

    .line 28
    :cond_5
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getState()Lcom/isaigu/gymapp/ai/AutoEngine$State;

    move-result-object v0

    .line 29
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->DONE:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-eq v0, v3, :cond_11

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->STOPPED:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_23

    .line 30
    :cond_11
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    if-nez v0, :cond_4

    .line 31
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    .line 32
    const-string v0, "\u041a\u0440\u0430\u0439. \u0411\u0440\u0430\u0432\u043e. \u041f\u0438\u0439 \u0432\u043e\u0434\u0430 \u0438 \u0441\u0435 \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0438 \u043b\u0435\u043a\u043e."

    const-string v1, "That is the end. Well done. Drink some water."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto :goto_4

    .line 36
    :cond_23
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoEngine$State;->RUN:Lcom/isaigu/gymapp/ai/AutoEngine$State;

    if-ne v0, v3, :cond_4

    .line 39
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->phase()Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v3

    .line 40
    if-eqz v3, :cond_bc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getPhaseIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_4a
    if-eqz v0, :cond_71

    sget-object v4, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastPhase:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    .line 42
    sget-object v4, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastPhase:Ljava/lang/String;

    if-nez v4, :cond_58

    .line 43
    :cond_58
    sput-object v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastPhase:Ljava/lang/String;

    .line 44
    sput-object v2, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    .line 45
    const-string v0, "WARMUP"

    iget-object v2, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 46
    const-string v0, "\u0417\u0430\u043f\u043e\u0447\u0432\u0430\u043c\u0435 \u0441\u044a\u0441 \u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430."

    const-string v2, "We start with the warm-up."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    .line 56
    :cond_71
    :goto_71
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoEngine;->getExercise()Ljava/lang/String;

    move-result-object v2

    .line 57
    if-eqz v2, :cond_4

    sget-object v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 58
    sget-object v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    if-nez v0, :cond_108

    move v0, v1

    .line 59
    :goto_84
    sput-object v2, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    .line 60
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_10b

    const-string v0, "\u041f\u044a\u0440\u0432\u043e\u0442\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435 \u0435 "

    const-string v3, "The first exercise is "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_a1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiAnnounce;->lower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_bc
    move-object v0, v2

    .line 40
    goto :goto_4a

    .line 47
    :cond_be
    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 48
    const-string v0, "\u0421\u0435\u0433\u0430 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435. \u0418\u043c\u043f\u0443\u043b\u0441\u044a\u0442 \u0435 \u043b\u0435\u043a, \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u0442."

    const-string v2, "Now the recovery. The impulse is light, the muscles let go."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto :goto_71

    .line 51
    :cond_d0
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->mainSaid:Z

    if-nez v0, :cond_e2

    const-string v0, "\u0417\u0430\u043f\u043e\u0447\u0432\u0430 \u043e\u0441\u043d\u043e\u0432\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442."

    const-string v2, "The main part begins."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_dc
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    .line 53
    sput-boolean v1, Lcom/isaigu/gymapp/ai/AiAnnounce;->mainSaid:Z

    goto :goto_71

    .line 52
    :cond_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 \u0435 "

    const-string v4, "The next part is "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiAnnounce;->lower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_dc

    .line 58
    :cond_108
    const/4 v0, 0x0

    goto/16 :goto_84

    .line 63
    :cond_10b
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449\u043e\u0442\u043e \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u0435 \u0435 "

    const-string v3, "The next exercise is "

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a1
.end method

.method static count(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u043d\u0443\u043b\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u0435\u0434\u043d\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0434\u0432\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0442\u0440\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0447\u0435\u0442\u0438\u0440\u0438"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u043f\u0435\u0442"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0448\u0435\u0441\u0442"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0441\u0435\u0434\u0435\u043c"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u043e\u0441\u0435\u043c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0434\u0435\u0432\u0435\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0434\u0435\u0441\u0435\u0442"

    aput-object v2, v0, v1

    .line 116
    if-ltz p0, :cond_46

    array-length v1, v0

    if-ge p0, v1, :cond_46

    aget-object v0, v0, p0

    :goto_45
    return-object v0

    :cond_46
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method

.method static end()V
    .registers 2

    .prologue
    .line 103
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    if-nez v0, :cond_12

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    .line 105
    const-string v0, "\u041a\u0440\u0430\u0439. \u0411\u0440\u0430\u0432\u043e. \u041f\u0438\u0439 \u0432\u043e\u0434\u0430 \u0438 \u0441\u0435 \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0438 \u043b\u0435\u043a\u043e."

    const-string v1, "That is the end. Well done. Drink some water."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    .line 107
    :cond_12
    return-void
.end method

.method static lower(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 111
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    :cond_9
    :goto_9
    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method static map()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 70
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->map()Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v3

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->clock()Lcom/isaigu/gymapp/ai/MapClock;

    move-result-object v1

    .line 72
    if-eqz v3, :cond_14

    if-eqz v1, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->isWaiting()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 99
    :cond_14
    :goto_14
    return-void

    .line 75
    :cond_15
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->isDone()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 76
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    if-nez v0, :cond_14

    .line 77
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    .line 78
    const-string v0, "\u041a\u0440\u0430\u0439. \u0411\u0440\u0430\u0432\u043e. \u041f\u0438\u0439 \u0432\u043e\u0434\u0430 \u0438 \u0441\u0435 \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0438 \u043b\u0435\u043a\u043e."

    const-string v1, "That is the end. Well done. Drink some water."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto :goto_14

    .line 82
    :cond_2d
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/MapClock;->block()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 86
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v4

    .line 87
    sget-object v1, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 88
    sget-object v1, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    if-nez v1, :cond_74

    move v1, v2

    .line 89
    :goto_4a
    sput-object v4, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    .line 91
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

    .line 92
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->isBreak(Lcom/isaigu/gymapp/ai/Workout$Block;)Z

    move-result v6

    if-nez v6, :cond_e6

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiMapBoard;->label(Lcom/isaigu/gymapp/ai/Workout$Block;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 93
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    :goto_72
    move v3, v0

    .line 95
    goto :goto_53

    :cond_74
    move v1, v0

    .line 88
    goto :goto_4a

    .line 96
    :cond_76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_da

    const-string v0, "\u0417\u0430\u043f\u043e\u0447\u0432\u0430\u043c\u0435 \u0441 "

    const-string v1, "We start with "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_85
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiAnnounce;->lower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-le v3, v2, :cond_e3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiAnnounce;->count(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0441\u0435\u0440\u0438\u0438."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sets."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_cd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiAnnounce;->say(Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_da
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430 "

    const-string v1, "Next comes "

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    .line 97
    :cond_e3
    const-string v0, "."

    goto :goto_cd

    :cond_e6
    move v0, v3

    goto :goto_72
.end method

.method static reset()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    sput-object v1, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastPhase:Ljava/lang/String;

    .line 18
    sput-object v1, Lcom/isaigu/gymapp/ai/AiAnnounce;->lastExercise:Ljava/lang/String;

    .line 19
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->done:Z

    .line 20
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiAnnounce;->mainSaid:Z

    .line 21
    return-void
.end method

.method private static say(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 120
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

    .line 121
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->announce(Ljava/lang/String;)V

    .line 122
    return-void
.end method
