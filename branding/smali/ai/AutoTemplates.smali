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
    .line 257
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

    .line 321
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p0, v1

    .line 322
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 323
    const/4 v0, 0x1

    .line 326
    :cond_e
    return v0

    .line 321
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
    .line 128
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

.method public static idAt(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    if-ltz p0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static index(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 110
    if-nez p0, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
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

    .line 162
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->prog(Ljava/lang/String;)I

    move-result v5

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v4, :cond_6e

    move v0, v1

    .line 164
    :goto_e
    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-lt v4, v2, :cond_1a

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/16 v8, 0x0

    cmpg-double v4, v6, v8

    if-gez v4, :cond_78

    :cond_1a
    move v0, v1

    .line 178
    :goto_1b
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->states(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;

    move-result-object v4

    .line 179
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

    .line 180
    :cond_37
    add-int/lit8 v0, v0, -0x1

    .line 182
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

    .line 183
    :cond_51
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 185
    :cond_55
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 186
    :goto_5d
    if-ltz v5, :cond_da

    if-ge v0, v2, :cond_da

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v1, v1, v5

    add-int/lit8 v3, v0, -0x1

    aget-object v1, v1, v3

    if-nez v1, :cond_da

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 163
    :cond_6e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v4, :cond_76

    move v0, v2

    goto :goto_e

    :cond_76
    move v0, v3

    goto :goto_e

    .line 166
    :cond_78
    if-eqz p2, :cond_80

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 167
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

    .line 169
    :cond_8e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    .line 170
    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->level:I

    .line 171
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 172
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->bad()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 173
    add-int/lit8 v0, v4, -0x1

    goto/16 :goto_1b

    .line 174
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

    .line 175
    add-int/lit8 v0, v4, 0x1

    goto/16 :goto_1b

    .line 189
    :cond_da
    return v0

    :cond_db
    move v0, v4

    goto/16 :goto_1b
.end method

.method public static met(I)D
    .registers 3

    .prologue
    .line 119
    if-ltz p0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    aget-wide v0, v0, p0

    :goto_b
    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_b
.end method

.method public static muscles(I)[I
    .registers 2

    .prologue
    .line 124
    if-ltz p0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MUS:[[I

    array-length v0, v0

    if-ge p0, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MUS:[[I

    aget-object v0, v0, p0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
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
    .line 132
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 133
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 137
    :goto_10
    return v0

    .line 132
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method private static rank(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 239
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    .line 240
    if-gez v0, :cond_12

    const-string v0, "stand"

    .line 241
    :goto_8
    const-string v1, "stand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    :goto_11
    return v0

    .line 240
    :cond_12
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->POS:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_8

    .line 241
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

    .line 287
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

    .line 288
    :cond_15
    const/4 v0, 0x0

    .line 317
    :goto_16
    return-object v0

    .line 290
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 291
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    .line 292
    invoke-static {v0, v3, p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->level(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;Ljava/util/List;)I

    move-result v4

    .line 293
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->states(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;

    move-result-object v1

    .line 294
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 295
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    if-eqz v6, :cond_33

    .line 296
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 298
    :cond_33
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v6, v7, :cond_48

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    if-eqz v6, :cond_48

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    if-eqz v0, :cond_48

    .line 299
    const-string v0, "chest"

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 301
    :cond_48
    const-string v0, "desk"

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 302
    const-string v0, "back"

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    const-string v0, "glutes"

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 306
    invoke-static {v3, v4, v1, v5, v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->stations(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    .line 307
    invoke-static {v4, v5, v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->warmup(ILjava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v6

    .line 308
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [[Ljava/lang/String;

    move v1, v2

    .line 309
    :goto_76
    array-length v0, v7

    if-ge v1, v0, :cond_b4

    .line 310
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    .line 311
    const-string v8, "WARMUP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 312
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v7, v1

    .line 309
    :cond_95
    :goto_95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_76

    .line 313
    :cond_99
    const-string v8, "MAIN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a9

    const-string v8, "METABOLIC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 314
    :cond_a9
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v7, v1

    goto :goto_95

    .line 317
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
    .line 246
    const/4 v0, 0x1

    move v2, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    .line 247
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    add-int/lit8 v1, v2, -0x1

    move v3, v1

    .line 249
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

    .line 250
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 251
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_11

    .line 253
    :cond_32
    add-int/lit8 v1, v3, 0x1

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 246
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 255
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
    .line 142
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    if-eqz v1, :cond_e

    .line 144
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 146
    :cond_e
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    if-eqz v1, :cond_2e

    .line 147
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    if-eqz v1, :cond_1d

    .line 148
    const-string v1, "diastasis"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-lez v1, :cond_2e

    .line 151
    const-string v1, "postpartum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
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

    .line 155
    :cond_48
    const-string v1, "joints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
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

    .line 194
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->prog(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    add-int/lit8 v2, p1, -0x1

    aget-object v3, v0, v2

    .line 195
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 196
    :goto_13
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->COND:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_45

    .line 197
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->COND:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 198
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->AVOID:[[Ljava/lang/String;

    aget-object v5, v2, v0

    array-length v6, v5

    move v2, v1

    :goto_28
    if-ge v2, v6, :cond_32

    aget-object v7, v5, v2

    .line 199
    invoke-interface {p4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 201
    :cond_32
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->INSTEAD:[[Ljava/lang/String;

    aget-object v5, v2, v0

    array-length v6, v5

    move v2, v1

    :goto_38
    if-ge v2, v6, :cond_42

    aget-object v7, v5, v2

    .line 202
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 196
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 206
    :cond_45
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 207
    array-length v6, v3

    move v2, v1

    :goto_4c
    if-ge v2, v6, :cond_83

    aget-object v0, v3, v2

    .line 208
    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5d

    .line 209
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_59
    :goto_59
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4c

    .line 212
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

    .line 213
    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_61

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_61

    .line 214
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_83
    move v2, v1

    move v0, v1

    .line 220
    :goto_85
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_bb

    const/4 v3, 0x2

    if-ge v0, v3, :cond_bb

    .line 221
    if-eqz p3, :cond_99

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 220
    :cond_99
    :goto_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 224
    :cond_9c
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS_EX:[[Ljava/lang/String;

    aget-object v4, v3, v2

    array-length v6, v4

    move v3, v1

    :goto_a2
    if-ge v3, v6, :cond_99

    aget-object v7, v4, v3

    .line 225
    invoke-interface {p4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b8

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b8

    .line 226
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    .line 228
    goto :goto_99

    .line 224
    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_a2

    .line 232
    :cond_bb
    const-string v0, "power"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    .line 233
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoTemplates;->sortByPosition(Ljava/util/List;)V

    .line 235
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

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    const/4 v0, 0x1

    if-le p0, v0, :cond_13

    .line 265
    const-string v0, "jumping-jack"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v0, "forward-lunge"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_13
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIGHT:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_21

    aget-object v4, v2, v0

    .line 269
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 271
    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
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

    .line 273
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v5, :cond_2a

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 274
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 277
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

    .line 278
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v5, :cond_50

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 279
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 282
    :cond_72
    return-object v2
.end method
