.class public final Lcom/isaigu/gymapp/ai/AiWorkout;
.super Ljava/lang/Object;
.source "AiWorkout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiWorkout$Plan;,
        Lcom/isaigu/gymapp/ai/AiWorkout$Item;
    }
.end annotation


# static fields
.field public static final ACTIVE_MAX_S:I = 0x4b0

.field public static final EQUIPMENT:[Ljava/lang/String;

.field public static final EQUIPMENT_BG:[Ljava/lang/String;

.field static final IMPULSE:[[I

.field public static final KINDS:[Ljava/lang/String;

.field public static final KINDS_BG:[Ljava/lang/String;

.field public static final RECOVERY_S:I = 0x258

.field static final REST_LABEL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "warmup"

    aput-object v1, v0, v4

    const-string v1, "strength"

    aput-object v1, v0, v5

    const-string v1, "hypertrophy"

    aput-object v1, v0, v6

    const-string v1, "endurance"

    aput-object v1, v0, v7

    const-string v1, "power"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "cardio"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "core"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mobility"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "tone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS:[Ljava/lang/String;

    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0437\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    aput-object v1, v0, v4

    const-string v1, "\u0441\u0438\u043b\u0430"

    aput-object v1, v0, v5

    const-string v1, "\u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    aput-object v1, v0, v6

    const-string v1, "\u0438\u0437\u0434\u0440\u044a\u0436\u043b\u0438\u0432\u043e\u0441\u0442"

    aput-object v1, v0, v7

    const-string v1, "\u0435\u043a\u0441\u043f\u043b\u043e\u0437\u0438\u0432\u043d\u043e\u0441\u0442"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "\u043a\u0430\u0440\u0434\u0438\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u043a\u043e\u0440"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u043c\u043e\u0431\u0438\u043b\u043d\u043e\u0441\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0442\u043e\u043d\u0443\u0441"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS_BG:[Ljava/lang/String;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_10a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_116

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_122

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_12e

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_13a

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_146

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_152

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_15e

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_16a

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->IMPULSE:[[I

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v4

    const-string v1, "mat"

    aput-object v1, v0, v5

    const-string v1, "dumbbells"

    aput-object v1, v0, v6

    const-string v1, "kettlebell"

    aput-object v1, v0, v7

    const-string v1, "barbell"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "band"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ball"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "step"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT:[Ljava/lang/String;

    .line 37
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u043e \u0442\u044f\u043b\u043e"

    aput-object v1, v0, v4

    const-string v1, "\u043f\u043e\u0441\u0442\u0435\u043b\u043a\u0430"

    aput-object v1, v0, v5

    const-string v1, "\u0434\u044a\u043c\u0431\u0435\u043b\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u043f\u0443\u0434\u043e\u0432\u043a\u0430"

    aput-object v1, v0, v7

    const-string v1, "\u0449\u0430\u043d\u0433\u0430"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "\u043b\u0430\u0441\u0442\u0438\u043a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0442\u043e\u043f\u043a\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0441\u0442\u0435\u043f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT_BG:[Ljava/lang/String;

    .line 219
    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "Active recovery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->REST_LABEL:Ljava/lang/String;

    return-void

    .line 23
    :array_10a
    .array-data 4
        0x7
        0x12c
        0x5
        0x1
    .end array-data

    :array_116
    .array-data 4
        0x55
        0x15e
        0x4
        0x4
    .end array-data

    :array_122
    .array-data 4
        0x46
        0x15e
        0x5
        0x4
    .end array-data

    :array_12e
    .array-data 4
        0x32
        0x12c
        0x6
        0x4
    .end array-data

    :array_13a
    .array-data 4
        0x64
        0x12c
        0x3
        0x4
    .end array-data

    :array_146
    .array-data 4
        0x7
        0x12c
        0x8
        0x1
    .end array-data

    :array_152
    .array-data 4
        0x50
        0x15e
        0x5
        0x4
    .end array-data

    :array_15e
    .array-data 4
        0xa
        0xfa
        0x5
        0x2
    .end array-data

    :array_16a
    .array-data 4
        0x28
        0x12c
        0x4
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activeSeconds(Ljava/util/List;[ILcom/isaigu/gymapp/ai/AutoModel$Input;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AiWorkout$Item;",
            ">;[I",
            "Lcom/isaigu/gymapp/ai/AutoModel$Input;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    .line 159
    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    move v4, v2

    .line 160
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 161
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/AiWorkout;->block(Lcom/isaigu/gymapp/ai/AiWorkout$Item;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v6

    move v5, v2

    .line 162
    :goto_16
    aget v0, p1, v1

    if-ge v5, v0, :cond_42

    .line 163
    if-nez v3, :cond_2f

    .line 164
    if-lez v1, :cond_39

    if-nez v5, :cond_39

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->restS:I

    :goto_2a
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWorkout;->clampRest(I)I

    move-result v0

    add-int/2addr v4, v0

    .line 166
    :cond_2f
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v4, v0

    .line 162
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v3, v2

    goto :goto_16

    .line 164
    :cond_39
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->restS:I

    goto :goto_2a

    .line 160
    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 170
    :cond_46
    return v4
.end method

.method static block(Lcom/isaigu/gymapp/ai/AiWorkout$Item;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 16

    .prologue
    const/16 v7, 0x64

    const/4 v13, 0x3

    const/4 v2, 0x0

    const/4 v12, 0x1

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 175
    sget-object v1, Lcom/isaigu/gymapp/ai/AiWorkout;->IMPULSE:[[I

    aget-object v1, v1, v0

    .line 176
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->hz:I

    if-lez v0, :cond_e0

    iget v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->hz:I

    :goto_1b
    iget v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 177
    const/4 v0, 0x2

    aget v5, v1, v0

    .line 178
    aget v6, v1, v13

    .line 179
    const/16 v0, 0x32

    if-lt v3, v0, :cond_33

    .line 180
    const/4 v0, 0x6

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 182
    :cond_33
    const/16 v0, 0x14

    if-lt v3, v0, :cond_47

    .line 183
    int-to-double v8, v5

    const-wide v10, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 185
    :cond_47
    if-lt v3, v7, :cond_e4

    aget v0, v1, v12

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 186
    :goto_51
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    .line 187
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->workS:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 188
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const-string v1, "free"

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 189
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 190
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_e8

    .line 192
    sget-object v1, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT_BG:[Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 193
    :goto_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_eb

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    :goto_97
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f1

    const-string v2, "body"

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f1

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ee

    const-string v2, " \u00b7 "

    :goto_ba
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c6
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    .line 195
    const-string v1, "core"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 196
    iput-boolean v12, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    .line 197
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 198
    return-object v0

    .line 176
    :cond_e0
    aget v0, v1, v2

    goto/16 :goto_1b

    .line 185
    :cond_e4
    aget v4, v1, v12

    goto/16 :goto_51

    .line 192
    :cond_e8
    const-string v1, ""

    goto :goto_88

    .line 193
    :cond_eb
    const-string v2, ""

    goto :goto_97

    .line 194
    :cond_ee
    const-string v2, ""

    goto :goto_ba

    :cond_f1
    const-string v1, ""

    goto :goto_c6
.end method

.method static clampRest(I)I
    .registers 3

    .prologue
    .line 222
    const/16 v0, 0xa

    const/16 v1, 0xb4

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static lines(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AiWorkout$Plan;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    .line 229
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 230
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->sets:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00d7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->workS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s \u00b7 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ltz v3, :cond_7f

    sget-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS_BG:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    if-lez v4, :cond_82

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u00b7 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT_BG:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_7f
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    goto :goto_56

    .line 232
    :cond_82
    const-string v0, ""

    goto :goto_73

    .line 234
    :cond_85
    return-object v1
.end method

.method private static num(Ljava/lang/Object;III)I
    .registers 10

    .prologue
    .line 246
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_5

    .line 249
    :goto_4
    return p3

    :cond_5
    int-to-long v0, p1

    int-to-long v2, p2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_4
.end method

.method public static parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiWorkout$Plan;
    .registers 12

    .prologue
    const/16 v10, 0x1e

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 64
    :try_start_5
    new-instance v0, Lcom/isaigu/gymapp/ai/AiBrief$Json;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_d} :catch_12a

    move-result-object v1

    .line 68
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_1f

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    const-string v4, "coach"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_20

    .line 95
    :cond_1f
    :goto_1f
    return-object v2

    .line 71
    :cond_20
    check-cast v1, Ljava/util/Map;

    const-string v0, "coach"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 72
    new-instance v4, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;-><init>()V

    .line 73
    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v5, 0x3c

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiWorkout;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    .line 74
    const-string v1, "blocks"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_11f

    .line 75
    const-string v1, "blocks"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_53
    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 76
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_53

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v6, 0xc

    if-ge v1, v6, :cond_53

    .line 79
    check-cast v0, Ljava/util/Map;

    .line 80
    new-instance v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    invoke-direct {v6}, Lcom/isaigu/gymapp/ai/AiWorkout$Item;-><init>()V

    .line 81
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v7, 0x32

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiWorkout;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->name:Ljava/lang/String;

    .line 82
    const-string v1, "how"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v7, 0xa0

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiWorkout;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    .line 83
    const-string v1, "kind"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS:[Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_118

    const-string v1, "kind"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_aa
    iput-object v1, v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    .line 84
    const-string v1, "equipment"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 85
    sget-object v7, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT:[Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_11a

    :goto_be
    iput-object v1, v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    .line 86
    const-string v1, "sets"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x4

    invoke-static {v1, v9, v7, v9}, Lcom/isaigu/gymapp/ai/AiWorkout;->num(Ljava/lang/Object;III)I

    move-result v1

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->sets:I

    .line 87
    const-string v1, "work_s"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v7, 0x14

    const/16 v8, 0x2d

    invoke-static {v1, v7, v8, v10}, Lcom/isaigu/gymapp/ai/AiWorkout;->num(Ljava/lang/Object;III)I

    move-result v1

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->workS:I

    .line 88
    const-string v1, "rest_s"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v7, 0xf

    const/16 v8, 0x5a

    invoke-static {v1, v7, v8, v10}, Lcom/isaigu/gymapp/ai/AiWorkout;->num(Ljava/lang/Object;III)I

    move-result v1

    iput v1, v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->restS:I

    .line 89
    const-string v1, "hz"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_11d

    const-string v1, "hz"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v0, v9, v1, v3}, Lcom/isaigu/gymapp/ai/AiWorkout;->num(Ljava/lang/Object;III)I

    move-result v0

    :goto_103
    iput v0, v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->hz:I

    .line 90
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_53

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 91
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_53

    :cond_118
    move-object v1, v2

    .line 83
    goto :goto_aa

    .line 85
    :cond_11a
    const-string v1, "body"

    goto :goto_be

    :cond_11d
    move v0, v3

    .line 89
    goto :goto_103

    .line 95
    :cond_11f
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    move-object v2, v4

    goto/16 :goto_1f

    .line 65
    :catch_12a
    move-exception v0

    goto/16 :goto_1f
.end method

.method static rest(I)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 9

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 207
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWorkout;->clampRest(I)I

    move-result v0

    .line 208
    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 209
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const-string v1, "free"

    const/4 v3, 0x6

    const/16 v4, 0xfa

    const/16 v7, 0x32

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 210
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 211
    sget-object v1, Lcom/isaigu/gymapp/ai/AiWorkout;->REST_LABEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    .line 212
    const-string v1, "\u0414\u0438\u0448\u0430\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e, \u0440\u0430\u0437\u0434\u0432\u0438\u0436\u0438 \u0441\u0435 \u043b\u0435\u043a\u043e \u2014 \u043b\u0435\u043a \u0438\u043c\u043f\u0443\u043b\u0441 \u0437\u0430 \u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435."

    const-string v2, "Breathe, move gently \u2014 a light impulse to let go."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    .line 214
    iput-boolean v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    .line 215
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 216
    return-object v0
.end method

.method private static str(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 238
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_7

    .line 239
    const-string v0, ""

    .line 242
    :cond_6
    :goto_6
    return-object v0

    .line 241
    :cond_7
    check-cast p0, Ljava/lang/String;

    const-string v0, "[\\u0000-\\u001f\\u007f]"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static toWorkout(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    move v1, v3

    .line 106
    :goto_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_165

    .line 107
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->sets:I

    aput v0, v4, v1

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 128
    :cond_24
    aget v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    aput v4, v0, v1

    .line 110
    :goto_2a
    invoke-static {v7, v0, p1}, Lcom/isaigu/gymapp/ai/AiWorkout;->activeSeconds(Ljava/util/List;[ILcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v1

    const/16 v4, 0x4b0

    if-le v1, v4, :cond_162

    .line 111
    const/4 v1, -0x1

    .line 112
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_39
    if-ltz v4, :cond_4b

    .line 113
    aget v5, v0, v4

    if-le v5, v2, :cond_48

    if-ltz v1, :cond_47

    aget v5, v0, v4

    aget v6, v0, v1

    if-le v5, v6, :cond_48

    :cond_47
    move v1, v4

    .line 112
    :cond_48
    add-int/lit8 v4, v4, -0x1

    goto :goto_39

    .line 117
    :cond_4b
    if-gez v1, :cond_24

    .line 118
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_85

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_5b
    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 119
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move v4, v3

    .line 120
    :goto_67
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_87

    .line 121
    aget v5, v1, v4

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->sets:I

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v1, v4

    .line 120
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_67

    :cond_85
    move v1, v3

    .line 118
    goto :goto_5b

    .line 123
    :cond_87
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_15f

    move-object v4, v1

    .line 130
    :goto_8e
    new-instance v9, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v9}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ai:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_100

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    :goto_b6
    iput-object v0, v9, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne v0, v1, :cond_109

    const-string v0, "fat"

    :goto_c0
    iput-object v0, v9, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    move v5, v3

    .line 134
    :goto_c3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_113

    .line 135
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    move v6, v3

    .line 136
    :goto_d0
    aget v1, v4, v5

    if-ge v6, v1, :cond_10f

    .line 137
    iget-object v1, v9, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f3

    .line 138
    iget-object v8, v9, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    if-lez v5, :cond_10c

    if-nez v6, :cond_10c

    add-int/lit8 v1, v5, -0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->restS:I

    :goto_ec
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWorkout;->rest(I)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_f3
    iget-object v1, v9, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AiWorkout;->block(Lcom/isaigu/gymapp/ai/AiWorkout$Item;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_d0

    .line 132
    :cond_100
    const-string v0, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "AI workout"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 133
    :cond_109
    const-string v0, "tone"

    goto :goto_c0

    .line 138
    :cond_10c
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->restS:I

    goto :goto_ec

    .line 134
    :cond_10f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_c3

    .line 144
    :cond_113
    const/16 v0, 0x258

    move v8, v0

    .line 145
    :goto_116
    if-lez v8, :cond_15e

    .line 146
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/16 v4, 0xfa

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/16 v7, 0x3c

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 147
    const/4 v1, 0x3

    const/16 v3, 0x28

    iget v4, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    iget v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    add-int/2addr v4, v5

    div-int v4, v8, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 148
    const-string v1, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v3, "Recovery"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    .line 149
    const-string v1, "\u041b\u0435\u0433\u043d\u0438 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e, \u0434\u0438\u0448\u0430\u0439 \u0431\u0430\u0432\u043d\u043e."

    const-string v3, "Lie still, breathe slowly."

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    .line 150
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 151
    iget-object v1, v9, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    sub-int v0, v8, v0

    move v8, v0

    .line 153
    goto :goto_116

    .line 154
    :cond_15e
    return-object v9

    :cond_15f
    move-object v0, v1

    goto/16 :goto_2a

    :cond_162
    move-object v4, v0

    goto/16 :goto_8e

    :cond_165
    move-object v0, v4

    goto/16 :goto_2a
.end method
