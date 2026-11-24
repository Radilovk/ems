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
    const/16 v0, 0x8

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

    sput-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS:[Ljava/lang/String;

    .line 20
    const/16 v0, 0x8

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

    sput-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS_BG:[Ljava/lang/String;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_ec

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_f8

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_104

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_110

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_11c

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_128

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_134

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_140

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiWorkout;->IMPULSE:[[I

    .line 33
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

    .line 34
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

    return-void

    .line 23
    nop

    :array_ec
    .array-data 4
        0x7
        0x12c
        0x5
        0x1
    .end array-data

    :array_f8
    .array-data 4
        0x55
        0x15e
        0x4
        0x4
    .end array-data

    :array_104
    .array-data 4
        0x46
        0x15e
        0x5
        0x4
    .end array-data

    :array_110
    .array-data 4
        0x32
        0x12c
        0x6
        0x4
    .end array-data

    :array_11c
    .array-data 4
        0x64
        0x12c
        0x3
        0x4
    .end array-data

    :array_128
    .array-data 4
        0x28
        0x12c
        0x4
        0x3
    .end array-data

    :array_134
    .array-data 4
        0x50
        0x15e
        0x5
        0x4
    .end array-data

    :array_140
    .array-data 4
        0xa
        0xfa
        0x5
        0x2
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

    .line 152
    .line 153
    const/4 v0, 0x1

    move v1, v2

    move v3, v0

    move v4, v2

    .line 154
    :goto_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 155
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/AiWorkout;->block(Lcom/isaigu/gymapp/ai/AiWorkout$Item;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v6

    move v5, v2

    .line 156
    :goto_16
    aget v0, p1, v1

    if-ge v5, v0, :cond_42

    .line 157
    if-nez v3, :cond_2f

    .line 158
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

    .line 160
    :cond_2f
    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    add-int/2addr v4, v0

    .line 156
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v3, v2

    goto :goto_16

    .line 158
    :cond_39
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->restS:I

    goto :goto_2a

    .line 154
    :cond_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 164
    :cond_46
    return v4
.end method

.method static block(Lcom/isaigu/gymapp/ai/AiWorkout$Item;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 11

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 168
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 169
    sget-object v1, Lcom/isaigu/gymapp/ai/AiWorkout;->IMPULSE:[[I

    aget-object v6, v1, v0

    .line 170
    aget v0, v6, v2

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 171
    aget v0, v6, v5

    aget v1, v6, v7

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 172
    iget v1, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->workS:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 173
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const-string v1, "free"

    aget v4, v6, v8

    aget v5, v6, v5

    aget v6, v6, v7

    const/16 v7, 0x64

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 174
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_bb

    .line 177
    sget-object v1, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT_BG:[Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 178
    :goto_63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_be

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    :goto_72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c4

    const-string v2, "body"

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c1

    const-string v2, " \u00b7 "

    :goto_95
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    .line 180
    const-string v1, "core"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 181
    iput-boolean v8, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    .line 182
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 183
    return-object v0

    .line 177
    :cond_bb
    const-string v1, ""

    goto :goto_63

    .line 178
    :cond_be
    const-string v2, ""

    goto :goto_72

    .line 179
    :cond_c1
    const-string v2, ""

    goto :goto_95

    :cond_c4
    const-string v1, ""

    goto :goto_a1
.end method

.method static clampRest(I)I
    .registers 3

    .prologue
    .line 193
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
    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
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

    .line 200
    iget-object v3, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 201
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 202
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

    .line 203
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

    .line 202
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_7f
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    goto :goto_56

    .line 203
    :cond_82
    const-string v0, ""

    goto :goto_73

    .line 205
    :cond_85
    return-object v1
.end method

.method private static num(Ljava/lang/Object;III)I
    .registers 10

    .prologue
    .line 217
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_5

    .line 220
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
    .registers 11

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 59
    :try_start_4
    new-instance v0, Lcom/isaigu/gymapp/ai/AiBrief$Json;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_c} :catch_10f

    move-result-object v1

    .line 63
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_1e

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    const-string v3, "coach"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_1f

    .line 89
    :cond_1e
    :goto_1e
    return-object v2

    .line 66
    :cond_1f
    check-cast v1, Ljava/util/Map;

    const-string v0, "coach"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 67
    new-instance v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;-><init>()V

    .line 68
    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x3c

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiWorkout;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    .line 69
    const-string v1, "blocks"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_104

    .line 70
    const-string v1, "blocks"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_52
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 71
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_52

    iget-object v1, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v5, 0xc

    if-ge v1, v5, :cond_52

    .line 74
    check-cast v0, Ljava/util/Map;

    .line 75
    new-instance v5, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    invoke-direct {v5}, Lcom/isaigu/gymapp/ai/AiWorkout$Item;-><init>()V

    .line 76
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x32

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiWorkout;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->name:Ljava/lang/String;

    .line 77
    const-string v1, "how"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0xa0

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiWorkout;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    .line 78
    const-string v1, "kind"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcom/isaigu/gymapp/ai/AiWorkout;->KINDS:[Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_ff

    const-string v1, "kind"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_a9
    iput-object v1, v5, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    .line 79
    const-string v1, "equipment"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    sget-object v6, Lcom/isaigu/gymapp/ai/AiWorkout;->EQUIPMENT:[Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_101

    :goto_bd
    iput-object v1, v5, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->equipment:Ljava/lang/String;

    .line 81
    const-string v1, "sets"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x4

    invoke-static {v1, v8, v6, v8}, Lcom/isaigu/gymapp/ai/AiWorkout;->num(Ljava/lang/Object;III)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->sets:I

    .line 82
    const-string v1, "work_s"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v6, 0x14

    const/16 v7, 0x2d

    invoke-static {v1, v6, v7, v9}, Lcom/isaigu/gymapp/ai/AiWorkout;->num(Ljava/lang/Object;III)I

    move-result v1

    iput v1, v5, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->workS:I

    .line 83
    const-string v1, "rest_s"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xf

    const/16 v6, 0x5a

    invoke-static {v0, v1, v6, v9}, Lcom/isaigu/gymapp/ai/AiWorkout;->num(Ljava/lang/Object;III)I

    move-result v0

    iput v0, v5, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->restS:I

    .line 84
    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_52

    iget-object v0, v5, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->kind:Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 85
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_52

    :cond_ff
    move-object v1, v2

    .line 78
    goto :goto_a9

    .line 80
    :cond_101
    const-string v1, "body"

    goto :goto_bd

    .line 89
    :cond_104
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    move-object v2, v3

    goto/16 :goto_1e

    .line 60
    :catch_10f
    move-exception v0

    goto/16 :goto_1e
.end method

.method static rest(I)Lcom/isaigu/gymapp/ai/Workout$Block;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 187
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWorkout;->clampRest(I)I

    move-result v2

    const/4 v3, 0x7

    const/16 v4, 0x12c

    const/4 v5, 0x1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 188
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 189
    return-object v0
.end method

.method private static str(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 209
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_7

    .line 210
    const-string v0, ""

    .line 213
    :cond_6
    :goto_6
    return-object v0

    .line 212
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

    .line 213
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

    .line 98
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 99
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    move v1, v3

    .line 100
    :goto_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_165

    .line 101
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->sets:I

    aput v0, v4, v1

    .line 100
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 122
    :cond_24
    aget v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    aput v4, v0, v1

    .line 104
    :goto_2a
    invoke-static {v7, v0, p1}, Lcom/isaigu/gymapp/ai/AiWorkout;->activeSeconds(Ljava/util/List;[ILcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v1

    const/16 v4, 0x4b0

    if-le v1, v4, :cond_162

    .line 105
    const/4 v1, -0x1

    .line 106
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_39
    if-ltz v4, :cond_4b

    .line 107
    aget v5, v0, v4

    if-le v5, v2, :cond_48

    if-ltz v1, :cond_47

    aget v5, v0, v4

    aget v6, v0, v1

    if-le v5, v6, :cond_48

    :cond_47
    move v1, v4

    .line 106
    :cond_48
    add-int/lit8 v4, v4, -0x1

    goto :goto_39

    .line 111
    :cond_4b
    if-gez v1, :cond_24

    .line 112
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_85

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    :goto_5b
    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move v4, v3

    .line 114
    :goto_67
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_87

    .line 115
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

    .line 114
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_67

    :cond_85
    move v1, v3

    .line 112
    goto :goto_5b

    .line 117
    :cond_87
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_15f

    move-object v4, v1

    .line 124
    :goto_8e
    new-instance v9, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v9}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 125
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

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_100

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    :goto_b6
    iput-object v0, v9, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 127
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne v0, v1, :cond_109

    const-string v0, "fat"

    :goto_c0
    iput-object v0, v9, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    move v5, v3

    .line 128
    :goto_c3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_113

    .line 129
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    move v6, v3

    .line 130
    :goto_d0
    aget v1, v4, v5

    if-ge v6, v1, :cond_10f

    .line 131
    iget-object v1, v9, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f3

    .line 132
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

    .line 134
    :cond_f3
    iget-object v1, v9, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AiWorkout;->block(Lcom/isaigu/gymapp/ai/AiWorkout$Item;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_d0

    .line 126
    :cond_100
    const-string v0, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "AI workout"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    .line 127
    :cond_109
    const-string v0, "tone"

    goto :goto_c0

    .line 132
    :cond_10c
    iget v1, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->restS:I

    goto :goto_ec

    .line 128
    :cond_10f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_c3

    .line 138
    :cond_113
    const/16 v0, 0x258

    move v8, v0

    .line 139
    :goto_116
    if-lez v8, :cond_15e

    .line 140
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/16 v4, 0xfa

    const/16 v5, 0xa

    const/4 v6, 0x2

    const/16 v7, 0x3c

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>(Ljava/lang/String;IIIIII)V

    .line 141
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

    .line 142
    const-string v1, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v3, "Recovery"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->label:Ljava/lang/String;

    .line 143
    const-string v1, "\u041b\u0435\u0433\u043d\u0438 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e, \u0434\u0438\u0448\u0430\u0439 \u0431\u0430\u0432\u043d\u043e."

    const-string v3, "Lie still, breathe slowly."

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->how:Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 145
    iget-object v1, v9, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/Workout$Block;->seconds()I

    move-result v0

    sub-int v0, v8, v0

    move v8, v0

    .line 147
    goto :goto_116

    .line 148
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
