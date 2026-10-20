.class public final Lcom/isaigu/gymapp/ai/PulseAdvice;
.super Ljava/lang/Object;
.source "PulseAdvice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/PulseAdvice$Log;,
        Lcom/isaigu/gymapp/ai/PulseAdvice$Input;,
        Lcom/isaigu/gymapp/ai/PulseAdvice$Past;,
        Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;
    }
.end annotation


# static fields
.field public static final CARDIO:I = 0x2

.field public static final MAIN:I = 0x0

.field public static final MASSAGE:I = 0x3

.field public static final MODES:I = 0x4

.field public static final MUSCLE:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ago(DZ)Ljava/lang/String;
    .registers 9

    .prologue
    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    const/4 v3, 0x1

    .line 252
    cmpg-double v0, p0, v4

    if-gez v0, :cond_40

    .line 253
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 254
    if-eqz p2, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043f\u0440\u0435\u0434\u0438 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0447"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_2b
    return-object v0

    .line 254
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 256
    :cond_40
    div-double v0, p0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 257
    if-eqz p2, :cond_68

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043f\u0440\u0435\u0434\u0438 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v0, v3, :cond_65

    const-string v0, " \u0434\u0435\u043d"

    :goto_5c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_65
    const-string v0, " \u0434\u043d\u0438"

    goto :goto_5c

    :cond_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne v0, v3, :cond_7e

    const-string v0, " day ago"

    :goto_75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_7e
    const-string v0, " days ago"

    goto :goto_75
.end method

.method public static all(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)[Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 202
    new-array v1, v3, [Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    .line 203
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_f

    .line 204
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->of(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;I)Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    move-result-object v2

    aput-object v2, v1, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 206
    :cond_f
    if-eqz p0, :cond_1b

    :goto_11
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->best(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)I

    move-result v0

    aget-object v0, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->best:Z

    .line 207
    return-object v1

    .line 206
    :cond_1b
    new-instance p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;-><init>()V

    goto :goto_11
.end method

.method public static best(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)I
    .registers 11

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->log(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Lcom/isaigu/gymapp/ai/PulseAdvice$Log;

    move-result-object v4

    .line 217
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/PulseAdvice;->passiveGoal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v5

    .line 218
    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_29

    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    const-wide/high16 v8, 0x4038000000000000L    # 24.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_29

    if-nez v5, :cond_29

    .line 219
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v2, v3, :cond_27

    .line 228
    :cond_26
    :goto_26
    return v0

    :cond_27
    move v0, v1

    .line 219
    goto :goto_26

    .line 221
    :cond_29
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v6, v7, :cond_39

    .line 222
    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->adapting()Z

    move-result v0

    if-eqz v0, :cond_37

    move v0, v2

    goto :goto_26

    :cond_37
    move v0, v3

    goto :goto_26

    .line 224
    :cond_39
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v6, v7, :cond_43

    iget-boolean v6, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatObese:Z

    if-eqz v6, :cond_5b

    .line 225
    :cond_43
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    if-eqz v1, :cond_59

    invoke-virtual {v4}, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->recovering()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    iget v1, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->modes:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_59

    .line 226
    :goto_55
    if-nez v3, :cond_26

    move v0, v2

    goto :goto_26

    :cond_59
    move v3, v2

    .line 225
    goto :goto_55

    .line 228
    :cond_5b
    if-eqz v5, :cond_5f

    :goto_5d
    move v0, v1

    goto :goto_26

    :cond_5f
    move v1, v2

    goto :goto_5d
.end method

.method static cardio(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 8

    .prologue
    const/16 v2, 0x3c

    .line 341
    const/4 v0, 0x7

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 342
    const/16 v0, 0xf

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 343
    const/4 v0, 0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_84

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-ge v0, v2, :cond_84

    .line 346
    const/16 v0, 0x9

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 347
    const-string v0, "\u0414\u043e\u0431\u0440\u0430 \u0444\u043e\u0440\u043c\u0430: 9 Hz \u2014 \u043f\u043e-\u0431\u044a\u0440\u0437\u043e \u0442\u0435\u043c\u043f\u043e"

    const-string v1, "Fit: 9 Hz \u2014 a faster tempo"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_24
    :goto_24
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->log(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Lcom/isaigu/gymapp/ai/PulseAdvice$Log;

    move-result-object v1

    .line 356
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHard:Z

    if-nez v0, :cond_37

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->readiness:D

    const-wide v4, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v0, v2, v4

    if-gez v0, :cond_b5

    .line 357
    :cond_37
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 358
    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHard:Z

    if-eqz v0, :cond_af

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430: \u043f\u0443\u043b\u0441 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHrPct:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " % \u043e\u0442 \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u043d\u0438\u044f \u2014 +1 s \u043f\u0430\u0443\u0437\u0430"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_5c
    iget-boolean v2, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHard:Z

    if-eqz v2, :cond_b2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The last one: pulse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHrPct:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % of the maximum \u2014 +1 s pause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    :goto_7b
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_7e
    :goto_7e
    const/16 v0, 0x15e

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->depth(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V

    .line 368
    return-void

    .line 348
    :cond_84
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eq v0, v1, :cond_8e

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-lt v0, v2, :cond_24

    .line 349
    :cond_8e
    const/4 v0, 0x5

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 350
    const/16 v0, 0xa

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 351
    const/4 v0, 0x2

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 352
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-lt v0, v2, :cond_a9

    const-string v0, "60+: 5 Hz, 10 : 2 s"

    .line 353
    :goto_9e
    iget v1, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-lt v1, v2, :cond_ac

    const-string v1, "60+: 5 Hz, 10 : 2 s"

    .line 352
    :goto_a4
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    :cond_a9
    const-string v0, "\u041d\u0430\u0447\u0438\u043d\u0430\u0435\u0449: 5 Hz, 10 : 2 s"

    goto :goto_9e

    .line 353
    :cond_ac
    const-string v1, "Beginner: 5 Hz, 10 : 2 s"

    goto :goto_a4

    .line 359
    :cond_af
    const-string v0, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043d\u0435 \u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d \u2014 +1 s \u043f\u0430\u0443\u0437\u0430"

    goto :goto_5c

    .line 361
    :cond_b2
    const-string v1, "Scale: not recovered \u2014 +1 s pause"

    goto :goto_7b

    .line 362
    :cond_b5
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->progress()Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v0, v2, :cond_c5

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatObese:Z

    if-eqz v0, :cond_7e

    .line 363
    :cond_c5
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435, \u0440\u0435\u0434\u043e\u0432\u043d\u043e ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->count30:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0437\u0430 30 \u0434\u043d\u0438): \u043f\u043e-\u0434\u044a\u043b\u0433\u0430 \u0440\u0430\u0431\u043e\u0442\u0430 \u2014 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fat loss, regular ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->count30:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in 30 days): longer work \u2014 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7e
.end method

.method public static context(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Z)Ljava/lang/String;
    .registers 10

    .prologue
    .line 233
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->log(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Lcom/isaigu/gymapp/ai/PulseAdvice$Log;

    move-result-object v1

    .line 234
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    if-nez v0, :cond_17

    .line 235
    iget v0, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->sessions:I

    if-nez v0, :cond_14

    if-eqz p1, :cond_11

    const-string v0, "\u041f\u044a\u0440\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    .line 248
    :goto_10
    return-object v0

    .line 235
    :cond_11
    const-string v0, "First training"

    goto :goto_10

    :cond_14
    const-string v0, ""

    goto :goto_10

    .line 237
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    if-eqz p1, :cond_cb

    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u2116"

    :goto_20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->sessions:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_cf

    const-string v0, " \u00b7 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 "

    :goto_30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hours:D

    invoke-static {v4, v5, p1}, Lcom/isaigu/gymapp/ai/PulseAdvice;->ago(DZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    invoke-static {v3, p1}, Lcom/isaigu/gymapp/ai/PulseAdvice;->modes(Lcom/isaigu/gymapp/ai/PulseAdvice$Past;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    iget v3, v3, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->activeS:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_d3

    const-string v0, " \u043c\u0438\u043d"

    :goto_66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget v0, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastPct:I

    if-lez v0, :cond_97

    .line 242
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastCut:Z

    if-eqz v0, :cond_d9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_d6

    const-string v0, "\u0441\u043f\u0440\u044f\u043d\u0430 \u043d\u0430 "

    :goto_80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastPct:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " %"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_94
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_97
    iget v0, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHrPct:I

    if-lez v0, :cond_b0

    .line 245
    if-eqz p1, :cond_e1

    const-string v0, ", \u043f\u0443\u043b\u0441 "

    :goto_9f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHrPct:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_e4

    const-string v0, " % \u043e\u0442 \u043c\u0430\u043a\u0441."

    :goto_ad
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_b0
    if-eqz p1, :cond_e7

    const-string v0, " \u00b7 "

    :goto_b4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->count30:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_ea

    const-string v0, " \u0437\u0430 30 \u0434\u043d\u0438"

    :goto_c2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 238
    :cond_cb
    const-string v0, "Training #"

    goto/16 :goto_20

    :cond_cf
    const-string v0, " \u00b7 the last "

    goto/16 :goto_30

    .line 240
    :cond_d3
    const-string v0, " min"

    goto :goto_66

    .line 242
    :cond_d6
    const-string v0, "stopped at "

    goto :goto_80

    :cond_d9
    if-eqz p1, :cond_de

    const-string v0, "\u0446\u044f\u043b\u0430"

    goto :goto_94

    :cond_de
    const-string v0, "complete"

    goto :goto_94

    .line 245
    :cond_e1
    const-string v0, ", pulse "

    goto :goto_9f

    :cond_e4
    const-string v0, " % of max"

    goto :goto_ad

    .line 247
    :cond_e7
    const-string v0, " \u00b7 "

    goto :goto_b4

    :cond_ea
    const-string v0, " in 30 days"

    goto :goto_c2
.end method

.method static depth(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V
    .registers 7

    .prologue
    const/16 v1, 0x12c

    .line 418
    iput p2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 419
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sensitive:Z

    if-eqz v0, :cond_12

    .line 420
    iput v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 421
    const-string v0, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d \u043a\u044a\u043c \u0442\u043e\u043a\u0430: 300 \u00b5s"

    const-string v1, "Sensitive to current: 300 \u00b5s"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_11
    :goto_11
    return-void

    .line 422
    :cond_12
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->fatHigh(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 423
    const/16 v0, 0x190

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u0437\u043d\u0438\u043d\u0438 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u2014 400 \u00b5s \u0441\u0442\u0438\u0433\u0430 \u043f\u0440\u0435\u0437 \u043c\u0430\u0437\u043d\u0438\u043d\u0430\u0442\u0430"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: fat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    .line 425
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u2014 400 \u00b5s reaches through the fat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 426
    :cond_5e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->fatLow(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 427
    iput v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u043b\u043a\u043e \u043c\u0430\u0437\u043d\u0438\u043d\u0438 ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %) \u2014 300 \u00b5s \u0441\u0442\u0438\u0433\u0430"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: little fat ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    .line 429
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %) \u2014 300 \u00b5s is enough"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 428
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11
.end method

.method static fatHigh(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Z
    .registers 5

    .prologue
    .line 532
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->female:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x21

    :goto_10
    int-to-double v0, v0

    cmpl-double v0, v2, v0

    if-ltz v0, :cond_1a

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/16 v0, 0x19

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static fatLow(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Z
    .registers 5

    .prologue
    .line 537
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->female:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x14

    :goto_10
    int-to-double v0, v0

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_1a

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/16 v0, 0xc

    goto :goto_10

    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method static goalBg(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 545
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_7

    const-string v0, "\u043c\u0430\u0441\u0430\u0436"

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_e

    const-string v0, "\u0434\u0440\u0435\u043d\u0430\u0436"

    goto :goto_6

    :cond_e
    const-string v0, "\u0430\u043d\u0442\u0438\u0446\u0435\u043b\u0443\u043b\u0438\u0442"

    goto :goto_6
.end method

.method static goalEn(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 549
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_7

    const-string v0, "massage"

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_e

    const-string v0, "drainage"

    goto :goto_6

    :cond_e
    const-string v0, "anti-cellulite"

    goto :goto_6
.end method

.method static log(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Lcom/isaigu/gymapp/ai/PulseAdvice$Log;
    .registers 13

    .prologue
    .line 123
    new-instance v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;-><init>()V

    .line 124
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->nowMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4f

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->nowMs:J

    move-wide v2, v0

    .line 125
    :goto_10
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 126
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sessions:I

    iput v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->sessions:I

    .line 127
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->hoursSinceLast:D

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hours:D

    .line 128
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->hoursSinceLast:D

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    .line 129
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sessions:I

    if-lez v0, :cond_55

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->hoursSinceLast:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_55

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->hoursSinceLast:D

    const-wide v2, 0x4086800000000000L    # 720.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_55

    const/4 v0, 0x1

    :goto_3c
    iput v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->count30:I

    .line 130
    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->hoursSinceLast:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_57

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->hoursSinceLast:D

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    div-double/2addr v0, v2

    :goto_4b
    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->breakDays:D

    move-object v0, v4

    .line 163
    :goto_4e
    return-object v0

    .line 124
    :cond_4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_10

    .line 129
    :cond_55
    const/4 v0, 0x0

    goto :goto_3c

    .line 130
    :cond_57
    const-wide/16 v0, 0x0

    goto :goto_4b

    .line 133
    :cond_5a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->sessions:I

    .line 134
    const/4 v0, 0x0

    move v1, v0

    :goto_64
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->log:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_bf

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->log:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    .line 136
    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->start:J

    cmp-long v5, v6, v2

    if-lez v5, :cond_7e

    .line 134
    :cond_7a
    :goto_7a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_64

    .line 139
    :cond_7e
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    if-eqz v5, :cond_8c

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->start:J

    iget-object v5, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    iget-wide v8, v5, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->start:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_8e

    .line 140
    :cond_8c
    iput-object v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    .line 142
    :cond_8e
    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->start:J

    sub-long v6, v2, v6

    long-to-double v6, v6

    const-wide v8, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v8

    .line 143
    const-wide v8, 0x4086800000000000L    # 720.0

    cmpg-double v5, v6, v8

    if-gez v5, :cond_a8

    .line 144
    iget v5, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->count30:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->count30:I

    .line 146
    :cond_a8
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->active()Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    const-wide/16 v10, 0x0

    cmpg-double v0, v8, v10

    if-ltz v0, :cond_bc

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    cmpg-double v0, v6, v8

    if-gez v0, :cond_7a

    .line 147
    :cond_bc
    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    goto :goto_7a

    .line 150
    :cond_bf
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    if-eqz v0, :cond_136

    .line 151
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    iget-wide v0, v0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->start:J

    sub-long v0, v2, v0

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hours:D

    .line 152
    iget-wide v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hours:D

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    div-double/2addr v0, v2

    iput-wide v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->breakDays:D

    .line 153
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    iget v0, v0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->planS:I

    if-lez v0, :cond_105

    .line 154
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    iget v2, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->activeS:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget-object v2, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    iget v2, v2, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->planS:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastPct:I

    .line 155
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->active()Z

    move-result v0

    if-eqz v0, :cond_139

    iget v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastPct:I

    const/16 v1, 0x50

    if-ge v0, v1, :cond_139

    const/4 v0, 0x1

    :goto_103
    iput-boolean v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastCut:Z

    .line 157
    :cond_105
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    iget v0, v0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->hrAvg:I

    if-lez v0, :cond_136

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-lez v0, :cond_136

    .line 158
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->female:Z

    if-eqz v0, :cond_13b

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    :goto_115
    iget v1, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiPlanner;->hrMax(Lcom/isaigu/gymapp/ai/AiModel$Sex;I)I

    move-result v0

    .line 159
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->last:Lcom/isaigu/gymapp/ai/PulseAdvice$Past;

    iget v1, v1, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->hrAvg:I

    int-to-double v6, v1

    mul-double/2addr v2, v6

    int-to-double v0, v0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHrPct:I

    .line 160
    iget v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHrPct:I

    const/16 v1, 0x55

    if-lt v0, v1, :cond_13e

    const/4 v0, 0x1

    :goto_134
    iput-boolean v0, v4, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHard:Z

    :cond_136
    move-object v0, v4

    .line 163
    goto/16 :goto_4e

    .line 155
    :cond_139
    const/4 v0, 0x0

    goto :goto_103

    .line 158
    :cond_13b
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    goto :goto_115

    .line 160
    :cond_13e
    const/4 v0, 0x0

    goto :goto_134
.end method

.method static main(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 5

    .prologue
    .line 302
    const/16 v0, 0x28

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 304
    const/4 v0, 0x7

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->phz:I

    .line 305
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_28

    .line 306
    const/16 v0, 0x32

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 307
    const-string v0, "\u0426\u0435\u043b \u0442\u043e\u043d\u0443\u0441: 50 Hz \u2014 \u043f\u043e-\u043f\u043b\u044a\u0442\u043d\u043e \u0441\u0432\u0438\u0432\u0430\u043d\u0435"

    const-string v1, "Goal tone: 50 Hz \u2014 a firmer contraction"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_1b
    :goto_1b
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->rhythm(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V

    .line 316
    const/16 v0, 0x15e

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->depth(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V

    .line 317
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/PulseAdvice;->rest(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    .line 318
    return-void

    .line 308
    :cond_28
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v0, v1, :cond_32

    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatObese:Z

    if-eqz v0, :cond_3a

    .line 309
    :cond_32
    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435: 40 Hz + \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 7 Hz \u0432 \u043f\u0430\u0443\u0437\u0430\u0442\u0430 (\u043a\u0440\u044a\u0432\u043e\u0442\u043e\u043a, \u0440\u0430\u0437\u0445\u043e\u0434)"

    const-string v1, "Fat loss: 40 Hz + a 7 Hz second impulse in the pause (blood flow, burn)"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 311
    :cond_3a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->passiveGoal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 312
    const/16 v0, 0x1e

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0426\u0435\u043b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/PulseAdvice;->goalBg(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \u043f\u043e-\u043c\u0435\u043a\u043e \u2014 30 Hz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Goal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/PulseAdvice;->goalEn(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": gentler \u2014 30 Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method static massage(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 373
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_1e

    .line 374
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 375
    const/16 v0, 0x12c

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 376
    const/4 v0, 0x3

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 377
    const/4 v0, 0x5

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 378
    const-string v0, "\u0426\u0435\u043b \u0434\u0440\u0435\u043d\u0430\u0436: 1 Hz, 3 : 5 s \u2014 \u043b\u0438\u043c\u0444\u0435\u043d \u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v1, "Goal drainage: 1 Hz, 3 : 5 s \u2014 lymph drainage"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_1d
    :goto_1d
    return-void

    .line 381
    :cond_1e
    const/16 v0, 0x78

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 382
    const/16 v0, 0x96

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 383
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 384
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 385
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_3b

    .line 386
    const/16 v0, 0x55

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 387
    const-string v0, "60+: \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e 85 Hz"

    const-string v1, "60+: at most 85 Hz"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_3b
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->sensitive:Z

    if-eqz v0, :cond_4b

    .line 390
    const/16 v0, 0x64

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 391
    const-string v0, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d \u043a\u044a\u043c \u0442\u043e\u043a\u0430: 100 \u00b5s"

    const-string v1, "Sensitive to current: 100 \u00b5s"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 392
    :cond_4b
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->fatHigh(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 393
    const/16 v0, 0xc8

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u0437\u043d\u0438\u043d\u0438 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " % \u2014 200 \u00b5s \u0441\u0442\u0438\u0433\u0430 \u043f\u043e-\u0434\u044a\u043b\u0431\u043e\u043a\u043e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: fat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fatPct:D

    .line 395
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " % \u2014 200 \u00b5s reaches deeper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method static modes(Lcom/isaigu/gymapp/ai/PulseAdvice$Past;Z)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 261
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->assisted:Z

    if-eqz v0, :cond_11

    .line 262
    if-eqz p1, :cond_e

    const-string v0, "\u0410\u0432\u0442\u043e / AI"

    .line 272
    :goto_d
    return-object v0

    .line 262
    :cond_e
    const-string v0, "Auto / AI"

    goto :goto_d

    .line 264
    :cond_11
    if-eqz p1, :cond_49

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u041e\u0441\u043d\u043e\u0432\u0435\u043d"

    aput-object v1, v0, v3

    const-string v1, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u041a\u0430\u0440\u0434\u0438\u043e"

    aput-object v1, v0, v2

    const-string v1, "\u041c\u0430\u0441\u0430\u0436"

    aput-object v1, v0, v4

    .line 266
    :goto_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    .line 267
    :goto_2b
    if-ge v2, v7, :cond_5f

    .line 268
    iget v1, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Past;->modes:I

    shl-int v5, v6, v2

    and-int/2addr v1, v5

    if-eqz v1, :cond_45

    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5c

    const-string v1, " + "

    :goto_3c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_45
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2b

    .line 265
    :cond_49
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Main"

    aput-object v1, v0, v3

    const-string v1, "Muscle"

    aput-object v1, v0, v6

    const-string v1, "Cardio"

    aput-object v1, v0, v2

    const-string v1, "Massage"

    aput-object v1, v0, v4

    goto :goto_25

    .line 269
    :cond_5c
    const-string v1, ""

    goto :goto_3c

    .line 272
    :cond_5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6a

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_6a
    aget-object v0, v0, v3

    goto :goto_d
.end method

.method static muscle(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 5

    .prologue
    const/16 v2, 0x46

    .line 322
    const/16 v0, 0x50

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 324
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->muscleLow:Z

    if-eqz v0, :cond_23

    .line 325
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 326
    const-string v0, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 70 Hz, \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u0443\u043c\u043e\u0440\u0430"

    const-string v1, "Scale: little muscle \u2014 70 Hz, less fatigue"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_16
    :goto_16
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->rhythm(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V

    .line 335
    const/16 v0, 0x15e

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->depth(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V

    .line 336
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/PulseAdvice;->rest(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    .line 337
    return-void

    .line 327
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_45

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    if-ltz v0, :cond_45

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_45

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v1, :cond_45

    .line 328
    const/16 v0, 0x55

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 329
    const-string v0, "\u0414\u043e\u0431\u0440\u0430 \u0444\u043e\u0440\u043c\u0430 + \u0442\u043e\u043d\u0443\u0441: 85 Hz"

    const-string v1, "Fit + tone: 85 Hz"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 330
    :cond_45
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_16

    .line 331
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 332
    const-string v0, "\u041d\u0430\u0447\u0438\u043d\u0430\u0435\u0449: 70 Hz"

    const-string v1, "Beginner: 70 Hz"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public static of(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;I)Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;
    .registers 3

    .prologue
    .line 276
    if-nez p0, :cond_7

    .line 277
    new-instance p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;

    invoke-direct {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;-><init>()V

    .line 279
    :cond_7
    new-instance v0, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;-><init>(I)V

    .line 280
    packed-switch p1, :pswitch_data_22

    .line 291
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->main(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    .line 294
    :goto_12
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->safe(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    .line 295
    return-object v0

    .line 282
    :pswitch_16
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->muscle(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    goto :goto_12

    .line 285
    :pswitch_1a
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->cardio(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    goto :goto_12

    .line 288
    :pswitch_1e
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->massage(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V

    goto :goto_12

    .line 280
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method static passiveGoal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z
    .registers 2

    .prologue
    .line 541
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static rest(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 16

    .prologue
    const/4 v1, 0x2

    const/16 v4, 0x1e

    const-wide/high16 v12, 0x4038000000000000L    # 24.0

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 439
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/PulseAdvice;->log(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;)Lcom/isaigu/gymapp/ai/PulseAdvice$Log;

    move-result-object v6

    .line 440
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->adapting()Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 441
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 442
    iput-boolean v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u044a\u0440\u0432\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438 ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->sessions:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-\u0432\u0430): +2 s \u043f\u0430\u0443\u0437\u0430, \u0431\u0435\u0437 \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "First trainings (#"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->sessions:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "): +2 s pause, no second impulse"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_56
    :goto_56
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastCut:Z

    if-nez v0, :cond_5e

    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHard:Z

    if-eqz v0, :cond_a5

    .line 465
    :cond_5e
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 466
    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastCut:Z

    if-eqz v0, :cond_2f8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0441\u043f\u0440\u044f \u043d\u0430 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastPct:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " % \u043e\u0442 \u043f\u043b\u0430\u043d\u0430: +1 s \u043f\u0430\u0443\u0437\u0430"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    :goto_83
    iget-boolean v3, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastCut:Z

    if-eqz v3, :cond_315

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The last one stopped at "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastPct:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " % of the plan: +1 s pause"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 466
    :goto_a2
    invoke-virtual {p1, v0, v3}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_a5
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->progress()Z

    move-result v0

    if-eqz v0, :cond_167

    .line 473
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    const/16 v3, 0x32

    if-lt v0, v3, :cond_332

    const/4 v0, 0x6

    .line 474
    :goto_b2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0420\u0435\u0434\u043e\u0432\u043d\u043e ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->count30:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u0437\u0430 30 \u0434\u043d\u0438), \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u043c\u0438\u043d\u0430 \u0434\u043e\u0431\u0440\u0435: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regular ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->count30:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in 30 days), the last one went fine: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 476
    iget v6, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    if-ge v6, v0, :cond_33f

    .line 477
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u0438\u043c\u043f\u0443\u043b\u0441 +1 s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "impulse +1 s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    :goto_118
    iget v4, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    if-ne v4, v2, :cond_164

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v4, v6, :cond_164

    iget-boolean v4, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->muscleLow:Z

    if-nez v4, :cond_164

    iget v4, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    add-int/lit8 v4, v4, 0x5

    const/16 v6, 0x5a

    iget v7, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    .line 489
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gt v4, v6, :cond_164

    .line 490
    iget v4, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    add-int/lit8 v4, v4, 0x5

    iput v4, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", +5 Hz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", +5 Hz"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    :cond_164
    invoke-virtual {p1, v3, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_167
    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    const/16 v3, 0x3c

    if-lt v0, v3, :cond_17a

    .line 497
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 498
    const-string v0, "60+: +2 s \u043f\u0430\u0443\u0437\u0430"

    const-string v3, "60+: +2 s pause"

    invoke-virtual {p1, v0, v3}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_17a
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->readiness:D

    const-wide v8, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v0, v6, v8

    if-gez v0, :cond_3b7

    .line 501
    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->readiness:D

    const-wide v8, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, v6, v8

    if-gez v0, :cond_3b4

    .line 502
    :goto_190
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 503
    iput-boolean v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043d\u0435 \u0435 \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u0435\u043d \u2014 +"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s \u043f\u0430\u0443\u0437\u0430, \u0431\u0435\u0437 \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scale: not recovered \u2014 +"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s pause, no second impulse"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_1cc
    :goto_1cc
    return-void

    .line 445
    :cond_1cd
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->back()Z

    move-result v0

    if-eqz v0, :cond_21e

    .line 446
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 447
    iput-boolean v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0412\u0440\u044a\u0449\u0430\u043d\u0435 \u0441\u043b\u0435\u0434 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->breakDays:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0434\u043d\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0430: +1 s \u043f\u0430\u0443\u0437\u0430, \u0431\u0435\u0437 \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Back after "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->breakDays:D

    .line 449
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " days off: +1 s pause, no second impulse"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-virtual {p1, v0, v3}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56

    .line 450
    :cond_21e
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->recovering()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 451
    iget-wide v8, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    const-wide/high16 v10, 0x4048000000000000L    # 48.0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_2e9

    move v0, v1

    .line 452
    :goto_22d
    iget v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/2addr v3, v0

    iput v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 453
    iget-wide v8, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    cmpg-double v3, v8, v12

    if-gez v3, :cond_24c

    .line 454
    iput-boolean v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 455
    iget v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    if-nez v3, :cond_24c

    iget v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    if-le v3, v4, :cond_24c

    .line 456
    iget v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    add-int/lit8 v3, v3, -0xa

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 459
    :cond_24c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430 "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v8, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    invoke-static {v8, v9, v2}, Lcom/isaigu/gymapp/ai/PulseAdvice;->ago(DZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": +"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " s \u043f\u0430\u0443\u0437\u0430"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 460
    iget-wide v8, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    cmpg-double v3, v8, v12

    if-gez v3, :cond_2ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", \u0431\u0435\u0437 \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    if-nez v3, :cond_2ec

    const-string v3, ", \u043f\u043e-\u043d\u0438\u0441\u043a\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0430"

    :goto_288
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_290
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last active "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    .line 461
    invoke-static {v8, v9, v5}, Lcom/isaigu/gymapp/ai/PulseAdvice;->ago(DZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": +"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " s pause"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 462
    iget-wide v8, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->hoursActive:D

    cmpg-double v0, v8, v12

    if-gez v0, :cond_2f5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", no second impulse"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    if-nez v0, :cond_2f2

    const-string v0, ", a lower frequency"

    :goto_2d4
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2dc
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p1, v3, v0}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_56

    :cond_2e9
    move v0, v2

    .line 451
    goto/16 :goto_22d

    .line 460
    :cond_2ec
    const-string v3, ""

    goto :goto_288

    :cond_2ef
    const-string v3, ""

    goto :goto_290

    .line 462
    :cond_2f2
    const-string v0, ""

    goto :goto_2d4

    :cond_2f5
    const-string v0, ""

    goto :goto_2dc

    .line 467
    :cond_2f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430: \u043f\u0443\u043b\u0441 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHrPct:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " % \u043e\u0442 \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u043d\u0438\u044f \u2014 +1 s \u043f\u0430\u0443\u0437\u0430"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_83

    .line 469
    :cond_315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The last one: pulse "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v7, v6, Lcom/isaigu/gymapp/ai/PulseAdvice$Log;->lastHrPct:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " % of the maximum \u2014 +1 s pause"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_a2

    .line 473
    :cond_332
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    const/16 v3, 0x14

    if-lt v0, v3, :cond_33c

    const/16 v0, 0xa

    goto/16 :goto_b2

    :cond_33c
    move v0, v4

    goto/16 :goto_b2

    .line 480
    :cond_33f
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v8, v0, -0x1

    iget v9, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    iget v10, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    if-eqz v0, :cond_387

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->phz:I

    :goto_34d
    iget-boolean v6, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    if-eqz v6, :cond_389

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :goto_353
    invoke-static {v9, v10, v0, v6, v7}, Lcom/isaigu/gymapp/ai/SafeLimits;->minOff(IIID)I

    move-result v0

    if-lt v8, v0, :cond_38c

    .line 481
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u043f\u0430\u0443\u0437\u0430 \u22121 s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "pause \u22121 s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_118

    :cond_387
    move v0, v5

    .line 480
    goto :goto_34d

    :cond_389
    const-wide/16 v6, 0x0

    goto :goto_353

    .line 485
    :cond_38c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442\u0438\u0442\u0435 \u0441\u0430 \u043d\u0430 \u0433\u0440\u0430\u043d\u0438\u0446\u0430\u0442\u0430"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "the values are at the limit"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_118

    :cond_3b4
    move v1, v2

    .line 501
    goto/16 :goto_190

    .line 506
    :cond_3b7
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->muscleLow:Z

    if-eqz v0, :cond_1cc

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    if-nez v0, :cond_1cc

    .line 507
    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 508
    const-string v0, "\u041a\u0430\u043d\u0442\u0430\u0440\u044a\u0442: \u043c\u0430\u043b\u043a\u043e \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "Scale: little muscle \u2014 +1 s pause"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1cc
.end method

.method static rhythm(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;I)V
    .registers 7

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    .line 403
    iput p2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 404
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 405
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_18

    .line 406
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 407
    iput v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 408
    const-string v0, "\u041d\u0430\u0447\u0438\u043d\u0430\u0435\u0449: 4 : 6 s"

    const-string v1, "Beginner: 4 : 6 s"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_17
    :goto_17
    return-void

    .line 409
    :cond_18
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_17

    .line 410
    iput v3, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 411
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 412
    const-string v0, "\u0414\u043e\u0431\u0440\u0430 \u0444\u043e\u0440\u043c\u0430: 6 : 4 s"

    const-string v1, "Fit: 6 : 4 s"

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method static safe(Lcom/isaigu/gymapp/ai/PulseAdvice$Input;Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;)V
    .registers 12

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    const/16 v0, 0x8

    new-array v5, v0, [I

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    aput v0, v5, v2

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    aput v0, v5, v1

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    aput v0, v5, v7

    iget v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    aput v0, v5, v8

    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    if-eqz v0, :cond_72

    move v0, v1

    :goto_28
    aput v0, v5, v9

    const/4 v0, 0x5

    iget v6, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->phz:I

    aput v6, v5, v0

    const/4 v0, 0x6

    const/16 v6, 0x64

    aput v6, v5, v0

    const/4 v0, 0x7

    aput v2, v5, v0

    iget v0, p0, Lcom/isaigu/gymapp/ai/PulseAdvice$Input;->age:I

    invoke-static {v5, v0, v3, v4}, Lcom/isaigu/gymapp/ai/SafeLimits;->apply([IILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)[I

    move-result-object v0

    .line 517
    aget v5, v0, v2

    iput v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->hz:I

    .line 518
    aget v5, v0, v1

    iput v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->pw:I

    .line 519
    aget v5, v0, v7

    iput v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->on:I

    .line 520
    aget v5, v0, v8

    iput v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->off:I

    .line 521
    aget v5, v0, v9

    if-ne v5, v1, :cond_74

    iget v5, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->mode:I

    if-eq v5, v1, :cond_74

    :goto_55
    iput-boolean v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    .line 522
    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->ap:Z

    if-eqz v1, :cond_5e

    const/4 v1, 0x5

    aget v2, v0, v1

    :cond_5e
    iput v2, p1, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->phz:I

    .line 523
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_71

    .line 524
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/isaigu/gymapp/ai/PulseAdvice$Rec;->why(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_71
    return-void

    :cond_72
    move v0, v2

    .line 516
    goto :goto_28

    :cond_74
    move v1, v2

    .line 521
    goto :goto_55
.end method
