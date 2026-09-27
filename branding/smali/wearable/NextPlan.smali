.class public final Lcom/isaigu/gymapp/wearable/NextPlan;
.super Ljava/lang/Object;
.source "NextPlan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/NextPlan$Snap;,
        Lcom/isaigu/gymapp/wearable/NextPlan$Rec;
    }
.end annotation


# static fields
.field static final CH:I = 0xa

.field static final DAY:J = 0x5265c00L

.field static final PREFS:Ljava/lang/String; = "xems_next_plan"

.field static final ZONES_BG:[Ljava/lang/String;

.field static final ZONES_EN:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0433\u044a\u0440\u0434\u0438"

    aput-object v1, v0, v3

    const-string v1, "\u043a\u043e\u0440\u0435\u043c"

    aput-object v1, v0, v4

    const-string v1, "\u043f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v1, v0, v5

    const-string v1, "\u043f\u0440\u0430\u0441\u0446\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u0440\u044a\u0446\u0435"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0442\u0440\u0430\u043f\u0435\u0446"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0433\u0440\u044a\u0431"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u043a\u0440\u044a\u0441\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0437\u0430\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/NextPlan;->ZONES_BG:[Ljava/lang/String;

    .line 225
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chest"

    aput-object v1, v0, v3

    const-string v1, "abs"

    aput-object v1, v0, v4

    const-string v1, "front thigh"

    aput-object v1, v0, v5

    const-string v1, "calves"

    aput-object v1, v0, v6

    const-string v1, "arms"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "traps"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "back"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lower back"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "glutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "back thigh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/NextPlan;->ZONES_EN:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;
    .registers 3

    .prologue
    .line 483
    packed-switch p1, :pswitch_data_10

    .line 491
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    :goto_5
    return-object v0

    .line 485
    :pswitch_6
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 487
    :pswitch_9
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 489
    :pswitch_c
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 483
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method static clamp(III)I
    .registers 3

    .prologue
    .line 350
    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method static fromJson(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;
    .registers 6

    .prologue
    .line 194
    new-instance v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;-><init>()V

    .line 195
    const-string v0, "t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    .line 196
    const-string v0, "program"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    .line 197
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    .line 198
    const-string v0, "st"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    .line 199
    const-string v0, "hz"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    .line 200
    const-string v0, "pw"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    .line 201
    const-string v0, "on"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    .line 202
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    .line 203
    const-string v0, "ps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    .line 204
    const-string v0, "phz"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    .line 205
    const-string v0, "ap"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    .line 206
    const-string v0, "work"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    .line 207
    const-string v0, "activeS"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    .line 208
    const-string v0, "planS"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    .line 209
    const-string v0, "assisted"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    .line 210
    const-string v0, "ch"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 211
    const/4 v0, 0x0

    :goto_86
    if-eqz v2, :cond_9d

    const/16 v3, 0xa

    if-ge v0, v3, :cond_9d

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_9d

    .line 212
    iget-object v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 214
    :cond_9d
    return-object v1
.end method

.method static history(Landroid/content/Context;J)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    if-eqz p0, :cond_d

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_e

    .line 369
    :cond_d
    :goto_d
    return-object v0

    .line 360
    :cond_e
    :try_start_e
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/SessionStore;->listFor(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 361
    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 362
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 363
    if-eqz v3, :cond_31

    const-string v4, "activeS"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3c

    if-lt v4, v5, :cond_31

    .line 364
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_31} :catch_34

    .line 361
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 367
    :catch_34
    move-exception v1

    goto :goto_d
.end method

.method private static join(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 341
    if-lez v1, :cond_14

    .line 342
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 346
    :cond_21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static lastRun(Lcom/isaigu/gymapp/wearable/SessionRec;)I
    .registers 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_17

    .line 138
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 142
    :goto_13
    return v0

    .line 137
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 142
    :cond_17
    const/4 v0, -0x1

    goto :goto_13
.end method

.method static line(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 497
    if-nez p0, :cond_5

    .line 498
    const-string v0, ""

    .line 508
    :goto_4
    return-object v0

    .line 500
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    const-string v1, "\u0441\u0438\u043b\u0430 "

    const-string v2, "strength "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    if-lez v1, :cond_30

    .line 503
    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_30
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    if-lez v1, :cond_53

    .line 506
    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u043c\u0438\u043d"

    const-string v3, " min"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static load(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 161
    :try_start_1
    const-string v1, "xems_next_plan"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_2b

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->fromJson(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2c

    move-result-object v0

    .line 164
    :cond_2b
    :goto_2b
    return-object v0

    .line 163
    :catch_2c
    move-exception v1

    goto :goto_2b
.end method

.method static load30(Ljava/util/List;J)[D
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;J)[D"
        }
    .end annotation

    .prologue
    .line 374
    const/16 v0, 0xa

    new-array v3, v0, [D

    .line 375
    const/4 v2, 0x0

    .line 376
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_80

    .line 377
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 378
    const-string v4, "start"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 379
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2e

    sub-long v6, p1, v4

    const-wide v8, 0x9a7ec800L

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2e

    cmp-long v4, v4, p1

    if-lez v4, :cond_32

    .line 376
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 382
    :cond_32
    const-string v4, "mus"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 383
    if-nez v4, :cond_87

    .line 384
    const-string v4, "chPeak"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v6, v0

    .line 386
    :goto_41
    if-eqz v6, :cond_2e

    .line 389
    const-wide/16 v4, 0x0

    .line 390
    const/4 v0, 0x0

    :goto_46
    const/16 v7, 0xa

    if-ge v0, v7, :cond_5d

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_5d

    .line 391
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v0, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 393
    :cond_5d
    const-wide/16 v8, 0x0

    cmpg-double v0, v4, v8

    if-lez v0, :cond_2e

    .line 396
    const/4 v0, 0x0

    :goto_64
    const/16 v7, 0xa

    if-ge v0, v7, :cond_7d

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_7d

    .line 397
    aget-wide v8, v3, v0

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v0, v10, v11}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v10

    div-double/2addr v10, v4

    add-double/2addr v8, v10

    aput-wide v8, v3, v0

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 399
    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 401
    :cond_80
    const/4 v0, 0x2

    if-lt v2, v0, :cond_85

    move-object v0, v3

    :goto_84
    return-object v0

    :cond_85
    const/4 v0, 0x0

    goto :goto_84

    :cond_87
    move-object v6, v4

    goto :goto_41
.end method

.method static program(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/wearable/NextPlan$Snap;Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x64

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 411
    .line 413
    :try_start_6
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    .line 414
    if-eqz v4, :cond_106

    if-eqz p0, :cond_106

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_106

    .line 415
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1f} :catch_ff

    move-result-object v0

    .line 417
    :goto_20
    if-nez v0, :cond_38

    if-eqz v4, :cond_38

    if-eqz p1, :cond_38

    :try_start_26
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_38

    iget-boolean v5, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    if-nez v5, :cond_38

    .line 418
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_37} :catch_103

    move-result-object v0

    .line 422
    :cond_38
    :goto_38
    if-nez v0, :cond_40

    if-eqz p2, :cond_40

    .line 423
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 425
    :cond_40
    if-nez v0, :cond_44

    move-object v0, v1

    .line 479
    :cond_43
    :goto_43
    return-object v0

    .line 428
    :cond_44
    invoke-static {v0}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 429
    if-eqz v0, :cond_43

    if-eqz p1, :cond_43

    .line 432
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 433
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 435
    :cond_5a
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    .line 436
    if-eqz v6, :cond_43

    .line 439
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    if-lez v1, :cond_6c

    .line 440
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    invoke-static {v1, v2, v7}, Lcom/isaigu/gymapp/wearable/NextPlan;->clamp(III)I

    move-result v1

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 442
    :cond_6c
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    if-lez v1, :cond_74

    .line 443
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 445
    :cond_74
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    if-lez v1, :cond_7c

    .line 446
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 448
    :cond_7c
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    if-lez v1, :cond_84

    .line 449
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 451
    :cond_84
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    if-lez v1, :cond_8c

    .line 452
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 454
    :cond_8c
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    if-lez v1, :cond_94

    .line 455
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 457
    :cond_94
    iget-boolean v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    iput-boolean v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 458
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    if-lez v1, :cond_a0

    .line 459
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 461
    :cond_a0
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    if-lez v1, :cond_a8

    .line 462
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :cond_a8
    move v4, v2

    move v5, v2

    .line 465
    :goto_aa
    if-ge v4, v3, :cond_ba

    .line 466
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v1, v1, v4

    if-lez v1, :cond_b8

    const/4 v1, 0x1

    :goto_b3
    or-int/2addr v5, v1

    .line 465
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_aa

    :cond_b8
    move v1, v2

    .line 466
    goto :goto_b3

    .line 468
    :cond_ba
    if-eqz v5, :cond_43

    .line 469
    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-nez v1, :cond_c7

    .line 470
    new-instance v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    iput-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 472
    :cond_c7
    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v1, :cond_f4

    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 473
    :goto_d6
    iget-object v4, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v4, :cond_f6

    iget-object v4, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :goto_e4
    move v4, v2

    .line 474
    :goto_e5
    if-ge v4, v3, :cond_f9

    .line 475
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v5, v5, v4

    invoke-static {v5, v2, v7}, Lcom/isaigu/gymapp/wearable/NextPlan;->clamp(III)I

    move-result v5

    aput v5, v1, v4

    .line 474
    add-int/lit8 v4, v4, 0x1

    goto :goto_e5

    :cond_f4
    move v1, v3

    .line 472
    goto :goto_d6

    .line 473
    :cond_f6
    new-array v1, v1, [I

    goto :goto_e4

    .line 477
    :cond_f9
    iget-object v2, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    goto/16 :goto_43

    .line 420
    :catch_ff
    move-exception v0

    move-object v0, v1

    goto/16 :goto_38

    :catch_103
    move-exception v4

    goto/16 :goto_38

    :cond_106
    move-object v0, v1

    goto/16 :goto_20
.end method

.method public static recommend(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;JJ)Lcom/isaigu/gymapp/wearable/NextPlan$Rec;
    .registers 26

    .prologue
    .line 233
    new-instance v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

    invoke-direct {v8}, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;-><init>()V

    .line 234
    move-wide/from16 v0, p4

    iput-wide v0, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->nextApptMs:J

    .line 235
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_4c

    move-wide/from16 v10, p2

    .line 236
    :goto_11
    if-eqz p0, :cond_52

    if-eqz p1, :cond_52

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->load(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v2

    move-object v9, v2

    .line 237
    :goto_20
    if-eqz p1, :cond_55

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    :goto_26
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->history(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v12

    .line 238
    if-eqz v9, :cond_58

    iget-wide v2, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    .line 239
    :goto_30
    const/4 v4, 0x0

    move-wide v6, v2

    :goto_32
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_5b

    .line 240
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 239
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_32

    .line 235
    :cond_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v10, v2

    goto :goto_11

    .line 236
    :cond_52
    const/4 v2, 0x0

    move-object v9, v2

    goto :goto_20

    .line 237
    :cond_55
    const-wide/16 v2, -0x1

    goto :goto_26

    .line 238
    :cond_58
    const-wide/16 v2, 0x0

    goto :goto_30

    .line 242
    :cond_5b
    iput-wide v6, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->lastMs:J

    .line 243
    if-nez v9, :cond_80

    .line 244
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->first:Z

    .line 245
    iget-object v3, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 246
    const-string v2, "\u041f\u044a\u0440\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0441\u044a\u0441 \u0437\u0430\u043f\u0438\u0441 \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430, \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e."

    const-string v4, "First recorded training \u2014 the client\'s program, set the strength on the spot."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    :goto_72
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v8

    .line 327
    :goto_76
    return-object v2

    .line 248
    :cond_77
    const-string v2, "\u041d\u044f\u043c\u0430 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v4, "No saved settings \u2014 the client\'s program."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_72

    .line 252
    :cond_80
    iput-object v9, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    .line 253
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->copy()Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v13

    .line 254
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 255
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_13e

    sub-long v4, v10, v6

    long-to-double v4, v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    .line 257
    :goto_97
    const-wide/high16 v6, 0x3ffc000000000000L    # 1.75

    cmpg-double v6, v4, v6

    if-gez v6, :cond_145

    .line 258
    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v6

    .line 259
    iget v6, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    const-wide v14, 0x3fe999999999999aL    # 0.8

    invoke-static {v6, v14, v15}, Lcom/isaigu/gymapp/wearable/NextPlan;->shorter(ID)I

    move-result v6

    iput v6, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    .line 260
    iget-object v6, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v7, "\u0421\u0430\u043c\u043e %d \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u2014 \u043f\u043e-\u043b\u0435\u043a\u043e \u0438 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u043e (\u221215 %%)."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-wide/high16 v16, 0x4038000000000000L    # 24.0

    mul-double v16, v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Only %d h since the last one \u2014 lighter and shorter (\u221215%%)."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide/high16 v18, 0x4038000000000000L    # 24.0

    mul-double v4, v4, v18

    .line 261
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_ea
    :goto_ea
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_118

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_118

    .line 277
    sub-long v4, p4, p2

    long-to-double v4, v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    .line 278
    const-wide/high16 v6, 0x3ffc000000000000L    # 1.75

    cmpg-double v4, v4, v6

    if-gez v4, :cond_118

    .line 279
    const-wide v4, 0x3fee666666666666L    # 0.95

    mul-double/2addr v2, v4

    .line 280
    iget-object v4, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v5, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442 \u0447\u0430\u0441 \u0435 \u0434\u043e 2 \u0434\u043d\u0438 \u2014 \u0443\u043c\u0435\u0440\u0435\u043d\u043e (\u22125 %)."

    const-string v6, "The next appointment is within 2 days \u2014 moderate (\u22125%)."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_118
    invoke-static {v12, v10, v11}, Lcom/isaigu/gymapp/wearable/NextPlan;->load30(Ljava/util/List;J)[D

    move-result-object v10

    .line 286
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 287
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 288
    if-eqz v10, :cond_294

    .line 289
    const-wide/16 v6, 0x0

    .line 290
    const/4 v4, 0x0

    .line 291
    const/4 v5, 0x0

    :goto_12c
    const/16 v14, 0xa

    if-ge v5, v14, :cond_206

    .line 292
    iget-object v14, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v14, v14, v5

    if-lez v14, :cond_13b

    .line 293
    aget-wide v14, v10, v5

    add-double/2addr v6, v14

    .line 294
    add-int/lit8 v4, v4, 0x1

    .line 291
    :cond_13b
    add-int/lit8 v5, v5, 0x1

    goto :goto_12c

    .line 255
    :cond_13e
    const-wide v4, 0x4058c00000000000L    # 99.0

    goto/16 :goto_97

    .line 262
    :cond_145
    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_192

    .line 263
    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v6

    .line 264
    iget v6, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    const-wide v14, 0x3fe999999999999aL    # 0.8

    invoke-static {v6, v14, v15}, Lcom/isaigu/gymapp/wearable/NextPlan;->shorter(ID)I

    move-result v6

    iput v6, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    .line 265
    iget-object v6, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v7, "\u0414\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430 (%d \u0434\u043d\u0438) \u2014 \u221220 %% \u0438 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u043e."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Long break (%d days) \u2014 \u221220%% and shorter."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 266
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ea

    .line 267
    :cond_192
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1d2

    .line 268
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v6

    .line 269
    iget-object v6, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v7, "\u041f\u0430\u0443\u0437\u0430 %d \u0434\u043d\u0438 \u2014 \u221210 %%."

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "%d days off \u2014 \u221210%%."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 270
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ea

    .line 271
    :cond_1d2
    iget-boolean v4, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    if-nez v4, :cond_ea

    iget v4, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    if-lez v4, :cond_ea

    iget v4, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    iget v14, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    int-to-double v14, v14

    mul-double/2addr v6, v14

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_ea

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_ea

    .line 272
    const-wide v4, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v2, v4

    .line 273
    iget-object v4, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v5, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0435 \u0438\u0437\u043a\u0430\u0440\u0430\u043d\u0430 \u0434\u043e\u043a\u0440\u0430\u0439 \u2014 +5 % \u0441\u0438\u043b\u0430."

    const-string v6, "The last one was completed \u2014 +5% strength."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ea

    .line 297
    :cond_206
    if-lez v4, :cond_221

    int-to-double v4, v4

    div-double v4, v6, v4

    .line 298
    :goto_20b
    const/4 v6, 0x0

    move v7, v6

    :goto_20d
    const/16 v6, 0xa

    if-ge v7, v6, :cond_294

    const-wide/16 v14, 0x0

    cmpl-double v6, v4, v14

    if-lez v6, :cond_294

    .line 299
    iget-object v6, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v6, v6, v7

    if-gtz v6, :cond_224

    .line 298
    :cond_21d
    :goto_21d
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_20d

    .line 297
    :cond_221
    const-wide/16 v4, 0x0

    goto :goto_20b

    .line 302
    :cond_224
    aget-wide v14, v10, v7

    const-wide v16, 0x3fe6666666666666L    # 0.7

    mul-double v16, v16, v4

    cmpg-double v6, v14, v16

    if-gez v6, :cond_25c

    iget-object v6, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v6, v6, v7

    const/16 v14, 0x64

    if-ge v6, v14, :cond_25c

    .line 303
    iget-object v6, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    const/16 v14, 0x64

    iget-object v15, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v15, v15, v7

    add-int/lit8 v15, v15, 0xa

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput v14, v6, v7

    .line 304
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v6

    if-eqz v6, :cond_257

    sget-object v6, Lcom/isaigu/gymapp/wearable/NextPlan;->ZONES_BG:[Ljava/lang/String;

    aget-object v6, v6, v7

    :goto_253
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21d

    :cond_257
    sget-object v6, Lcom/isaigu/gymapp/wearable/NextPlan;->ZONES_EN:[Ljava/lang/String;

    aget-object v6, v6, v7

    goto :goto_253

    .line 305
    :cond_25c
    aget-wide v14, v10, v7

    const-wide v16, 0x3ff599999999999aL    # 1.35

    mul-double v16, v16, v4

    cmpl-double v6, v14, v16

    if-lez v6, :cond_21d

    iget-object v6, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v6, v6, v7

    const/16 v14, 0x14

    if-le v6, v14, :cond_21d

    .line 306
    iget-object v6, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    const/16 v14, 0x14

    iget-object v15, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v15, v15, v7

    add-int/lit8 v15, v15, -0x5

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    aput v14, v6, v7

    .line 307
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v6

    if-eqz v6, :cond_28f

    sget-object v6, Lcom/isaigu/gymapp/wearable/NextPlan;->ZONES_BG:[Ljava/lang/String;

    aget-object v6, v6, v7

    :goto_28b
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21d

    :cond_28f
    sget-object v6, Lcom/isaigu/gymapp/wearable/NextPlan;->ZONES_EN:[Ljava/lang/String;

    aget-object v6, v6, v7

    goto :goto_28b

    .line 311
    :cond_294
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2dd

    .line 312
    iget-object v4, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0418\u0437\u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u0437\u0430 30 \u0434\u043d\u0438: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v11}, Lcom/isaigu/gymapp/wearable/NextPlan;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u2014 +10 %."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Behind over 30 days: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v11}, Lcom/isaigu/gymapp/wearable/NextPlan;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u2014 +10%."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_2dd
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_326

    .line 315
    iget-object v4, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041d\u0430\u0439-\u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0435\u043d\u0438: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v12}, Lcom/isaigu/gymapp/wearable/NextPlan;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u2014 \u22125 %."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Most loaded: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v12}, Lcom/isaigu/gymapp/wearable/NextPlan;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u2014 \u22125%."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_326
    iget v4, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->clamp(III)I

    move-result v2

    iput v2, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    .line 318
    iget-boolean v2, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    if-eqz v2, :cond_37c

    .line 319
    iget-object v2, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0431\u0435\u0448\u0435 \u0432 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u0435\u043d \u0440\u0435\u0436\u0438\u043c (\u201e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u201c) \u2014 \u0440\u044a\u0447\u043d\u0438\u0442\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043e\u0442 \u043f\u0440\u0435\u0434\u0438 \u043d\u0435\u044f."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The last one ran in automatic mode ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") \u2014 the manual settings from before it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 322
    :cond_37c
    iput-object v13, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->next:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    .line 323
    iget v2, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    iget v3, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    if-ne v2, v3, :cond_3ab

    iget v2, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    iget v3, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    if-ne v2, v3, :cond_3ab

    iget-object v2, v13, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    iget-object v3, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3ab

    const/4 v2, 0x1

    :goto_395
    iput-boolean v2, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->same:Z

    .line 324
    iget-boolean v2, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->same:Z

    if-eqz v2, :cond_3a8

    .line 325
    iget-object v2, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u041a\u0430\u043a\u0442\u043e \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u044f \u043f\u044a\u0442."

    const-string v4, "As last time."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a8
    move-object v2, v8

    .line 327
    goto/16 :goto_76

    .line 323
    :cond_3ab
    const/4 v2, 0x0

    goto :goto_395
.end method

.method static remember(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 91
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v1

    const/16 v3, 0x3c

    if-ge v1, v3, :cond_f

    .line 134
    :cond_e
    :goto_e
    return-void

    .line 95
    :cond_f
    :try_start_f
    const-string v1, "xems_next_plan"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 96
    iget-wide v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/wearable/NextPlan;->load(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v5

    .line 97
    new-instance v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;-><init>()V

    .line 98
    iget-wide v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    iput-wide v6, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    .line 99
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    if-eqz v3, :cond_ad

    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    :goto_2b
    iput-object v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    .line 100
    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-nez v3, :cond_39

    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->auto:Z

    if-nez v3, :cond_39

    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->ai:Z

    if-eqz v3, :cond_b1

    :cond_39
    move v3, v2

    :goto_3a
    iput-boolean v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    .line 101
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    .line 102
    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    if-lez v3, :cond_b3

    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    :goto_48
    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    .line 103
    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ltz v3, :cond_b6

    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    :goto_50
    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    .line 105
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->st:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-static {p1, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->runMedian(Lcom/isaigu/gymapp/wearable/SessionRec;Lcom/isaigu/gymapp/wearable/SessionInts;)I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    .line 106
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NextPlan;->lastRun(Lcom/isaigu/gymapp/wearable/SessionRec;)I

    move-result v3

    .line 107
    if-ltz v3, :cond_ba

    .line 108
    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v6, v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v6

    iput v6, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    .line 109
    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v6, v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v6

    iput v6, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    .line 110
    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v6, v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v6

    iput v6, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    .line 111
    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v6, v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v6

    iput v6, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    .line 112
    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v6, v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v6

    iput v6, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    .line 113
    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v6, v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v6

    iput v6, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    .line 114
    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v6, v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v6

    if-ne v6, v2, :cond_b8

    :goto_98
    iput-boolean v2, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    .line 115
    :goto_9a
    const/16 v2, 0xa

    if-ge v0, v2, :cond_ba

    .line 116
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    aget-object v6, v6, v0

    invoke-virtual {v6, v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v6

    aput v6, v2, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 99
    :cond_ad
    const-string v3, ""

    goto/16 :goto_2b

    :cond_b1
    move v3, v0

    .line 100
    goto :goto_3a

    .line 102
    :cond_b3
    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    goto :goto_48

    :cond_b6
    move v3, v0

    .line 103
    goto :goto_50

    :cond_b8
    move v2, v0

    .line 114
    goto :goto_98

    .line 119
    :cond_ba
    iget v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    .line 120
    iget-boolean v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    if-eqz v0, :cond_120

    if-eqz v5, :cond_120

    .line 122
    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->copy()Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v0

    .line 123
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    .line 125
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    .line 126
    iget v1, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    .line 127
    iget v1, v5, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    .line 130
    :goto_db
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NextPlan;->toJson(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_103} :catch_105

    goto/16 :goto_e

    .line 131
    :catch_105
    move-exception v0

    .line 132
    const-string v1, "next"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remember: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_120
    move-object v0, v1

    goto :goto_db
.end method

.method private static runMedian(Lcom/isaigu/gymapp/wearable/SessionRec;Lcom/isaigu/gymapp/wearable/SessionInts;)I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 147
    :goto_7
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 148
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2f

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    if-lez v3, :cond_2f

    .line 149
    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 152
    :cond_32
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 156
    :goto_38
    return v1

    .line 155
    :cond_39
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 156
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_38
.end method

.method private static shorter(ID)I
    .registers 8

    .prologue
    .line 331
    if-gtz p0, :cond_3

    .line 335
    :goto_2
    return p0

    .line 334
    :cond_3
    int-to-double v0, p0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    .line 335
    const/16 v1, 0x258

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2
.end method

.method static toJson(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 170
    const-string v0, "t"

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 171
    const-string v0, "program"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v0, "type"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    const-string v0, "st"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v0, "hz"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    const-string v0, "pw"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    const-string v0, "on"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    const-string v0, "off"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string v0, "ps"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    const-string v0, "phz"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string v0, "ap"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 181
    const-string v0, "work"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v0, "activeS"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    const-string v0, "planS"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    const-string v0, "assisted"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 185
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 186
    const/4 v0, 0x0

    :goto_74
    const/16 v3, 0xa

    if-ge v0, v3, :cond_82

    .line 187
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 189
    :cond_82
    const-string v0, "ch"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    return-object v1
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 220
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
