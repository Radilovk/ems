.class public final Lcom/isaigu/gymapp/ai/AiPersonal;
.super Ljava/lang/Object;
.source "AiPersonal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiPersonal$Effect;
    }
.end annotation


# static fields
.field private static final BIG:[I

.field static final CH:I = 0xa

.field private static final LEGS_GLUTES:[I

.field public static final TODAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 20
    new-array v0, v4, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->BIG:[I

    .line 21
    new-array v0, v3, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->LEGS_GLUTES:[I

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "t_sleep"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "t_food"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "t_active"

    aput-object v2, v0, v1

    const-string v1, "t_stress"

    aput-object v1, v0, v3

    const-string v1, "t_sore"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "t_period"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->TODAY:[Ljava/lang/String;

    return-void

    .line 20
    :array_32
    .array-data 4
        0x2
        0x9
        0x8
        0x6
    .end array-data

    .line 21
    :array_3e
    .array-data 4
        0x2
        0x9
        0x8
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static focusBg(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u043a\u043e\u0440\u0435\u043c"

    .line 272
    :goto_a
    return-object v0

    .line 268
    :cond_b
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    goto :goto_a

    .line 269
    :cond_16
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "\u0431\u0435\u0434\u0440\u0430"

    goto :goto_a

    .line 270
    :cond_21
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "\u0440\u044a\u0446\u0435"

    goto :goto_a

    .line 271
    :cond_2c
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "\u0433\u0440\u044a\u0431"

    goto :goto_a

    .line 272
    :cond_37
    const-string v0, "\u0433\u044a\u0440\u0434\u0438"

    goto :goto_a
.end method

.method static focusChannels(Ljava/lang/String;)[I
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-array v0, v1, [I

    aput v1, v0, v2

    .line 263
    :goto_e
    return-object v0

    .line 258
    :cond_f
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-array v0, v1, [I

    const/16 v1, 0x8

    aput v1, v0, v2

    goto :goto_e

    .line 259
    :cond_1e
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    goto :goto_e

    .line 260
    :cond_2d
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-array v0, v1, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    goto :goto_e

    .line 261
    :cond_3b
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-array v0, v1, [I

    const/4 v1, 0x6

    aput v1, v0, v2

    goto :goto_e

    .line 262
    :cond_49
    const-string v0, "chest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    new-array v0, v1, [I

    aput v2, v0, v2

    goto :goto_e

    .line 263
    :cond_56
    new-array v0, v2, [I

    goto :goto_e

    .line 259
    nop

    :array_5a
    .array-data 4
        0x2
        0x9
    .end array-data
.end method

.method private static focusEn(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "abs"

    .line 281
    :goto_a
    return-object v0

    .line 277
    :cond_b
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "glutes"

    goto :goto_a

    .line 278
    :cond_16
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "legs"

    goto :goto_a

    .line 279
    :cond_21
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "arms"

    goto :goto_a

    .line 280
    :cond_2c
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "back"

    goto :goto_a

    .line 281
    :cond_37
    const-string v0, "chest"

    goto :goto_a
.end method

.method private static join(Ljava/util/List;)Ljava/lang/String;
    .registers 5
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
    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_25

    const-string v1, ", "

    :goto_1d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_25
    const-string v1, ""

    goto :goto_1d

    .line 289
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/isaigu/gymapp/ai/AiPersonal$Effect;"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/AiPersonal;->of(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/isaigu/gymapp/ai/AiPersonal$Effect;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-wide v10, 0x3fee666666666666L    # 0.95

    const/4 v8, 0x1

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    .line 102
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiPersonal;->ofProfile(Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    move-result-object v0

    .line 103
    if-eqz p2, :cond_18

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 141
    :cond_18
    :goto_18
    return-object v0

    .line 106
    :cond_19
    const-string v1, "t_sleep"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 107
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v6

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 108
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 109
    const-string v1, "\u0414\u043d\u0435\u0441: \u043d\u0435\u0434\u043e\u0441\u043f\u0438\u0432\u0430\u043d\u0435 \u2014 \u221210 %, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "Today: short on sleep \u2014 \u221210 %, +1 s pause"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_33
    const-string v1, "t_food"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 112
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    const-wide v4, 0x3fed70a3d70a3d71L    # 0.92

    mul-double/2addr v2, v4

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 113
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 114
    const-string v1, "\u0414\u043d\u0435\u0441: \u043c\u0430\u043b\u043a\u043e \u0445\u0440\u0430\u043d\u0430 \u2014 \u22128 %, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "Today: little food \u2014 \u22128 %, +1 s pause"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_52
    const-string v1, "t_active"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 117
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v6

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 118
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v1, v1, 0xc8

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 119
    const-string v1, "\u0414\u043d\u0435\u0441: \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0435\u043d \u0434\u0435\u043d \u2014 \u221210 %, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v2, "Today: heavy day \u2014 \u221210 %, softer onset"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_6c
    const-string v1, "t_stress"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 122
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v10

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 123
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 124
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v1, v1, 0xc8

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 125
    const-string v1, "\u0414\u043d\u0435\u0441: \u0441\u0442\u0440\u0435\u0441 \u2014 \u22125 %, +1 s \u043f\u0430\u0443\u0437\u0430, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e"

    const-string v2, "Today: stress \u2014 \u22125 %, +1 s pause, softer"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_8c
    const-string v1, "t_sore"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 128
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v6

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 129
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v1, v1, 0x12c

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 130
    const-string v1, "\u0414\u043d\u0435\u0441: \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0442\u0440\u0435\u0441\u043a\u0430 \u2014 \u221210 %, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v2, "Today: sore muscles \u2014 \u221210 %, softer onset"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_a6
    const-string v1, "t_period"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 133
    new-array v1, v8, [I

    aput v8, v1, v9

    const/16 v2, -0x1e

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 134
    new-array v1, v8, [I

    const/4 v2, 0x7

    aput v2, v1, v9

    const/16 v2, -0xa

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 135
    iget-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v10

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 136
    const-string v1, "\u0414\u043d\u0435\u0441: \u0446\u0438\u043a\u044a\u043b \u2014 \u043a\u043e\u0440\u0435\u043c \u221230 %, \u043a\u0440\u044a\u0441\u0442 \u221210 %, \u22125 %"

    const-string v2, "Today: period \u2014 abs \u221230 %, lower back \u221210 %, \u22125 %"

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_cd
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    iget-wide v4, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 139
    const/4 v1, 0x2

    iget v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 140
    const/16 v1, 0x190

    iget v2, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    goto/16 :goto_18
.end method

.method private static ofProfile(Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/isaigu/gymapp/ai/AiPersonal$Effect;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v7, 0x0

    const-wide v8, 0x3fee666666666666L    # 0.95

    const/4 v6, 0x1

    .line 145
    new-instance v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;-><init>()V

    .line 146
    if-eqz p0, :cond_8a

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPersonal;->focusChannels(Ljava/lang/String;)[I

    move-result-object v4

    .line 150
    array-length v5, v4

    if-lez v5, :cond_1f

    .line 151
    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 152
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPersonal;->focusBg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPersonal;->focusEn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 155
    :cond_47
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0410\u043a\u0446\u0435\u043d\u0442: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPersonal;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " +10 %"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiPersonal;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " +10 %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_8a
    if-eqz p1, :cond_92

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_94

    :cond_92
    move-object v0, v1

    .line 253
    :goto_93
    return-object v0

    .line 163
    :cond_94
    const-string v0, "prediabetes"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_276

    .line 164
    sget-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->LEGS_GLUTES:[I

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 165
    const-string v0, "\u041f\u0440\u0435\u0434\u0434\u0438\u0430\u0431\u0435\u0442: \u0431\u0435\u0434\u0440\u0430 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 +10 % (\u043d\u0430\u0439-\u0433\u043e\u043b\u044f\u043c\u043e \u0443\u0441\u0432\u043e\u044f\u0432\u0430\u043d\u0435 \u043d\u0430 \u0433\u043b\u044e\u043a\u043e\u0437\u0430)"

    const-string v2, "Prediabetes: thighs and glutes +10 % (most glucose uptake)"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_aa
    :goto_aa
    const-string v0, "menopause"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 172
    sget-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->BIG:[I

    invoke-virtual {v1, v0, v10}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 173
    const-string v0, "\u041c\u0435\u043d\u043e\u043f\u0430\u0443\u0437\u0430: \u0433\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 +5 % (\u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043a\u043e\u0441\u0442\u0438)"

    const-string v2, "Menopause: big muscles +5 % (muscle and bone)"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_be
    const-string v0, "thyroid"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 176
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 177
    const-string v0, "\u0429\u0438\u0442\u043e\u0432\u0438\u0434\u043d\u0430 \u0436\u043b\u0435\u0437\u0430: \u22125 % \u0441\u0438\u043b\u0430"

    const-string v2, "Thyroid: \u22125 % strength"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_d2
    const-string v0, "water"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 180
    new-array v0, v6, [I

    const/4 v2, 0x3

    aput v2, v0, v7

    const/16 v2, -0xa

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 181
    const-string v0, "\u0417\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0435 \u043d\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0438: \u043f\u0440\u0430\u0441\u0446\u0438 \u221210 %"

    const-string v2, "Water retention: calves \u221210 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_eb
    const-string v0, "postpartum"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 184
    new-array v0, v6, [I

    aput v6, v0, v7

    const/16 v2, -0xf

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 185
    const-string v0, "\u0421\u043b\u0435\u0434 \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442: \u043a\u043e\u0440\u0435\u043c \u221215 %"

    const-string v2, "After pregnancy: abs \u221215 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_103
    const-string v0, "diastasis"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 189
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneMax:[I

    const/16 v2, 0x28

    aput v2, v0, v6

    .line 190
    const-string v0, "\u0414\u0438\u0430\u0441\u0442\u0430\u0437\u0430: \u043a\u043e\u0440\u0435\u043c\u044a\u0442 \u0434\u043e 40 %"

    const-string v2, "Diastasis: abs up to 40 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_118
    const-string v0, "back"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 193
    new-array v0, v6, [I

    const/4 v2, 0x7

    aput v2, v0, v7

    const/16 v2, -0xf

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 194
    const-string v0, "\u041a\u0440\u044a\u0441\u0442: \u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u221215 %"

    const-string v2, "Lower back: lower back \u221215 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_131
    const-string v0, "neck"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 197
    new-array v0, v6, [I

    aput v10, v0, v7

    const/16 v2, -0xf

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 198
    const-string v0, "\u0412\u0440\u0430\u0442 / \u0440\u0430\u043c\u0435\u043d\u0435: \u0442\u0440\u0430\u043f\u0435\u0446 \u221215 %"

    const-string v2, "Neck / shoulders: traps \u221215 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_149
    const-string v0, "knees"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 201
    new-array v0, v6, [I

    aput v11, v0, v7

    const/16 v2, -0xa

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 202
    const-string v0, "\u041a\u043e\u043b\u0435\u043d\u0435: \u043f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e \u221210 %"

    const-string v2, "Knees: front thigh \u221210 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_161
    const-string v0, "varicose"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 205
    new-array v0, v11, [I

    fill-array-data v0, :array_28c

    const/16 v2, -0xa

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 206
    const-string v0, "\u0420\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u0438 \u0432\u0435\u043d\u0438: \u043f\u0440\u0430\u0441\u0446\u0438 \u0438 \u0437\u0430\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e \u221210 %"

    const-string v2, "Varicose veins: calves and back thigh \u221210 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_17a
    const-string v0, "joints"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 209
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 210
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v0, v0, 0xc8

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 211
    const-string v0, "\u0421\u0442\u0430\u0432\u0438: \u22125 %, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v2, "Joints: \u22125 %, softer onset"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_194
    const-string v0, "osteo"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 214
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 215
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v0, v0, 0x12c

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 216
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 217
    const-string v0, "\u041e\u0441\u0442\u0435\u043e\u043f\u043e\u0440\u043e\u0437\u0430: \u22125 %, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "Osteoporosis: \u22125 %, softer, +1 s pause"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1b4
    const-string v0, "desk"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 221
    new-array v0, v11, [I

    fill-array-data v0, :array_294

    invoke-virtual {v1, v0, v10}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 222
    const-string v0, "\u0421\u0435\u0434\u044f\u0449\u0430 \u0440\u0430\u0431\u043e\u0442\u0430: \u0433\u0440\u044a\u0431 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 +5 %"

    const-string v2, "Desk job: back and glutes +5 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_1cb
    const-string v0, "senior"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    .line 225
    sget-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->BIG:[I

    invoke-virtual {v1, v0, v10}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 226
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 227
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v0, v0, 0xc8

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 228
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 229
    const-string v0, "60+ / \u0441\u043b\u0430\u0431\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438: \u0433\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 +5 %, \u22125 % \u0441\u0438\u043b\u0430, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "60+ / low muscle: big muscles +5 %, \u22125 % strength, +1 s pause"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1f0
    const-string v0, "stress"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 233
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 234
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 235
    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u0438 \u0441\u0442\u0440\u0435\u0441: \u22125 %, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "Tension and stress: \u22125 %, +1 s pause"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_20a
    const-string v0, "sleep"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_229

    .line 238
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 239
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 240
    const-string v0, "\u041b\u043e\u0448 \u0441\u044a\u043d / \u0443\u043c\u043e\u0440\u0430: \u221210 %, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "Poor sleep / fatigue: \u221210 %, +1 s pause"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_229
    const-string v0, "sensitive"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_248

    .line 243
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 244
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v0, v0, 0x12c

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 245
    const-string v0, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d \u043a\u044a\u043c \u0442\u043e\u043a\u0430: \u221210 %, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v2, "Sensitive to current: \u221210 %, softer onset"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_248
    const-string v0, "injury"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_257

    .line 248
    const-string v0, "\u0421\u0442\u0430\u0440\u0430 \u0442\u0440\u0430\u0432\u043c\u0430: \u043f\u043e\u043f\u0438\u0442\u0430\u0439 \u043a\u044a\u0434\u0435, \u043f\u0440\u0435\u0434\u0438 \u0441\u0442\u0430\u0440\u0442\u0430"

    const-string v2, "Old injury: ask where before the start"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_257
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 251
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 252
    const/16 v0, 0x190

    iget v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    move-object v0, v1

    .line 253
    goto/16 :goto_93

    .line 167
    :cond_276
    const-string v0, "pcos"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 168
    sget-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->LEGS_GLUTES:[I

    invoke-virtual {v1, v0, v10}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 169
    const-string v0, "\u041f\u041a\u041e\u0421: \u0431\u0435\u0434\u0440\u0430 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 +5 %"

    const-string v2, "PCOS: thighs and glutes +5 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_aa

    .line 205
    :array_28c
    .array-data 4
        0x3
        0x9
    .end array-data

    .line 221
    :array_294
    .array-data 4
        0x6
        0x8
    .end array-data
.end method

.method public static periodApplies(Lcom/isaigu/gymapp/ai/AiModel$Sex;ILjava/util/Set;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AiModel$Sex;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne p0, v0, :cond_18

    const/16 v0, 0xc

    if-lt p1, v0, :cond_18

    const/16 v0, 0x37

    if-gt p1, v0, :cond_18

    if-eqz p2, :cond_16

    const-string v0, "menopause"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static todayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    const-string v0, "t_sleep"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041d\u0435\u0434\u043e\u0441\u043f\u0430\u043b(\u0430)"

    const-string v1, "Short on sleep"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 85
    :cond_10
    :goto_10
    return-object p0

    .line 80
    :cond_11
    const-string v0, "t_food"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u0425\u0430\u043f\u043d\u0430\u043b(\u0430) \u043c\u0430\u043b\u043a\u043e"

    const-string v1, "Ate little"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 81
    :cond_22
    const-string v0, "t_active"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u041d\u0430\u0442\u043e\u0432\u0430\u0440\u0435\u043d \u0434\u0435\u043d"

    const-string v1, "Heavy day"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 82
    :cond_33
    const-string v0, "t_stress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0421\u0442\u0440\u0435\u0441 / \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435"

    const-string v1, "Stress / tension"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 83
    :cond_44
    const-string v0, "t_sore"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0442\u0440\u0435\u0441\u043a\u0430"

    const-string v1, "Sore muscles"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 84
    :cond_55
    const-string v0, "t_period"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u041c\u0435\u0441\u0435\u0447\u0435\u043d \u0446\u0438\u043a\u044a\u043b"

    const-string v1, "Period"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10
.end method
