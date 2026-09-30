.class public final Lcom/isaigu/gymapp/ai/AutoTemplates;
.super Ljava/lang/Object;
.source "AutoTemplates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;,
        Lcom/isaigu/gymapp/ai/AutoTemplates$Script;,
        Lcom/isaigu/gymapp/ai/AutoTemplates$At;
    }
.end annotation


# static fields
.field private static final LIGHT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 238
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bodyweight-squat"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lateral-lunge"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "glute-bridge"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "step-down"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "banded-lat-pulldown"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "side-lying-hip-abduction"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fire-hydrant"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "donkey-kick"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "superman"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "incline-push-up"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIGHT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 302
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p0, v1

    .line 303
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 304
    const/4 v0, 0x1

    .line 307
    :cond_e
    return v0

    .line 302
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method static ex(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 94
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 95
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 99
    :goto_10
    return v0

    .line 94
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public static has(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 109
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->prog(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static level(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;Ljava/util/List;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AutoModel$Input;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 143
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->prog(Ljava/lang/String;)I

    move-result v5

    .line 144
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v4, :cond_6e

    move v0, v1

    .line 145
    :goto_e
    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-lt v4, v2, :cond_1a

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/16 v8, 0x0

    cmpg-double v4, v6, v8

    if-gez v4, :cond_78

    :cond_1a
    move v0, v1

    .line 159
    :goto_1b
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->states(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;

    move-result-object v4

    .line 160
    const-string v6, "sensitive"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "stress"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    const-string v6, "sleep"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 161
    :cond_37
    add-int/lit8 v0, v0, -0x1

    .line 163
    :cond_39
    const-string v6, "senior"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    const-string v6, "osteo"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    const-string v6, "postpartum"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 164
    :cond_51
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 166
    :cond_55
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 167
    :goto_5d
    if-ltz v5, :cond_da

    if-ge v0, v2, :cond_da

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v1, v1, v5

    add-int/lit8 v3, v0, -0x1

    aget-object v1, v1, v3

    if-nez v1, :cond_da

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 144
    :cond_6e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v4, :cond_76

    move v0, v2

    goto :goto_e

    :cond_76
    move v0, v3

    goto :goto_e

    .line 147
    :cond_78
    if-eqz p2, :cond_80

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 148
    :cond_80
    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/16 v6, 0xa

    if-ge v4, v6, :cond_8c

    move v4, v3

    :goto_87
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1b

    :cond_8c
    move v4, v2

    goto :goto_87

    .line 150
    :cond_8e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    .line 151
    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->level:I

    .line 152
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 153
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->bad()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 154
    add-int/lit8 v0, v4, -0x1

    goto/16 :goto_1b

    .line 155
    :cond_aa
    if-lt v6, v2, :cond_db

    add-int/lit8 v0, v6, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->good()Z

    move-result v0

    if-eqz v0, :cond_db

    add-int/lit8 v0, v6, -0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->good()Z

    move-result v0

    if-eqz v0, :cond_db

    add-int/lit8 v0, v6, -0x3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->good()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 156
    add-int/lit8 v0, v4, 0x1

    goto/16 :goto_1b

    .line 170
    :cond_da
    return v0

    :cond_db
    move v0, v4

    goto/16 :goto_1b
.end method

.method public static name(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 104
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    .line 105
    if-gez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->BG:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->EN:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method static prog(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 113
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 114
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 118
    :goto_10
    return v0

    .line 113
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method private static rank(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 220
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    .line 221
    if-gez v0, :cond_12

    const-string v0, "stand"

    .line 222
    :goto_8
    const-string v1, "stand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    :goto_11
    return v0

    .line 221
    :cond_12
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->POS:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_8

    .line 222
    :cond_17
    const-string v1, "machine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    goto :goto_11

    :cond_21
    const-string v1, "bench"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x2

    goto :goto_11

    :cond_2b
    const/4 v0, 0x3

    goto :goto_11
.end method

.method public static script(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Ljava/util/List;)Lcom/isaigu/gymapp/ai/AutoTemplates$Script;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AutoModel$Plan;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;",
            ">;)",
            "Lcom/isaigu/gymapp/ai/AutoTemplates$Script;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 268
    if-eqz p0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 269
    :cond_15
    const/4 v0, 0x0

    .line 298
    :goto_16
    return-object v0

    .line 271
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 272
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    .line 273
    invoke-static {v0, v3, p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->level(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;Ljava/util/List;)I

    move-result v4

    .line 274
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->states(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;

    move-result-object v1

    .line 275
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 276
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    if-eqz v6, :cond_33

    .line 277
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 279
    :cond_33
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v6, v7, :cond_48

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    if-eqz v6, :cond_48

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    if-eqz v0, :cond_48

    .line 280
    const-string v0, "chest"

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 282
    :cond_48
    const-string v0, "desk"

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 283
    const-string v0, "back"

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    const-string v0, "glutes"

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 287
    invoke-static {v3, v4, v1, v5, v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->stations(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    .line 288
    invoke-static {v4, v5, v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->warmup(ILjava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v6

    .line 289
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [[Ljava/lang/String;

    move v1, v2

    .line 290
    :goto_76
    array-length v0, v7

    if-ge v1, v0, :cond_b4

    .line 291
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    .line 292
    const-string v8, "WARMUP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 293
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v7, v1

    .line 290
    :cond_95
    :goto_95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_76

    .line 294
    :cond_99
    const-string v8, "MAIN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a9

    const-string v8, "METABOLIC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 295
    :cond_a9
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v7, v1

    goto :goto_95

    .line 298
    :cond_b4
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    invoke-direct {v0, v3, v4, v7}, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;-><init>(Ljava/lang/String;I[[Ljava/lang/String;)V

    goto/16 :goto_16
.end method

.method static sortByPosition(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x1

    move v2, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    .line 228
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    add-int/lit8 v1, v2, -0x1

    move v3, v1

    .line 230
    :goto_11
    if-ltz v3, :cond_32

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->rank(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->rank(Ljava/lang/String;)I

    move-result v4

    if-le v1, v4, :cond_32

    .line 231
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 232
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_11

    .line 234
    :cond_32
    add-int/lit8 v1, v3, 0x1

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 227
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 236
    :cond_3b
    return-void
.end method

.method static states(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AutoModel$Input;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    if-eqz v1, :cond_e

    .line 125
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_e
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    if-eqz v1, :cond_2e

    .line 128
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    if-eqz v1, :cond_1d

    .line 129
    const-string v1, "diastasis"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-lez v1, :cond_2e

    .line 132
    const-string v1, "postpartum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2e
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v2

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v1, v2, v4

    if-gez v1, :cond_48

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_48

    const-string v1, "senior"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 136
    :cond_48
    const-string v1, "joints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_4d
    return-object v0
.end method

.method static stations(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 175
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->prog(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    add-int/lit8 v2, p1, -0x1

    aget-object v3, v0, v2

    .line 176
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 177
    :goto_13
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->COND:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_45

    .line 178
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->COND:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 179
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->AVOID:[[Ljava/lang/String;

    aget-object v5, v2, v0

    array-length v6, v5

    move v2, v1

    :goto_28
    if-ge v2, v6, :cond_32

    aget-object v7, v5, v2

    .line 180
    invoke-interface {p4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 182
    :cond_32
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->INSTEAD:[[Ljava/lang/String;

    aget-object v5, v2, v0

    array-length v6, v5

    move v2, v1

    :goto_38
    if-ge v2, v6, :cond_42

    aget-object v7, v5, v2

    .line 183
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 177
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 187
    :cond_45
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 188
    array-length v6, v3

    move v2, v1

    :goto_4c
    if-ge v2, v6, :cond_83

    aget-object v0, v3, v2

    .line 189
    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 190
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_59
    :goto_59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4c

    .line 193
    :cond_5d
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_61
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_61

    .line 195
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_83
    move v2, v1

    move v0, v1

    .line 201
    :goto_85
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_bb

    const/4 v3, 0x2

    if-ge v0, v3, :cond_bb

    .line 202
    if-eqz p3, :cond_99

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 201
    :cond_99
    :goto_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 205
    :cond_9c
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS_EX:[[Ljava/lang/String;

    aget-object v4, v3, v2

    array-length v6, v4

    move v3, v1

    :goto_a2
    if-ge v3, v6, :cond_99

    aget-object v7, v4, v3

    .line 206
    invoke-interface {p4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b8

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b8

    .line 207
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v0, 0x1

    .line 209
    goto :goto_99

    .line 205
    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 213
    :cond_bb
    const-string v0, "power"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    .line 214
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoTemplates;->sortByPosition(Ljava/util/List;)V

    .line 216
    :cond_ce
    return-object v5
.end method

.method static warmup(ILjava/util/List;Ljava/util/Set;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    const/4 v0, 0x1

    if-le p0, v0, :cond_13

    .line 246
    const-string v0, "jumping-jack"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    const-string v0, "forward-lunge"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_13
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIGHT:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_21

    aget-object v4, v2, v0

    .line 250
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 252
    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v5, :cond_2a

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 255
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 258
    :cond_4c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_50
    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 259
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v5, :cond_50

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 260
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 263
    :cond_72
    return-object v2
.end method
