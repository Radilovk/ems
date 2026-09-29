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
.field static final BIG:[I

.field static final CH:I = 0xa

.field static final DAY:J = 0x5265c00L

.field static final LEGS_GLUTES:[I

.field static final PREFS:Ljava/lang/String; = "xems_next_plan"

.field static final ZONES_BG:[Ljava/lang/String;

.field static final ZONES_EN:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 237
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0433\u044a\u0440\u0434\u0438"

    aput-object v1, v0, v5

    const-string v1, "\u043a\u043e\u0440\u0435\u043c"

    aput-object v1, v0, v6

    const-string v1, "\u043f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v1, v0, v7

    const-string v1, "\u043f\u0440\u0430\u0441\u0446\u0438"

    aput-object v1, v0, v3

    const-string v1, "\u0440\u044a\u0446\u0435"

    aput-object v1, v0, v4

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

    .line 239
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chest"

    aput-object v1, v0, v5

    const-string v1, "abs"

    aput-object v1, v0, v6

    const-string v1, "front thigh"

    aput-object v1, v0, v7

    const-string v1, "calves"

    aput-object v1, v0, v3

    const-string v1, "arms"

    aput-object v1, v0, v4

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

    .line 401
    new-array v0, v4, [I

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/isaigu/gymapp/wearable/NextPlan;->BIG:[I

    .line 402
    new-array v0, v3, [I

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/isaigu/gymapp/wearable/NextPlan;->LEGS_GLUTES:[I

    return-void

    .line 401
    :array_7e
    .array-data 4
        0x2
        0x9
        0x8
        0x6
    .end array-data

    .line 402
    :array_8a
    .array-data 4
        0x2
        0x9
        0x8
    .end array-data
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
    .line 718
    packed-switch p1, :pswitch_data_10

    .line 726
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->programDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    :goto_5
    return-object v0

    .line 720
    :pswitch_6
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->muscleTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 722
    :pswitch_9
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->aerobicTrainingProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 724
    :pswitch_c
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainProgram;->massageModeProgramDataBean:Lcom/isaigu/gymapp/bean/ProgramDataBean;

    goto :goto_5

    .line 718
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
    .line 578
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

.method static condition(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/NextPlan$Snap;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;D)D
    .registers 16

    .prologue
    .line 409
    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    .line 410
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 411
    const-string v0, "fat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "cellulite"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_351

    :cond_14
    const/4 v0, 0x1

    .line 413
    :goto_15
    const-string v1, "prediabetes"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "pcos"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 414
    :cond_25
    const-string v1, "prediabetes"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_354

    const/16 v1, 0xa

    .line 415
    :goto_2f
    sget-object v2, Lcom/isaigu/gymapp/wearable/NextPlan;->LEGS_GLUTES:[I

    invoke-static {p2, v2, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 416
    iget-object v3, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prediabetes"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_357

    const-string v2, "\u041f\u0440\u0435\u0434\u0434\u0438\u0430\u0431\u0435\u0442"

    :goto_48
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " \u2014 \u0431\u0435\u0434\u0440\u0430 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 +"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " %: \u0433\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0443\u0441\u0432\u043e\u044f\u0432\u0430\u0442 \u043d\u0430\u0439-\u043c\u043d\u043e\u0433\u043e \u0433\u043b\u044e\u043a\u043e\u0437\u0430. \u041d\u0435 \u043d\u0430 \u0433\u043b\u0430\u0434\u043d\u043e."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    const-string v2, "prediabetes"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35b

    const-string v2, "Prediabetes"

    :goto_6f
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " \u2014 thighs and glutes +"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%: the big muscles take up the most glucose. Not on an empty stomach."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-static {v8, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_8e
    const-string v1, "menopause"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37e

    .line 423
    sget-object v1, Lcom/isaigu/gymapp/wearable/NextPlan;->BIG:[I

    const/4 v2, 0x5

    invoke-static {p2, v1, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 424
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041c\u0435\u043d\u043e\u043f\u0430\u0443\u0437\u0430 \u2014 \u0433\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 +5 % (\u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 \u0438 \u043a\u043e\u0441\u0442\u0438)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 425
    if-eqz v0, :cond_35f

    const-string v1, ", \u0446\u0435\u043b\u0442\u0430 \u201e\u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435\u201c \u0438\u0434\u0432\u0430 \u043e\u0442 \u0442\u044f\u0445."

    :goto_b0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Menopause \u2014 big muscles +5% (muscle mass and bones)"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 426
    if-eqz v0, :cond_363

    const-string v0, ", fat loss comes from them."

    :goto_c7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_d6
    const-wide v0, 0x3ff0cccccccccccdL    # 1.05

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 430
    :goto_df
    const-string v2, "thyroid"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 431
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 432
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u0429\u0438\u0442\u043e\u0432\u0438\u0434\u043d\u0430 \u0436\u043b\u0435\u0437\u0430 \u2014 \u0431\u0435\u0437 \u0443\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435 \u0434\u043d\u0435\u0441; \u0441\u043b\u0435\u0434\u0438 \u0443\u043c\u043e\u0440\u0430\u0442\u0430."

    const-string v4, "Thyroid \u2014 no increase today; watch the fatigue."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_fa
    const-string v2, "water"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_151

    .line 436
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v2, v3

    const/16 v3, -0xa

    invoke-static {p2, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z

    .line 437
    iget-object v3, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0417\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0435 \u043d\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0438 \u2014 \u043f\u0440\u0430\u0441\u0446\u0438 \u221210 %"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 438
    const-string v2, "drain"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_367

    const-string v2, "."

    :goto_125
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Water retention \u2014 calves \u221210%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 439
    const-string v2, "drain"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36b

    const-string v2, "."

    :goto_142
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-static {v4, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_151
    const-string v2, "postpartum"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_175

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    const/16 v3, -0xf

    invoke-static {p2, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z

    move-result v2

    if-eqz v2, :cond_175

    .line 442
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u0421\u043b\u0435\u0434 \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442 \u2014 \u043a\u043e\u0440\u0435\u043c\u044a\u0442 \u221215 %, \u0442\u0430\u0437\u043e\u0432\u043e\u0442\u043e \u0434\u044a\u043d\u043e \u043f\u044a\u0440\u0432\u043e."

    const-string v4, "After pregnancy \u2014 abs \u221215%, pelvic floor first."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_175
    const-string v2, "diastasis"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ab

    iget-object v2, p2, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/16 v3, 0x14

    if-le v2, v3, :cond_1ab

    .line 447
    iget-object v2, p2, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    const/4 v3, 0x1

    const/16 v4, 0x14

    iget-object v5, p2, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    const/4 v8, 0x1

    aget v5, v5, v8

    add-int/lit8 v5, v5, -0x19

    const/16 v8, 0x28

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v2, v3

    .line 448
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u0414\u0438\u0430\u0441\u0442\u0430\u0437\u0430 \u2014 \u043a\u043e\u0440\u0435\u043c\u044a\u0442 \u0434\u043e 40 %, \u0431\u0435\u0437 \u043d\u0430\u043f\u044a\u0432\u0430\u043d\u0435."

    const-string v4, "Diastasis \u2014 abs at most 40%, no straining."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_1ab
    const-string v2, "back"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1cf

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x7

    aput v4, v2, v3

    const/16 v3, -0xf

    invoke-static {p2, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z

    move-result v2

    if-eqz v2, :cond_1cf

    .line 451
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u041a\u0440\u044a\u0441\u0442 \u2014 \u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u221215 %, \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 \u0438 \u043a\u043e\u0440\u0435\u043c \u0433\u043e \u043f\u0430\u0437\u044f\u0442."

    const-string v4, "Lower back \u2014 lower back \u221215%."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_1cf
    const-string v2, "neck"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f3

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x5

    aput v4, v2, v3

    const/16 v3, -0xf

    invoke-static {p2, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z

    move-result v2

    if-eqz v2, :cond_1f3

    .line 454
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u0412\u0440\u0430\u0442 / \u0440\u0430\u043c\u0435\u043d\u0435 \u2014 \u0442\u0440\u0430\u043f\u0435\u0446\u044a\u0442 \u221215 %."

    const-string v4, "Neck / shoulders \u2014 traps \u221215%."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_1f3
    const-string v2, "knees"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_217

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    const/16 v3, -0xa

    invoke-static {p2, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z

    move-result v2

    if-eqz v2, :cond_217

    .line 457
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u041a\u043e\u043b\u0435\u043d\u0435 \u2014 \u043f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e \u221210 %."

    const-string v4, "Knees \u2014 front thigh \u221210%."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_217
    const-string v2, "desk"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_239

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_382

    const/4 v3, 0x5

    invoke-static {p2, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z

    move-result v2

    if-eqz v2, :cond_239

    .line 460
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u0421\u0435\u0434\u044f\u0449\u0430 \u0440\u0430\u0431\u043e\u0442\u0430 \u2014 \u0433\u0440\u044a\u0431 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 +5 % (\u0441\u0442\u043e\u0439\u043a\u0430)."

    const-string v4, "Desk job \u2014 back and glutes +5% (posture)."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_239
    const-string v2, "varicose"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25c

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_38a

    const/16 v3, -0xa

    invoke-static {p2, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z

    move-result v2

    if-eqz v2, :cond_25c

    .line 463
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u0420\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u0438 \u0432\u0435\u043d\u0438 \u2014 \u043f\u0440\u0430\u0441\u0446\u0438 \u0438 \u0437\u0430\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e \u221210 %."

    const-string v4, "Varicose veins \u2014 calves and back thigh \u221210%."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_25c
    const-string v2, "joints"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_26c

    const-string v2, "osteo"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b9

    .line 466
    :cond_26c
    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 467
    iget-object v1, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "osteo"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36f

    const-string v0, "\u041e\u0441\u0442\u0435\u043e\u043f\u043e\u0440\u043e\u0437\u0430"

    :goto_286
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u0440\u0430\u0441\u0442\u0435 \u043f\u043b\u0430\u0432\u043d\u043e (\u0434\u043e +5 %), \u0431\u0435\u0437 \u0441\u043a\u043e\u043a\u043e\u0432\u0435 \u0438 \u0434\u044a\u043b\u0431\u043e\u043a\u0438 \u043a\u043b\u044f\u043a\u0430\u043d\u0438\u044f."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    const-string v0, "osteo"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_373

    const-string v0, "Osteoporosis"

    :goto_2a3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u2014 strength rises slowly (\u2264 +5%), no jumps or deep squats."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v0, v2

    .line 471
    :cond_2b9
    const-string v2, "senior"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e0

    .line 472
    sget-object v2, Lcom/isaigu/gymapp/wearable/NextPlan;->BIG:[I

    const/4 v3, 0x5

    invoke-static {p2, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z

    move-result v2

    if-eqz v2, :cond_2d7

    .line 473
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "60+ \u2014 \u0433\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 +5 %, \u0441\u0438\u043b\u0430\u0442\u0430 \u0440\u0430\u0441\u0442\u0435 \u043f\u043b\u0430\u0432\u043d\u043e."

    const-string v4, "60+ \u2014 big muscles +5%, strength rises slowly."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_2d7
    const-wide v2, 0x3ff0cccccccccccdL    # 1.05

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 477
    :cond_2e0
    const-string v2, "stress"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2fb

    .line 478
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 479
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u041d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u0438 \u0441\u0442\u0440\u0435\u0441 \u2014 \u0431\u0435\u0437 \u0443\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435, \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u0442\u0435\u043c\u043f\u043e; \u0442\u0440\u0430\u043f\u0435\u0446 \u0438 \u0433\u0440\u044a\u0431 \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u0442 \u0432 \u043a\u0440\u0430\u044f."

    const-string v4, "Tension and stress \u2014 no increase, calm pace; relax traps and back at the end."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_2fb
    const-string v2, "sleep"

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37b

    .line 483
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 484
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 485
    iget-object v2, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u041b\u043e\u0448 \u0441\u044a\u043d / \u0443\u043c\u043e\u0440\u0430 \u2014 \u0431\u0435\u0437 \u0443\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435 \u0438 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u043e."

    const-string v6, "Poor sleep / fatigue \u2014 no increase and shorter."

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v0

    .line 487
    :goto_320
    const-string v0, "sensitive"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_379

    .line 488
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v0, p4

    .line 489
    iget-object v6, p3, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v7, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d \u043a\u044a\u043c \u0442\u043e\u043a\u0430 \u2014 \u221210 %, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e \u043a\u0430\u0447\u0432\u0430\u043d\u0435."

    const-string v8, "Sensitive to current \u2014 \u221210%, raise slowly."

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    :goto_33b
    cmpl-double v6, v0, v4

    if-lez v6, :cond_377

    .line 494
    :goto_33f
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_34d

    .line 495
    iget v0, p2, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->shorter(ID)I

    move-result v0

    iput v0, p2, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    .line 497
    :cond_34d
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/wearable/NextPlan;->mindNotes(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;)V

    .line 498
    return-wide v4

    .line 411
    :cond_351
    const/4 v0, 0x0

    goto/16 :goto_15

    .line 414
    :cond_354
    const/4 v1, 0x5

    goto/16 :goto_2f

    .line 416
    :cond_357
    const-string v2, "\u041f\u041a\u041e\u0421"

    goto/16 :goto_48

    .line 418
    :cond_35b
    const-string v2, "PCOS"

    goto/16 :goto_6f

    .line 425
    :cond_35f
    const-string v1, "."

    goto/16 :goto_b0

    .line 426
    :cond_363
    const-string v0, "."

    goto/16 :goto_c7

    .line 438
    :cond_367
    const-string v2, "; \u0432 \u043a\u0440\u0430\u044f 10 \u043c\u0438\u043d \u0434\u0440\u0435\u043d\u0430\u0436."

    goto/16 :goto_125

    .line 439
    :cond_36b
    const-string v2, "; 10 min drainage at the end."

    goto/16 :goto_142

    .line 467
    :cond_36f
    const-string v0, "\u0421\u0442\u0430\u0432\u0438"

    goto/16 :goto_286

    .line 468
    :cond_373
    const-string v0, "Joints"

    goto/16 :goto_2a3

    :cond_377
    move-wide v4, v0

    goto :goto_33f

    :cond_379
    move-wide v0, p4

    goto :goto_33b

    :cond_37b
    move-wide v2, v6

    move-wide v4, v0

    goto :goto_320

    :cond_37e
    move-wide v0, v4

    goto/16 :goto_df

    .line 459
    nop

    :array_382
    .array-data 4
        0x6
        0x8
    .end array-data

    .line 462
    :array_38a
    .array-data 4
        0x3
        0x9
    .end array-data
.end method

.method static focusChannels(Ljava/lang/String;)[I
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 365
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-array v0, v1, [I

    aput v1, v0, v2

    .line 371
    :goto_e
    return-object v0

    .line 366
    :cond_f
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-array v0, v1, [I

    const/16 v1, 0x8

    aput v1, v0, v2

    goto :goto_e

    .line 367
    :cond_1e
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    goto :goto_e

    .line 368
    :cond_2d
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-array v0, v1, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    goto :goto_e

    .line 369
    :cond_3b
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-array v0, v1, [I

    const/4 v1, 0x6

    aput v1, v0, v2

    goto :goto_e

    .line 370
    :cond_49
    const-string v0, "chest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    new-array v0, v1, [I

    aput v2, v0, v2

    goto :goto_e

    .line 371
    :cond_56
    new-array v0, v2, [I

    goto :goto_e

    .line 367
    nop

    :array_5a
    .array-data 4
        0x2
        0x9
    .end array-data
.end method

.method static focusName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 550
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u043a\u043e\u0440\u0435\u043c"

    const-string v1, "abs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    :goto_10
    return-object v0

    .line 551
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

    .line 552
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

    .line 553
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

    .line 554
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

    .line 555
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

.method static has(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
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
    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    if-eqz p0, :cond_d

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_e

    .line 597
    :cond_d
    :goto_d
    return-object v0

    .line 588
    :cond_e
    :try_start_e
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/SessionStore;->listFor(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 589
    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 590
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 591
    if-eqz v3, :cond_31

    const-string v4, "activeS"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3c

    if-lt v4, v5, :cond_31

    .line 592
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_31} :catch_34

    .line 589
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 595
    :catch_34
    move-exception v1

    goto :goto_d
.end method

.method static individual([Ljava/lang/String;Lcom/isaigu/gymapp/wearable/NextPlan$Snap;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;D)D
    .registers 18

    .prologue
    .line 380
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 381
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_11
    if-ge v2, v5, :cond_4f

    aget-object v6, v4, v2

    .line 382
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/NextPlan;->focusChannels(Ljava/lang/String;)[I

    move-result-object v7

    .line 383
    const/4 v0, 0x0

    .line 384
    array-length v8, v7

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v8, :cond_42

    aget v9, v7, v1

    .line 385
    iget-object v10, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v10, v10, v9

    if-lez v10, :cond_3f

    iget-object v10, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v10, v10, v9

    const/16 v11, 0x64

    if-ge v10, v11, :cond_3f

    .line 386
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    const/16 v10, 0x64

    iget-object v11, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v11, v11, v9

    add-int/lit8 v11, v11, 0x5

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v0, v9

    .line 387
    const/4 v0, 0x1

    .line 384
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 390
    :cond_42
    if-eqz v0, :cond_4b

    .line 391
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/NextPlan;->focusName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_4b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 394
    :cond_4f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_98

    .line 395
    iget-object v0, p2, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0438\u0441\u043a\u0430 \u0430\u043a\u0446\u0435\u043d\u0442 \u043d\u0430: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2014 +5 %."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The client wants more on: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u2014 +5%."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_98
    const/4 v0, 0x1

    aget-object v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_ab

    const/4 v1, 0x2

    aget-object v1, p0, v1

    :goto_a2
    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/NextPlan;->condition(Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/wearable/NextPlan$Snap;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;D)D

    move-result-wide v0

    return-wide v0

    :cond_ab
    const-string v1, ""

    goto :goto_a2
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
    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 569
    if-lez v1, :cond_14

    .line 570
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 574
    :cond_21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 732
    if-nez p0, :cond_5

    .line 733
    const-string v0, ""

    .line 743
    :goto_4
    return-object v0

    .line 735
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    const-string v1, "\u0441\u0438\u043b\u0430 "

    const-string v2, "strength "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 737
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    if-lez v1, :cond_30

    .line 738
    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_30
    iget v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    if-lez v1, :cond_53

    .line 741
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

    .line 743
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
    .line 602
    const/16 v0, 0xa

    new-array v3, v0, [D

    .line 603
    const/4 v2, 0x0

    .line 604
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_80

    .line 605
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 606
    const-string v4, "start"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 607
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2e

    sub-long v6, p1, v4

    const-wide v8, 0x9a7ec800L

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2e

    cmp-long v4, v4, p1

    if-lez v4, :cond_32

    .line 604
    :cond_2e
    :goto_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 610
    :cond_32
    const-string v4, "mus"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 611
    if-nez v4, :cond_87

    .line 612
    const-string v4, "chPeak"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v6, v0

    .line 614
    :goto_41
    if-eqz v6, :cond_2e

    .line 617
    const-wide/16 v4, 0x0

    .line 618
    const/4 v0, 0x0

    :goto_46
    const/16 v7, 0xa

    if-ge v0, v7, :cond_5d

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_5d

    .line 619
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v0, v8, v9}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 621
    :cond_5d
    const-wide/16 v8, 0x0

    cmpg-double v0, v4, v8

    if-lez v0, :cond_2e

    .line 624
    const/4 v0, 0x0

    :goto_64
    const/16 v7, 0xa

    if-ge v0, v7, :cond_7d

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_7d

    .line 625
    aget-wide v8, v3, v0

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v0, v10, v11}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v10

    div-double/2addr v10, v4

    add-double/2addr v8, v10

    aput-wide v8, v3, v0

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 627
    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 629
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

.method private static mindNotes(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;)V
    .registers 5

    .prologue
    .line 541
    const-string v0, "knees"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 542
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v1, "\u041a\u043e\u043b\u0435\u043d\u0435 \u2014 \u0432\u043d\u0438\u043c\u0430\u043d\u0438\u0435 \u043f\u0440\u0438 \u043a\u043b\u044f\u043a\u0430\u043d\u0438\u044f \u0438 \u043d\u0430\u043f\u0430\u0434\u0438."

    const-string v2, "Knees \u2014 careful with squats and lunges."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    :cond_15
    const-string v0, "injury"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NextPlan;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 545
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v1, "\u0421\u0442\u0430\u0440\u0430 \u0442\u0440\u0430\u0432\u043c\u0430 \u2014 \u043f\u043e\u043f\u0438\u0442\u0430\u0439 \u043a\u044a\u0434\u0435, \u043f\u0440\u0435\u0434\u0438 \u0441\u0442\u0430\u0440\u0442\u0430."

    const-string v2, "Old injury \u2014 ask where before the start."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_2a
    return-void
.end method

.method static mindOnly([Ljava/lang/String;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 517
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 518
    aget-object v1, p0, v0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_10
    if-ge v1, v4, :cond_24

    aget-object v5, v3, v1

    .line 519
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_21

    .line 520
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/NextPlan;->focusName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 523
    :cond_24
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 524
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0438\u0441\u043a\u0430 \u0430\u043a\u0446\u0435\u043d\u0442 \u043d\u0430: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The client wants more on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_6d
    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 527
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_7c
    if-ge v0, v4, :cond_90

    aget-object v5, v3, v0

    .line 529
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8d

    .line 530
    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/NextClient;->condName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 533
    :cond_90
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d9

    .line 534
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0421\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2014 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Condition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 535
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u2014 set the strength on the spot, gently."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_d9
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/NextPlan;->mindNotes(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;)V

    .line 538
    return-void
.end method

.method static own(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)[Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 351
    if-eqz p0, :cond_8

    if-nez p1, :cond_17

    .line 352
    :cond_8
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v6

    const-string v1, ""

    aput-object v1, v0, v7

    const-string v1, ""

    aput-object v1, v0, v8

    .line 356
    :goto_16
    return-object v0

    .line 354
    :cond_17
    const-string v0, "xems_user_profiles"

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
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

    .line 356
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
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x64

    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 639
    .line 641
    :try_start_6
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v4

    .line 642
    if-eqz v4, :cond_121

    if-eqz p0, :cond_121

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_121

    .line 643
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->trainName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1f} :catch_117

    move-result-object v0

    .line 645
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

    .line 646
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/isaigu/gymapp/mgr/DataMgr;->getProgramData(Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_37} :catch_11b

    move-result-object v0

    .line 650
    :cond_38
    :goto_38
    if-nez v0, :cond_11e

    if-eqz p2, :cond_11e

    .line 651
    invoke-virtual {p2}, Lcom/isaigu/gymapp/train/model/TrainItem;->getTrainProgram()Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    move-object v4, v0

    .line 653
    :goto_41
    if-nez v4, :cond_45

    move-object v0, v1

    .line 714
    :cond_44
    :goto_44
    return-object v0

    .line 656
    :cond_45
    iget-object v0, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ClientPrograms;->base(Lcom/isaigu/gymapp/bean/TrainUser;Ljava/lang/String;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v0

    .line 657
    if-eqz v0, :cond_5c

    .line 658
    if-eqz p1, :cond_44

    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 659
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    goto :goto_44

    .line 663
    :cond_5c
    invoke-static {v4}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainProgram;

    .line 664
    if-eqz v0, :cond_44

    if-eqz p1, :cond_44

    .line 667
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->bean(Lcom/isaigu/gymapp/bean/TrainProgram;I)Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 668
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->type:I

    iput v1, v0, Lcom/isaigu/gymapp/bean/TrainProgram;->useType:I

    .line 670
    :cond_72
    invoke-virtual {v0}, Lcom/isaigu/gymapp/bean/TrainProgram;->matchProgram()Lcom/isaigu/gymapp/bean/ProgramDataBean;

    move-result-object v6

    .line 671
    if-eqz v6, :cond_44

    .line 674
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    if-lez v1, :cond_84

    .line 675
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    invoke-static {v1, v2, v7}, Lcom/isaigu/gymapp/wearable/NextPlan;->clamp(III)I

    move-result v1

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 677
    :cond_84
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    if-lez v1, :cond_8c

    .line 678
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->hz:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 680
    :cond_8c
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    if-lez v1, :cond_94

    .line 681
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->pw:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 683
    :cond_94
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    if-lez v1, :cond_9c

    .line 684
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->on:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 686
    :cond_9c
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    if-lez v1, :cond_a4

    .line 687
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->off:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 689
    :cond_a4
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    if-lez v1, :cond_ac

    .line 690
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 692
    :cond_ac
    iget-boolean v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ap:Z

    iput-boolean v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->activePause:Z

    .line 693
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    if-lez v1, :cond_b8

    .line 694
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ps:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseStrenthPercent:I

    .line 696
    :cond_b8
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    if-lez v1, :cond_c0

    .line 697
    iget v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->phz:I

    iput v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pauseHz:I

    :cond_c0
    move v4, v2

    move v5, v2

    .line 700
    :goto_c2
    if-ge v4, v3, :cond_d2

    .line 701
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v1, v1, v4

    if-lez v1, :cond_d0

    const/4 v1, 0x1

    :goto_cb
    or-int/2addr v5, v1

    .line 700
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_c2

    :cond_d0
    move v1, v2

    .line 701
    goto :goto_cb

    .line 703
    :cond_d2
    if-eqz v5, :cond_44

    .line 704
    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    if-nez v1, :cond_df

    .line 705
    new-instance v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v1}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    iput-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 707
    :cond_df
    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v1, :cond_10c

    iget-object v1, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v1, v1, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 708
    :goto_ee
    iget-object v4, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v4, :cond_10e

    iget-object v4, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :goto_fc
    move v4, v2

    .line 709
    :goto_fd
    if-ge v4, v3, :cond_111

    .line 710
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v5, v5, v4

    invoke-static {v5, v2, v7}, Lcom/isaigu/gymapp/wearable/NextPlan;->clamp(III)I

    move-result v5

    aput v5, v1, v4

    .line 709
    add-int/lit8 v4, v4, 0x1

    goto :goto_fd

    :cond_10c
    move v1, v3

    .line 707
    goto :goto_ee

    .line 708
    :cond_10e
    new-array v1, v1, [I

    goto :goto_fc

    .line 712
    :cond_111
    iget-object v2, v6, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    iput-object v1, v2, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    goto/16 :goto_44

    .line 648
    :catch_117
    move-exception v0

    move-object v0, v1

    goto/16 :goto_38

    :catch_11b
    move-exception v4

    goto/16 :goto_38

    :cond_11e
    move-object v4, v0

    goto/16 :goto_41

    :cond_121
    move-object v0, v1

    goto/16 :goto_20
.end method

.method public static recommend(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;JJ)Lcom/isaigu/gymapp/wearable/NextPlan$Rec;
    .registers 26

    .prologue
    .line 247
    new-instance v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

    invoke-direct {v8}, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;-><init>()V

    .line 248
    move-wide/from16 v0, p4

    iput-wide v0, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->nextApptMs:J

    .line 249
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_4c

    move-wide/from16 v10, p2

    .line 250
    :goto_11
    if-eqz p0, :cond_52

    if-eqz p1, :cond_52

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->load(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v2

    move-object v9, v2

    .line 251
    :goto_20
    if-eqz p1, :cond_55

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    :goto_26
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->history(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v12

    .line 252
    if-eqz v9, :cond_58

    iget-wide v2, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->t:J

    .line 253
    :goto_30
    const/4 v4, 0x0

    move-wide v6, v2

    :goto_32
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_5b

    .line 254
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "start"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 253
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_32

    .line 249
    :cond_4c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v10, v2

    goto :goto_11

    .line 250
    :cond_52
    const/4 v2, 0x0

    move-object v9, v2

    goto :goto_20

    .line 251
    :cond_55
    const-wide/16 v2, -0x1

    goto :goto_26

    .line 252
    :cond_58
    const-wide/16 v2, 0x0

    goto :goto_30

    .line 256
    :cond_5b
    iput-wide v6, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->lastMs:J

    .line 257
    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/wearable/NextPlan;->own(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)[Ljava/lang/String;

    move-result-object v13

    .line 258
    if-nez v9, :cond_87

    .line 259
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->first:Z

    .line 260
    invoke-static {v13, v8}, Lcom/isaigu/gymapp/wearable/NextPlan;->mindOnly([Ljava/lang/String;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;)V

    .line 261
    iget-object v3, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 262
    const-string v2, "\u041f\u044a\u0440\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0441\u044a\u0441 \u0437\u0430\u043f\u0438\u0441 \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430, \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e."

    const-string v4, "First recorded training \u2014 the client\'s program, set the strength on the spot."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    :goto_79
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v8

    .line 344
    :goto_7d
    return-object v2

    .line 264
    :cond_7e
    const-string v2, "\u041d\u044f\u043c\u0430 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v4, "No saved settings \u2014 the client\'s program."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_79

    .line 268
    :cond_87
    iput-object v9, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    .line 269
    invoke-virtual {v9}, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->copy()Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-result-object v14

    .line 270
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 271
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_14e

    sub-long v4, v10, v6

    long-to-double v4, v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    .line 273
    :goto_9e
    const-wide/high16 v6, 0x3ffc000000000000L    # 1.75

    cmpg-double v6, v4, v6

    if-gez v6, :cond_155

    .line 274
    const-wide v6, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v6

    .line 275
    iget v6, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    const-wide v16, 0x3fe999999999999aL    # 0.8

    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->shorter(ID)I

    move-result v6

    iput v6, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    .line 276
    iget-object v6, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v7, "\u0421\u0430\u043c\u043e %d \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u2014 \u043f\u043e-\u043b\u0435\u043a\u043e \u0438 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u043e (\u221215 %%)."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide/high16 v18, 0x4038000000000000L    # 24.0

    mul-double v18, v18, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "Only %d h since the last one \u2014 lighter and shorter (\u221215%%)."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-wide/high16 v18, 0x4038000000000000L    # 24.0

    mul-double v4, v4, v18

    .line 277
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_f9
    :goto_f9
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_127

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_127

    .line 293
    sub-long v4, p4, p2

    long-to-double v4, v4

    const-wide v6, 0x4194997000000000L    # 8.64E7

    div-double/2addr v4, v6

    .line 294
    const-wide/high16 v6, 0x3ffc000000000000L    # 1.75

    cmpg-double v4, v4, v6

    if-gez v4, :cond_127

    .line 295
    const-wide v4, 0x3fee666666666666L    # 0.95

    mul-double/2addr v2, v4

    .line 296
    iget-object v4, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v5, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f\u0442 \u0447\u0430\u0441 \u0435 \u0434\u043e 2 \u0434\u043d\u0438 \u2014 \u0443\u043c\u0435\u0440\u0435\u043d\u043e (\u22125 %)."

    const-string v6, "The next appointment is within 2 days \u2014 moderate (\u22125%)."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_127
    invoke-static {v12, v10, v11}, Lcom/isaigu/gymapp/wearable/NextPlan;->load30(Ljava/util/List;J)[D

    move-result-object v10

    .line 302
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 304
    if-eqz v10, :cond_2b9

    .line 305
    const-wide/16 v6, 0x0

    .line 306
    const/4 v4, 0x0

    .line 307
    const/4 v5, 0x0

    :goto_13b
    const/16 v15, 0xa

    if-ge v5, v15, :cond_227

    .line 308
    iget-object v15, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v15, v15, v5

    if-lez v15, :cond_14b

    .line 309
    aget-wide v16, v10, v5

    add-double v6, v6, v16

    .line 310
    add-int/lit8 v4, v4, 0x1

    .line 307
    :cond_14b
    add-int/lit8 v5, v5, 0x1

    goto :goto_13b

    .line 271
    :cond_14e
    const-wide v4, 0x4058c00000000000L    # 99.0

    goto/16 :goto_9e

    .line 278
    :cond_155
    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1aa

    .line 279
    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v6

    .line 280
    iget v6, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    const-wide v16, 0x3fe999999999999aL    # 0.8

    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->shorter(ID)I

    move-result v6

    iput v6, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    .line 281
    iget-object v6, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v7, "\u0414\u044a\u043b\u0433\u0430 \u043f\u0430\u0443\u0437\u0430 (%d \u0434\u043d\u0438) \u2014 \u221220 %% \u0438 \u043f\u043e-\u043a\u0440\u0430\u0442\u043a\u043e."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "Long break (%d days) \u2014 \u221220%% and shorter."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 282
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 281
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f9

    .line 283
    :cond_1aa
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1f0

    .line 284
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v6

    .line 285
    iget-object v6, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v7, "\u041f\u0430\u0443\u0437\u0430 %d \u0434\u043d\u0438 \u2014 \u221210 %%."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v15, "%d days off \u2014 \u221210%%."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 286
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f9

    .line 287
    :cond_1f0
    iget-boolean v4, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    if-nez v4, :cond_f9

    iget v4, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    if-lez v4, :cond_f9

    iget v4, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->activeS:I

    int-to-double v4, v4

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    iget v15, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->planS:I

    int-to-double v0, v15

    move-wide/from16 v16, v0

    mul-double v6, v6, v16

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_f9

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_f9

    .line 288
    const-wide v4, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v2, v4

    .line 289
    iget-object v4, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v5, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0435 \u0438\u0437\u043a\u0430\u0440\u0430\u043d\u0430 \u0434\u043e\u043a\u0440\u0430\u0439 \u2014 +5 % \u0441\u0438\u043b\u0430."

    const-string v6, "The last one was completed \u2014 +5% strength."

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f9

    .line 313
    :cond_227
    if-lez v4, :cond_242

    int-to-double v4, v4

    div-double v4, v6, v4

    .line 314
    :goto_22c
    const/4 v6, 0x0

    move v7, v6

    :goto_22e
    const/16 v6, 0xa

    if-ge v7, v6, :cond_2b9

    const-wide/16 v16, 0x0

    cmpl-double v6, v4, v16

    if-lez v6, :cond_2b9

    .line 315
    iget-object v6, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v6, v6, v7

    if-gtz v6, :cond_245

    .line 314
    :cond_23e
    :goto_23e
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_22e

    .line 313
    :cond_242
    const-wide/16 v4, 0x0

    goto :goto_22c

    .line 318
    :cond_245
    aget-wide v16, v10, v7

    const-wide v18, 0x3fe6666666666666L    # 0.7

    mul-double v18, v18, v4

    cmpg-double v6, v16, v18

    if-gez v6, :cond_27f

    iget-object v6, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v6, v6, v7

    const/16 v15, 0x64

    if-ge v6, v15, :cond_27f

    .line 319
    iget-object v6, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    const/16 v15, 0x64

    iget-object v0, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    move-object/from16 v16, v0

    aget v16, v16, v7

    add-int/lit8 v16, v16, 0xa

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    aput v15, v6, v7

    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v6

    if-eqz v6, :cond_27a

    sget-object v6, Lcom/isaigu/gymapp/wearable/NextPlan;->ZONES_BG:[Ljava/lang/String;

    aget-object v6, v6, v7

    :goto_276
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23e

    :cond_27a
    sget-object v6, Lcom/isaigu/gymapp/wearable/NextPlan;->ZONES_EN:[Ljava/lang/String;

    aget-object v6, v6, v7

    goto :goto_276

    .line 321
    :cond_27f
    aget-wide v16, v10, v7

    const-wide v18, 0x3ff599999999999aL    # 1.35

    mul-double v18, v18, v4

    cmpl-double v6, v16, v18

    if-lez v6, :cond_23e

    iget-object v6, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v6, v6, v7

    const/16 v15, 0x14

    if-le v6, v15, :cond_23e

    .line 322
    iget-object v6, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    const/16 v15, 0x14

    iget-object v0, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    move-object/from16 v16, v0

    aget v16, v16, v7

    add-int/lit8 v16, v16, -0x5

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    aput v15, v6, v7

    .line 323
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v6

    if-eqz v6, :cond_2b4

    sget-object v6, Lcom/isaigu/gymapp/wearable/NextPlan;->ZONES_BG:[Ljava/lang/String;

    aget-object v6, v6, v7

    :goto_2b0
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23e

    :cond_2b4
    sget-object v6, Lcom/isaigu/gymapp/wearable/NextPlan;->ZONES_EN:[Ljava/lang/String;

    aget-object v6, v6, v7

    goto :goto_2b0

    .line 327
    :cond_2b9
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_302

    .line 328
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

    .line 330
    :cond_302
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34b

    .line 331
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

    .line 333
    :cond_34b
    invoke-static {v13, v14, v8, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->individual([Ljava/lang/String;Lcom/isaigu/gymapp/wearable/NextPlan$Snap;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;D)D

    move-result-wide v2

    .line 334
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

    iput v2, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    .line 335
    iget-boolean v2, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->assisted:Z

    if-eqz v2, :cond_3a5

    .line 336
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

    .line 339
    :cond_3a5
    iput-object v14, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->next:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    .line 340
    iget v2, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    iget v3, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    if-ne v2, v3, :cond_3d4

    iget v2, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    iget v3, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->work:I

    if-ne v2, v3, :cond_3d4

    iget-object v2, v14, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    iget-object v3, v9, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_3d4

    const/4 v2, 0x1

    :goto_3be
    iput-boolean v2, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->same:Z

    .line 341
    iget-boolean v2, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->same:Z

    if-eqz v2, :cond_3d1

    .line 342
    iget-object v2, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    const-string v3, "\u041a\u0430\u043a\u0442\u043e \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u044f \u043f\u044a\u0442."

    const-string v4, "As last time."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextPlan;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d1
    move-object v2, v8

    .line 344
    goto/16 :goto_7d

    .line 340
    :cond_3d4
    const/4 v2, 0x0

    goto :goto_3be
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

.method private static shorter(ID)I
    .registers 8

    .prologue
    .line 559
    if-gtz p0, :cond_3

    .line 563
    :goto_2
    return p0

    .line 562
    :cond_3
    int-to-double v0, p0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    .line 563
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

.method static zones(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;[II)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 503
    .line 504
    array-length v5, p1

    move v4, v2

    move v3, v2

    :goto_4
    if-ge v4, v5, :cond_45

    aget v6, p1, v4

    .line 505
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v0, v0, v6

    if-gtz v0, :cond_14

    move v0, v3

    .line 504
    :goto_f
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v3, v0

    goto :goto_4

    .line 508
    :cond_14
    if-lez p2, :cond_2f

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v1, v1, v6

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 509
    :goto_21
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v1, v1, v6

    if-eq v0, v1, :cond_43

    const/4 v1, 0x1

    :goto_28
    or-int/2addr v1, v3

    .line 510
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aput v0, v3, v6

    move v0, v1

    goto :goto_f

    .line 508
    :cond_2f
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v0, v0, v6

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->ch:[I

    aget v1, v1, v6

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_21

    :cond_43
    move v1, v2

    .line 509
    goto :goto_28

    .line 512
    :cond_45
    return v3
.end method
