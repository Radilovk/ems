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


# direct methods
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
    .line 390
    packed-switch p1, :pswitch_data_10

    .line 398
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    :goto_5
    return-object v0

    .line 392
    :pswitch_6
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 394
    :pswitch_9
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 396
    :pswitch_c
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 390
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
    .line 284
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

.method static focusName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 275
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u043a\u043e\u0440\u0435\u043c"

    const-string v1, "abs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_10
    return-object v0

    .line 276
    :cond_11
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v1, "glutes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 277
    :cond_22
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0431\u0435\u0434\u0440\u0430"

    const-string v1, "legs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 278
    :cond_33
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0440\u044a\u0446\u0435"

    const-string v1, "arms"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 279
    :cond_44
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0433\u0440\u044a\u0431"

    const-string v1, "back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 280
    :cond_55
    const-string v0, "\u0433\u044a\u0440\u0434\u0438"

    const-string v1, "chest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method static fromJson(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;
    .registers 6

    .prologue
    .line 208
    new-instance v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;-><init>()V

    .line 209
    const-string v0, "t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    .line 210
    const-string v0, "program"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    .line 211
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    .line 212
    const-string v0, "st"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    .line 213
    const-string v0, "hz"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    .line 214
    const-string v0, "pw"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    .line 215
    const-string v0, "on"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    .line 216
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    .line 217
    const-string v0, "ps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    .line 218
    const-string v0, "phz"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    .line 219
    const-string v0, "ap"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    .line 220
    const-string v0, "work"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    .line 221
    const-string v0, "activeS"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    .line 222
    const-string v0, "planS"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    .line 223
    const-string v0, "assisted"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    .line 224
    const-string v0, "ch"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 225
    const/4 v0, 0x0

    :goto_86
    if-eqz v2, :cond_9d

    const/16 v3, 0xa

    if-ge v0, v3, :cond_9d

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_9d

    .line 226
    iget-object v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 228
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
    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    if-eqz p0, :cond_d

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_e

    .line 303
    :cond_d
    :goto_d
    return-object v0

    .line 294
    :cond_e
    :try_start_e
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/SessionStore;->listFor(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 295
    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 296
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 297
    if-eqz v3, :cond_31

    const-string v4, "activeS"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3c

    if-lt v4, v5, :cond_31

    .line 298
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_31} :catch_34

    .line 295
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 301
    :catch_34
    move-exception v1

    goto :goto_d
.end method

.method private static lastRun(Lcom/isaigu/gymapp/wearable/SessionRec;)I
    .registers 5

    .prologue
    .line 144
    const/4 v0, -0x1

    .line 145
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_2b

    .line 146
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 147
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v2

    if-nez v2, :cond_25

    .line 155
    :cond_24
    :goto_24
    return v1

    .line 150
    :cond_25
    if-gez v0, :cond_28

    move v0, v1

    .line 145
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_2b
    move v1, v0

    .line 155
    goto :goto_24
.end method

.method static line(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 404
    if-nez p0, :cond_5

    .line 405
    const-string v0, ""

    .line 415
    :goto_4
    return-object v0

    .line 407
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    const-string v1, "\u0441\u0438\u043b\u0430 "

    const-string v2, "strength "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    if-lez v1, :cond_30

    .line 410
    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_30
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    if-lez v1, :cond_53

    .line 413
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

    .line 415
    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static load(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 175
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

    .line 176
    if-eqz v1, :cond_2b

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->fromJson(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2c

    move-result-object v0

    .line 178
    :cond_2b
    :goto_2b
    return-object v0

    .line 177
    :catch_2c
    move-exception v1

    goto :goto_2b
.end method

.method static own(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)[Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 266
    if-eqz p0, :cond_8

    if-nez p1, :cond_17

    .line 267
    :cond_8
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const-string v1, ""

    aput-object v1, v0, v8

    .line 271
    :goto_16
    return-object v0

    .line 269
    :cond_17
    const-string v0, "xems_user_profiles"

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\|"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 271
    new-array v0, v4, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cond"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    aget-object v1, v2, v6

    aput-object v1, v0, v8

    goto :goto_16
.end method

.method static program(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/wearable/NextPlan$Snap;Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/TrainProgram;
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x64

    const/4 v2, 0x1

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 311
    .line 313
    :try_start_7
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v5

    .line 314
    if-eqz v5, :cond_12b

    if-eqz p0, :cond_12b

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    if-eqz v0, :cond_12b

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12b

    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_20} :catch_121

    move-result-object v0

    .line 317
    :goto_21
    if-nez v0, :cond_39

    if-eqz v5, :cond_39

    if-eqz p1, :cond_39

    :try_start_27
    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_39

    iget-boolean v6, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    if-nez v6, :cond_39

    .line 318
    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_38} :catch_125

    move-result-object v0

    .line 322
    :cond_39
    :goto_39
    if-nez v0, :cond_128

    if-eqz p2, :cond_128

    .line 323
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    move-object v5, v0

    .line 325
    :goto_42
    if-nez v5, :cond_46

    move-object v0, v1

    .line 386
    :cond_45
    :goto_45
    return-object v0

    .line 328
    :cond_46
    iget-object v0, v5, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->base(Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_5d

    .line 330
    if-eqz p1, :cond_45

    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 331
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    goto :goto_45

    .line 335
    :cond_5d
    invoke-static {v5}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 336
    if-eqz v0, :cond_45

    if-eqz p1, :cond_45

    .line 339
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-eqz v1, :cond_73

    .line 340
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 342
    :cond_73
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v7

    .line 343
    if-eqz v7, :cond_45

    .line 346
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    if-lez v1, :cond_85

    .line 347
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    invoke-static {v1, v3, v8}, Lcom/isaigu/gymapp/wearable/NextPlan;->clamp(III)I

    move-result v1

    iput v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 349
    :cond_85
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    if-lez v1, :cond_8d

    .line 350
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    iput v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 352
    :cond_8d
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    if-lez v1, :cond_95

    .line 353
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    iput v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 355
    :cond_95
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    if-lez v1, :cond_9d

    .line 356
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    iput v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 358
    :cond_9d
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    if-lez v1, :cond_a5

    .line 359
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    iput v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 361
    :cond_a5
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    if-lez v1, :cond_ad

    .line 362
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    iput v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 364
    :cond_ad
    iget-boolean v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    if-eqz v1, :cond_d8

    iget v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    if-eq v1, v2, :cond_d8

    move v1, v2

    :goto_b6
    iput-boolean v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 365
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    if-lez v1, :cond_c0

    .line 366
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    iput v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 368
    :cond_c0
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    if-lez v1, :cond_c8

    .line 369
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    iput v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :cond_c8
    move v5, v3

    move v6, v3

    .line 372
    :goto_ca
    if-ge v5, v4, :cond_dc

    .line 373
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v1, v1, v5

    if-lez v1, :cond_da

    move v1, v2

    :goto_d3
    or-int/2addr v6, v1

    .line 372
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_ca

    :cond_d8
    move v1, v3

    .line 364
    goto :goto_b6

    :cond_da
    move v1, v3

    .line 373
    goto :goto_d3

    .line 375
    :cond_dc
    if-eqz v6, :cond_45

    .line 376
    iget-object v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-nez v1, :cond_e9

    .line 377
    new-instance v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    iput-object v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 379
    :cond_e9
    iget-object v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v1, :cond_116

    iget-object v1, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v1, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 380
    :goto_f8
    iget-object v2, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v2, :cond_118

    iget-object v2, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :goto_106
    move v2, v3

    .line 381
    :goto_107
    if-ge v2, v4, :cond_11b

    .line 382
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v5, v5, v2

    invoke-static {v5, v3, v8}, Lcom/isaigu/gymapp/wearable/NextPlan;->clamp(III)I

    move-result v5

    aput v5, v1, v2

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    :cond_116
    move v1, v4

    .line 379
    goto :goto_f8

    .line 380
    :cond_118
    new-array v1, v1, [I

    goto :goto_106

    .line 384
    :cond_11b
    iget-object v2, v7, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    goto/16 :goto_45

    .line 320
    :catch_121
    move-exception v0

    move-object v0, v1

    goto/16 :goto_39

    :catch_125
    move-exception v5

    goto/16 :goto_39

    :cond_128
    move-object v5, v0

    goto/16 :goto_42

    :cond_12b
    move-object v0, v1

    goto/16 :goto_21
.end method

.method public static recommend(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;JJ)Lcom/isaigu/gymapp/wearable/NextPlan$Rec;
    .registers 16

    .prologue
    const/4 v8, 0x1

    .line 243
    new-instance v3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;-><init>()V

    .line 244
    iput-wide p4, v3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->nextApptMs:J

    .line 245
    if-eqz p0, :cond_3b

    if-eqz p1, :cond_3b

    iget-wide v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->load(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v0

    move-object v6, v0

    .line 246
    :goto_13
    if-eqz p1, :cond_3e

    iget-wide v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    :goto_17
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->history(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v7

    .line 247
    if-eqz v6, :cond_41

    iget-wide v0, v6, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    .line 248
    :goto_1f
    const/4 v2, 0x0

    move-wide v4, v0

    :goto_21
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_44

    .line 249
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 248
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_21

    .line 245
    :cond_3b
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_13

    .line 246
    :cond_3e
    const-wide/16 v0, -0x1

    goto :goto_17

    .line 247
    :cond_41
    const-wide/16 v0, 0x0

    goto :goto_1f

    .line 251
    :cond_44
    iput-wide v4, v3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->lastMs:J

    .line 252
    if-nez v6, :cond_4c

    .line 253
    iput-boolean v8, v3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->first:Z

    move-object v0, v3

    .line 259
    :goto_4b
    return-object v0

    .line 256
    :cond_4c
    iput-object v6, v3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    .line 257
    invoke-virtual {v6}, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->copy()Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v0

    iput-object v0, v3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->next:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    .line 258
    iput-boolean v8, v3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->same:Z

    move-object v0, v3

    .line 259
    goto :goto_4b
.end method

.method static remember(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;)V
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 91
    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v1

    const/16 v3, 0x3c

    if-ge v1, v3, :cond_f

    .line 140
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

    if-eqz v3, :cond_af

    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->program:Ljava/lang/String;

    :goto_2b
    iput-object v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    .line 100
    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->assist:Z

    if-nez v3, :cond_39

    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->auto:Z

    if-nez v3, :cond_39

    iget-boolean v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->ai:Z

    if-eqz v3, :cond_b3

    :cond_39
    move v3, v0

    :goto_3a
    iput-boolean v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    .line 101
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    .line 102
    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    if-lez v3, :cond_b5

    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->mainPlanS:I

    :goto_48
    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    .line 103
    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ltz v3, :cond_b8

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

    move-result v6

    .line 107
    if-ltz v6, :cond_bc

    .line 108
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->hz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    .line 109
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->pw:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    .line 110
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->on:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    .line 111
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->off:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    .line 112
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->ps:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    .line 113
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->phz:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    .line 114
    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->ap:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v3, v6}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v3

    if-ne v3, v0, :cond_ba

    move v3, v0

    :goto_99
    iput-boolean v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    move v3, v2

    .line 115
    :goto_9c
    const/16 v7, 0xa

    if-ge v3, v7, :cond_bc

    .line 116
    iget-object v7, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    iget-object v8, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->ch:[Lcom/isaigu/gymapp/wearable/SessionInts;

    aget-object v8, v8, v3

    invoke-virtual {v8, v6}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v8

    aput v8, v7, v3

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 99
    :cond_af
    const-string v3, ""

    goto/16 :goto_2b

    :cond_b3
    move v3, v2

    .line 100
    goto :goto_3a

    .line 102
    :cond_b5
    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->planS:I

    goto :goto_48

    :cond_b8
    move v3, v2

    .line 103
    goto :goto_50

    :cond_ba
    move v3, v2

    .line 114
    goto :goto_99

    .line 119
    :cond_bc
    iget v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    iput v3, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    .line 121
    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-gez v3, :cond_11b

    iget v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->modes:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_11b

    .line 122
    :goto_ca
    if-eqz v0, :cond_11d

    if-eqz v5, :cond_11d

    .line 123
    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->copy()Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v0

    .line 124
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    .line 136
    :goto_d6
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
    :try_end_fe
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_fe} :catch_100

    goto/16 :goto_e

    .line 137
    :catch_100
    move-exception v0

    .line 138
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

    :cond_11b
    move v0, v2

    .line 121
    goto :goto_ca

    .line 126
    :cond_11d
    :try_start_11d
    iget-boolean v0, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    if-eqz v0, :cond_13b

    if-eqz v5, :cond_13b

    .line 128
    invoke-virtual {v5}, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->copy()Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v0

    .line 129
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    iput-wide v2, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    .line 130
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    .line 131
    iget-object v2, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    iput-object v2, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    .line 132
    iget v1, v1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    .line 133
    iget v1, v5, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    iput v1, v0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_13a} :catch_100

    goto :goto_d6

    :cond_13b
    move-object v0, v1

    goto :goto_d6
.end method

.method private static runMedian(Lcom/isaigu/gymapp/wearable/SessionRec;Lcom/isaigu/gymapp/wearable/SessionInts;)I
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 160
    :goto_8
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    .line 161
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v2

    if-ge v0, v2, :cond_49

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->pv:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v2, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v2

    if-ne v2, v3, :cond_49

    iget v2, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->mainType:I

    if-ltz v2, :cond_49

    move v2, v3

    .line 162
    :goto_2b
    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    invoke-virtual {v5, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v5

    if-ne v5, v3, :cond_46

    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v5

    if-lez v5, :cond_46

    if-nez v2, :cond_46

    .line 163
    invoke-virtual {p1, v0}, Lcom/isaigu/gymapp/wearable/SessionInts;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_49
    move v2, v1

    .line 161
    goto :goto_2b

    .line 166
    :cond_4b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 170
    :goto_51
    return v1

    .line 169
    :cond_52
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 170
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_51
.end method

.method static toJson(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 184
    const-string v0, "t"

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 185
    const-string v0, "program"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v0, "type"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string v0, "st"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v0, "hz"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v0, "pw"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string v0, "on"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    const-string v0, "off"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    const-string v0, "ps"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    const-string v0, "phz"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    const-string v0, "ap"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 195
    const-string v0, "work"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    const-string v0, "activeS"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string v0, "planS"

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    const-string v0, "assisted"

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 199
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 200
    const/4 v0, 0x0

    :goto_74
    const/16 v3, 0xa

    if-ge v0, v3, :cond_82

    .line 201
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 203
    :cond_82
    const-string v0, "ch"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    return-object v1
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 234
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
