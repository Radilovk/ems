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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->BIG:[I

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->LEGS_GLUTES:[I

    return-void

    .line 20
    nop

    :array_12
    .array-data 4
        0x2
        0x9
        0x8
        0x6
    .end array-data

    .line 21
    :array_1e
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
    .line 198
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u043a\u043e\u0440\u0435\u043c"

    .line 203
    :goto_a
    return-object v0

    .line 199
    :cond_b
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    goto :goto_a

    .line 200
    :cond_16
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "\u0431\u0435\u0434\u0440\u0430"

    goto :goto_a

    .line 201
    :cond_21
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "\u0440\u044a\u0446\u0435"

    goto :goto_a

    .line 202
    :cond_2c
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "\u0433\u0440\u044a\u0431"

    goto :goto_a

    .line 203
    :cond_37
    const-string v0, "\u0433\u044a\u0440\u0434\u0438"

    goto :goto_a
.end method

.method static focusChannels(Ljava/lang/String;)[I
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-array v0, v1, [I

    aput v1, v0, v2

    .line 194
    :goto_e
    return-object v0

    .line 189
    :cond_f
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-array v0, v1, [I

    const/16 v1, 0x8

    aput v1, v0, v2

    goto :goto_e

    .line 190
    :cond_1e
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    goto :goto_e

    .line 191
    :cond_2d
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-array v0, v1, [I

    const/4 v1, 0x4

    aput v1, v0, v2

    goto :goto_e

    .line 192
    :cond_3b
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-array v0, v1, [I

    const/4 v1, 0x6

    aput v1, v0, v2

    goto :goto_e

    .line 193
    :cond_49
    const-string v0, "chest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    new-array v0, v1, [I

    aput v2, v0, v2

    goto :goto_e

    .line 194
    :cond_56
    new-array v0, v2, [I

    goto :goto_e

    .line 190
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
    .line 207
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "abs"

    .line 212
    :goto_a
    return-object v0

    .line 208
    :cond_b
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "glutes"

    goto :goto_a

    .line 209
    :cond_16
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "legs"

    goto :goto_a

    .line 210
    :cond_21
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "arms"

    goto :goto_a

    .line 211
    :cond_2c
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "back"

    goto :goto_a

    .line 212
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
    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
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

    .line 220
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/util/Set;Ljava/util/Set;)Lcom/isaigu/gymapp/ai/AiPersonal$Effect;
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

    .line 76
    new-instance v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;-><init>()V

    .line 77
    if-eqz p0, :cond_8a

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
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

    .line 80
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPersonal;->focusChannels(Ljava/lang/String;)[I

    move-result-object v4

    .line 81
    array-length v5, v4

    if-lez v5, :cond_1f

    .line 82
    const/16 v5, 0xa

    invoke-virtual {v1, v4, v5}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 83
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPersonal;->focusBg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiPersonal;->focusEn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 86
    :cond_47
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 87
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

    .line 90
    :cond_8a
    if-eqz p1, :cond_92

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_94

    :cond_92
    move-object v0, v1

    .line 184
    :goto_93
    return-object v0

    .line 94
    :cond_94
    const-string v0, "prediabetes"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_276

    .line 95
    sget-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->LEGS_GLUTES:[I

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 96
    const-string v0, "\u041f\u0440\u0435\u0434\u0434\u0438\u0430\u0431\u0435\u0442: \u0431\u0435\u0434\u0440\u0430 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 +10 % (\u043d\u0430\u0439-\u0433\u043e\u043b\u044f\u043c\u043e \u0443\u0441\u0432\u043e\u044f\u0432\u0430\u043d\u0435 \u043d\u0430 \u0433\u043b\u044e\u043a\u043e\u0437\u0430)"

    const-string v2, "Prediabetes: thighs and glutes +10 % (most glucose uptake)"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_aa
    :goto_aa
    const-string v0, "menopause"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 103
    sget-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->BIG:[I

    invoke-virtual {v1, v0, v10}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 104
    const-string v0, "\u041c\u0435\u043d\u043e\u043f\u0430\u0443\u0437\u0430: \u0433\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 +5 % (\u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u043a\u043e\u0441\u0442\u0438)"

    const-string v2, "Menopause: big muscles +5 % (muscle and bone)"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_be
    const-string v0, "thyroid"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 107
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 108
    const-string v0, "\u0429\u0438\u0442\u043e\u0432\u0438\u0434\u043d\u0430 \u0436\u043b\u0435\u0437\u0430: \u22125 % \u0441\u0438\u043b\u0430"

    const-string v2, "Thyroid: \u22125 % strength"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_d2
    const-string v0, "water"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 111
    new-array v0, v6, [I

    const/4 v2, 0x3

    aput v2, v0, v7

    const/16 v2, -0xa

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 112
    const-string v0, "\u0417\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0435 \u043d\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0438: \u043f\u0440\u0430\u0441\u0446\u0438 \u221210 %"

    const-string v2, "Water retention: calves \u221210 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_eb
    const-string v0, "postpartum"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 115
    new-array v0, v6, [I

    aput v6, v0, v7

    const/16 v2, -0xf

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 116
    const-string v0, "\u0421\u043b\u0435\u0434 \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442: \u043a\u043e\u0440\u0435\u043c \u221215 %"

    const-string v2, "After pregnancy: abs \u221215 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_103
    const-string v0, "diastasis"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 120
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->zoneMax:[I

    const/16 v2, 0x28

    aput v2, v0, v6

    .line 121
    const-string v0, "\u0414\u0438\u0430\u0441\u0442\u0430\u0437\u0430: \u043a\u043e\u0440\u0435\u043c\u044a\u0442 \u0434\u043e 40 %"

    const-string v2, "Diastasis: abs up to 40 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_118
    const-string v0, "back"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_131

    .line 124
    new-array v0, v6, [I

    const/4 v2, 0x7

    aput v2, v0, v7

    const/16 v2, -0xf

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 125
    const-string v0, "\u041a\u0440\u044a\u0441\u0442: \u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u221215 %"

    const-string v2, "Lower back: lower back \u221215 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_131
    const-string v0, "neck"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 128
    new-array v0, v6, [I

    aput v10, v0, v7

    const/16 v2, -0xf

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 129
    const-string v0, "\u0412\u0440\u0430\u0442 / \u0440\u0430\u043c\u0435\u043d\u0435: \u0442\u0440\u0430\u043f\u0435\u0446 \u221215 %"

    const-string v2, "Neck / shoulders: traps \u221215 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_149
    const-string v0, "knees"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    .line 132
    new-array v0, v6, [I

    aput v11, v0, v7

    const/16 v2, -0xa

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 133
    const-string v0, "\u041a\u043e\u043b\u0435\u043d\u0435: \u043f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e \u221210 %"

    const-string v2, "Knees: front thigh \u221210 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_161
    const-string v0, "varicose"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 136
    new-array v0, v11, [I

    fill-array-data v0, :array_28c

    const/16 v2, -0xa

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 137
    const-string v0, "\u0420\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u0438 \u0432\u0435\u043d\u0438: \u043f\u0440\u0430\u0441\u0446\u0438 \u0438 \u0437\u0430\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e \u221210 %"

    const-string v2, "Varicose veins: calves and back thigh \u221210 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_17a
    const-string v0, "joints"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 140
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 141
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v0, v0, 0xc8

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 142
    const-string v0, "\u0421\u0442\u0430\u0432\u0438: \u22125 %, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v2, "Joints: \u22125 %, softer onset"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_194
    const-string v0, "osteo"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 145
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 146
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v0, v0, 0x12c

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 147
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 148
    const-string v0, "\u041e\u0441\u0442\u0435\u043e\u043f\u043e\u0440\u043e\u0437\u0430: \u22125 %, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "Osteoporosis: \u22125 %, softer, +1 s pause"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1b4
    const-string v0, "desk"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cb

    .line 152
    new-array v0, v11, [I

    fill-array-data v0, :array_294

    invoke-virtual {v1, v0, v10}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 153
    const-string v0, "\u0421\u0435\u0434\u044f\u0449\u0430 \u0440\u0430\u0431\u043e\u0442\u0430: \u0433\u0440\u044a\u0431 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 +5 %"

    const-string v2, "Desk job: back and glutes +5 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_1cb
    const-string v0, "senior"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    .line 156
    sget-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->BIG:[I

    invoke-virtual {v1, v0, v10}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 157
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 158
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v0, v0, 0xc8

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 159
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 160
    const-string v0, "60+ / \u0441\u043b\u0430\u0431\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438: \u0433\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 +5 %, \u22125 % \u0441\u0438\u043b\u0430, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "60+ / low muscle: big muscles +5 %, \u22125 % strength, +1 s pause"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1f0
    const-string v0, "stress"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 164
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    mul-double/2addr v2, v8

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 165
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 166
    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u0438 \u0441\u0442\u0440\u0435\u0441: \u22125 %, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "Tension and stress: \u22125 %, +1 s pause"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_20a
    const-string v0, "sleep"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_229

    .line 169
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 170
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 171
    const-string v0, "\u041b\u043e\u0448 \u0441\u044a\u043d / \u0443\u043c\u043e\u0440\u0430: \u221210 %, +1 s \u043f\u0430\u0443\u0437\u0430"

    const-string v2, "Poor sleep / fatigue: \u221210 %, +1 s pause"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_229
    const-string v0, "sensitive"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_248

    .line 174
    iget-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 175
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    add-int/lit16 v0, v0, 0x12c

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    .line 176
    const-string v0, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d \u043a\u044a\u043c \u0442\u043e\u043a\u0430: \u221210 %, \u043f\u043e-\u043f\u043b\u0430\u0432\u043d\u043e \u0432\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v2, "Sensitive to current: \u221210 %, softer onset"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_248
    const-string v0, "injury"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_257

    .line 179
    const-string v0, "\u0421\u0442\u0430\u0440\u0430 \u0442\u0440\u0430\u0432\u043c\u0430: \u043f\u043e\u043f\u0438\u0442\u0430\u0439 \u043a\u044a\u0434\u0435, \u043f\u0440\u0435\u0434\u0438 \u0441\u0442\u0430\u0440\u0442\u0430"

    const-string v2, "Old injury: ask where before the start"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_257
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->phi:D

    .line 182
    iget v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->offS:I

    .line 183
    const/16 v0, 0x190

    iget v2, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->rampUpMs:I

    move-object v0, v1

    .line 184
    goto/16 :goto_93

    .line 98
    :cond_276
    const-string v0, "pcos"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 99
    sget-object v0, Lcom/isaigu/gymapp/ai/AiPersonal;->LEGS_GLUTES:[I

    invoke-virtual {v1, v0, v10}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->add([II)V

    .line 100
    const-string v0, "\u041f\u041a\u041e\u0421: \u0431\u0435\u0434\u0440\u0430 \u0438 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 +5 %"

    const-string v2, "PCOS: thighs and glutes +5 %"

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/ai/AiPersonal$Effect;->note(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_aa

    .line 136
    :array_28c
    .array-data 4
        0x3
        0x9
    .end array-data

    .line 152
    :array_294
    .array-data 4
        0x6
        0x8
    .end array-data
.end method
