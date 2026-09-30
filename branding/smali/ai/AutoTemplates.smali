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
.field public static final LIB_BASE:I = 0x3e8

.field private static final LIB_IDS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIB_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIB_MET:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIB_MUS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private static final LIB_TEXT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIGHT:[Ljava/lang/String;

.field public static final MACHINE:Ljava/lang/String; = "elliptical"

.field private static final NO_MACHINE:[Ljava/lang/String;

.field public static volatile noCardioMachine:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "jumping-jack"

    aput-object v1, v0, v3

    const-string v1, "step-down"

    aput-object v1, v0, v4

    const-string v1, "lateral-lunge"

    aput-object v1, v0, v5

    const-string v1, "bodyweight-squat"

    aput-object v1, v0, v6

    const-string v1, "forward-lunge"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dumbbell-sumo-squat"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "goblet-squat"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "banded-lat-pulldown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "glute-bridge"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->NO_MACHINE:[Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_IDS:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_INDEX:Ljava/util/Map;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_TEXT:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_MET:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_MUS:Ljava/util/List;

    .line 345
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bodyweight-squat"

    aput-object v1, v0, v3

    const-string v1, "lateral-lunge"

    aput-object v1, v0, v4

    const-string v1, "glute-bridge"

    aput-object v1, v0, v5

    const-string v1, "step-down"

    aput-object v1, v0, v6

    const-string v1, "banded-lat-pulldown"

    aput-object v1, v0, v7

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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 500
    array-length v2, p0

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p0, v1

    .line 501
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 502
    const/4 v0, 0x1

    .line 505
    :cond_e
    return v0

    .line 500
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static easier(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 434
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v0

    .line 435
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v2

    .line 436
    if-nez v2, :cond_c

    .line 456
    :cond_b
    :goto_b
    return-object p0

    .line 439
    :cond_c
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->mainChannel([I)I

    move-result v4

    .line 440
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v6

    .line 441
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->position(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    const/4 v2, -0x1

    move v3, v1

    .line 443
    :goto_1a
    const/4 v0, 0x2

    if-ge v3, v0, :cond_70

    if-gez v2, :cond_70

    move v0, v1

    .line 444
    :goto_20
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_6c

    .line 445
    sget-object v8, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_59

    sget-object v8, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MUS:[[I

    aget-object v8, v8, v0

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoTemplates;->mainChannel([I)I

    move-result v8

    if-ne v8, v4, :cond_59

    sget-object v8, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    aget-wide v8, v8, v0

    cmpl-double v8, v8, v6

    if-gez v8, :cond_59

    if-eqz p1, :cond_4d

    sget-object v8, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    aget-object v8, v8, v0

    .line 447
    invoke-interface {p1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_59

    :cond_4d
    if-nez v3, :cond_5c

    sget-object v8, Lcom/isaigu/gymapp/ai/AutoTemplateData;->POS:[Ljava/lang/String;

    aget-object v8, v8, v0

    .line 448
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5c

    .line 444
    :cond_59
    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 451
    :cond_5c
    if-ltz v2, :cond_6a

    sget-object v8, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    aget-wide v8, v8, v0

    sget-object v10, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    aget-wide v10, v10, v2

    cmpl-double v8, v8, v10

    if-lez v8, :cond_59

    :cond_6a
    move v2, v0

    .line 452
    goto :goto_59

    .line 443
    :cond_6c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1a

    .line 456
    :cond_70
    if-ltz v2, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    aget-object p0, v0, v2

    goto :goto_b
.end method

.method static ex(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 149
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 150
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 154
    :goto_10
    return v0

    .line 149
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public static has(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 214
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

.method public static declared-synchronized idAt(I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 181
    const-class v1, Lcom/isaigu/gymapp/ai/AutoTemplates;

    monitor-enter v1

    const/16 v2, 0x3e8

    if-lt p0, v2, :cond_1e

    .line 182
    add-int/lit16 v2, p0, -0x3e8

    :try_start_a
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_IDS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_IDS:Ljava/util/List;

    add-int/lit16 v2, p0, -0x3e8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2a

    .line 184
    :cond_1c
    :goto_1c
    monitor-exit v1

    return-object v0

    :cond_1e
    if-ltz p0, :cond_1c

    :try_start_20
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    array-length v2, v2

    if-ge p0, v2, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    aget-object v0, v0, p0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2a

    goto :goto_1c

    .line 181
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static index(Ljava/lang/String;)I
    .registers 3

    .prologue
    const/4 v0, -0x1

    .line 169
    if-nez p0, :cond_4

    .line 177
    :cond_3
    :goto_3
    return v0

    .line 172
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v1

    .line 173
    if-ltz v1, :cond_c

    move v0, v1

    .line 174
    goto :goto_3

    .line 176
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->lib(Ljava/lang/String;)I

    move-result v1

    .line 177
    if-ltz v1, :cond_3

    add-int/lit16 v0, v1, 0x3e8

    goto :goto_3
.end method

.method public static declared-synchronized known(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 140
    const-class v1, Lcom/isaigu/gymapp/ai/AutoTemplates;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_INDEX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_16

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    const/4 v0, 0x1

    :goto_12
    monitor-exit v1

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
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

    .line 248
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->prog(Ljava/lang/String;)I

    move-result v5

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v4, :cond_6e

    move v0, v1

    .line 250
    :goto_e
    iget v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-lt v4, v2, :cond_1a

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/16 v8, 0x0

    cmpg-double v4, v6, v8

    if-gez v4, :cond_78

    :cond_1a
    move v0, v1

    .line 264
    :goto_1b
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->states(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;

    move-result-object v4

    .line 265
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

    .line 266
    :cond_37
    add-int/lit8 v0, v0, -0x1

    .line 268
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

    .line 269
    :cond_51
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 271
    :cond_55
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 272
    :goto_5d
    if-ltz v5, :cond_da

    if-ge v0, v2, :cond_da

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v1, v1, v5

    add-int/lit8 v3, v0, -0x1

    aget-object v1, v1, v3

    if-nez v1, :cond_da

    .line 273
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 249
    :cond_6e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v4, :cond_76

    move v0, v2

    goto :goto_e

    :cond_76
    move v0, v3

    goto :goto_e

    .line 252
    :cond_78
    if-eqz p2, :cond_80

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 253
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

    .line 255
    :cond_8e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;

    .line 256
    iget v4, v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->level:I

    .line 257
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    .line 258
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;->bad()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 259
    add-int/lit8 v0, v4, -0x1

    goto/16 :goto_1b

    .line 260
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

    .line 261
    add-int/lit8 v0, v4, 0x1

    goto/16 :goto_1b

    .line 275
    :cond_da
    return v0

    :cond_db
    move v0, v4

    goto/16 :goto_1b
.end method

.method private static declared-synchronized lib(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 144
    const-class v1, Lcom/isaigu/gymapp/ai/AutoTemplates;

    monitor-enter v1

    if-eqz p0, :cond_15

    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_INDEX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 145
    :goto_d
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_19

    move-result v0

    :goto_13
    monitor-exit v1

    return v0

    .line 144
    :cond_15
    const/4 v0, 0x0

    goto :goto_d

    .line 145
    :cond_17
    const/4 v0, -0x1

    goto :goto_13

    .line 144
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static mainChannel([I)I
    .registers 5

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 420
    const/4 v0, 0x1

    :goto_2
    array-length v2, p0

    if-ge v0, v2, :cond_f

    .line 421
    aget v2, p0, v0

    aget v3, p0, v1

    if-le v2, v3, :cond_c

    move v1, v0

    .line 420
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 425
    :cond_f
    return v1
.end method

.method public static declared-synchronized met(I)D
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 189
    const-class v2, Lcom/isaigu/gymapp/ai/AutoTemplates;

    monitor-enter v2

    const/16 v3, 0x3e8

    if-lt p0, v3, :cond_23

    .line 190
    add-int/lit16 v3, p0, -0x3e8

    :try_start_b
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_MET:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_MET:Ljava/util/List;

    add-int/lit16 v1, p0, -0x3e8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_2f

    move-result-wide v0

    .line 192
    :cond_21
    :goto_21
    monitor-exit v2

    return-wide v0

    :cond_23
    if-ltz p0, :cond_21

    :try_start_25
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    array-length v3, v3

    if-ge p0, v3, :cond_21

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    aget-wide v0, v0, p0
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_21

    .line 189
    :catchall_2f
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized muscles(I)[I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 197
    const-class v1, Lcom/isaigu/gymapp/ai/AutoTemplates;

    monitor-enter v1

    const/16 v2, 0x3e8

    if-lt p0, v2, :cond_1e

    .line 198
    add-int/lit16 v2, p0, -0x3e8

    :try_start_a
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_MUS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_MUS:Ljava/util/List;

    add-int/lit16 v2, p0, -0x3e8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2a

    .line 200
    :cond_1c
    :goto_1c
    monitor-exit v1

    return-object v0

    :cond_1e
    if-ltz p0, :cond_1c

    :try_start_20
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MUS:[[I

    array-length v2, v2

    if-ge p0, v2, :cond_1c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MUS:[[I

    aget-object v0, v0, p0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2a

    goto :goto_1c

    .line 197
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static name(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 159
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    .line 160
    if-ltz v0, :cond_13

    .line 161
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->BG:[Ljava/lang/String;

    aget-object v1, v1, v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->EN:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_12
    return-object v0

    .line 163
    :cond_13
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->lib(Ljava/lang/String;)I

    move-result v1

    .line 164
    if-gez v1, :cond_1c

    const-string v0, ""

    goto :goto_12

    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_TEXT:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_TEXT:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static position(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 205
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    .line 206
    if-ltz v0, :cond_b

    .line 207
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->POS:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 210
    :goto_a
    return-object v0

    .line 209
    :cond_b
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->lib(Ljava/lang/String;)I

    move-result v0

    .line 210
    if-gez v0, :cond_14

    const-string v0, "stand"

    goto :goto_a

    :cond_14
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_TEXT:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_a
.end method

.method static prog(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 218
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 219
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->PROGRAMS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 223
    :goto_10
    return v0

    .line 218
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_14
    const/4 v0, -0x1

    goto :goto_10
.end method

.method public static programForAi(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 490
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne p1, v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_e

    .line 491
    :cond_c
    const/4 v0, 0x0

    .line 496
    :goto_d
    return-object v0

    .line 493
    :cond_e
    const/16 v0, 0x41

    if-lt p2, v0, :cond_15

    .line 494
    const-string v0, "senior"

    goto :goto_d

    .line 496
    :cond_15
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne p0, v0, :cond_1c

    const-string v0, "cardio"

    goto :goto_d

    :cond_1c
    const-string v0, "general"

    goto :goto_d
.end method

.method private static rank(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 328
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->position(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    const-string v1, "stand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const-string v1, "machine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    goto :goto_d

    :cond_18
    const-string v1, "bench"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x2

    goto :goto_d

    :cond_22
    const/4 v0, 0x3

    goto :goto_d
.end method

.method public static declared-synchronized register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[I)V
    .registers 11

    .prologue
    .line 129
    const-class v1, Lcom/isaigu/gymapp/ai/AutoTemplates;

    monitor-enter v1

    if-eqz p0, :cond_1a

    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->ex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_INDEX:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p6, :cond_1a

    array-length v0, p6
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_50

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1c

    .line 137
    :cond_1a
    :goto_1a
    monitor-exit v1

    return-void

    .line 132
    :cond_1c
    :try_start_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_INDEX:Ljava/util/Map;

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_IDS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_IDS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_TEXT:Ljava/util/List;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_MET:Ljava/util/List;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIB_MUS:Ljava/util/List;

    invoke-interface {v0, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_1c .. :try_end_4f} :catchall_50

    goto :goto_1a

    .line 129
    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static safer(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 464
    if-eqz p1, :cond_9

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    move-object v0, p0

    .line 484
    :cond_a
    :goto_a
    return-object v0

    .line 467
    :cond_b
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->easier(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 471
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->index(Ljava/lang/String;)I

    move-result v0

    .line 472
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->muscles(I)[I

    move-result-object v2

    .line 473
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->met(I)D

    move-result-wide v4

    .line 474
    if-eqz v2, :cond_46

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoTemplates;->mainChannel([I)I

    move-result v0

    .line 476
    :goto_27
    const/4 v2, 0x0

    move v3, v1

    :goto_29
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_62

    .line 477
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MUS:[[I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->mainChannel([I)I

    move-result v1

    if-eq v1, v0, :cond_48

    .line 476
    :cond_42
    :goto_42
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_29

    :cond_46
    move v0, v1

    .line 474
    goto :goto_27

    .line 480
    :cond_48
    if-ltz v3, :cond_60

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    aget-wide v6, v1, v2

    sub-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoTemplateData;->MET:[D

    aget-wide v8, v1, v3

    sub-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v1, v6, v8

    if-gez v1, :cond_42

    :cond_60
    move v3, v2

    .line 481
    goto :goto_42

    .line 484
    :cond_62
    if-ltz v3, :cond_69

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->IDS:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_a

    :cond_69
    const-string v0, "glute-bridge"

    goto :goto_a
.end method

.method public static script(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Ljava/util/List;)Lcom/isaigu/gymapp/ai/AutoTemplates$Script;
    .registers 5
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
    .line 375
    if-eqz p0, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 376
    :cond_14
    const/4 v0, 0x0

    .line 382
    :goto_15
    return-object v0

    .line 378
    :cond_16
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 379
    const/4 v0, 0x0

    move v1, v0

    :goto_20
    array-length v0, v2

    if-ge v1, v0, :cond_33

    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 379
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    .line 382
    :cond_33
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    invoke-static {v0, v1, v2, p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->scriptFor(Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Input;[Ljava/lang/String;Ljava/util/List;)Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    move-result-object v0

    goto :goto_15
.end method

.method public static scriptFor(Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Input;[Ljava/lang/String;Ljava/util/List;)Lcom/isaigu/gymapp/ai/AutoTemplates$Script;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/ai/AutoModel$Input;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoTemplates$Outcome;",
            ">;)",
            "Lcom/isaigu/gymapp/ai/AutoTemplates$Script;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 387
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 388
    :cond_b
    const/4 v0, 0x0

    .line 415
    :goto_c
    return-object v0

    .line 390
    :cond_d
    invoke-static {p1, p0, p3}, Lcom/isaigu/gymapp/ai/AutoTemplates;->level(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;Ljava/util/List;)I

    move-result v3

    .line 391
    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AutoTemplates;->states(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/Set;

    move-result-object v0

    .line 392
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 393
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    if-eqz v4, :cond_23

    .line 394
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 396
    :cond_23
    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v4, v5, :cond_38

    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    if-eqz v4, :cond_38

    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    if-eqz v4, :cond_38

    .line 397
    const-string v4, "chest"

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 399
    :cond_38
    const-string v4, "desk"

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 400
    const-string v4, "back"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v4, "glutes"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_50
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 404
    invoke-static {p0, v3, v0, v1, v4}, Lcom/isaigu/gymapp/ai/AutoTemplates;->stations(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    .line 405
    invoke-static {v3, v5, v4}, Lcom/isaigu/gymapp/ai/AutoTemplates;->warmup(ILjava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v6

    .line 406
    array-length v0, p2

    new-array v7, v0, [[Ljava/lang/String;

    move v1, v2

    .line 407
    :goto_61
    array-length v0, v7

    if-ge v1, v0, :cond_97

    .line 408
    aget-object v0, p2, v1

    .line 409
    const-string v8, "WARMUP"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 410
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v7, v1

    .line 407
    :cond_78
    :goto_78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_61

    .line 411
    :cond_7c
    const-string v8, "MAIN"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8c

    const-string v8, "METABOLIC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 412
    :cond_8c
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v7, v1

    goto :goto_78

    .line 415
    :cond_97
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;

    invoke-direct {v0, p0, v3, v7, v4}, Lcom/isaigu/gymapp/ai/AutoTemplates$Script;-><init>(Ljava/lang/String;I[[Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_c
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
    .line 334
    const/4 v0, 0x1

    move v2, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    .line 335
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    add-int/lit8 v1, v2, -0x1

    move v3, v1

    .line 337
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

    .line 338
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 339
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_11

    .line 341
    :cond_32
    add-int/lit8 v1, v3, 0x1

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 334
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 343
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
    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    if-eqz v1, :cond_e

    .line 230
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 232
    :cond_e
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    if-eqz v1, :cond_2e

    .line 233
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    if-eqz v1, :cond_1d

    .line 234
    const-string v1, "diastasis"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_1d
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v2, :cond_2e

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-lez v1, :cond_2e

    .line 237
    const-string v1, "postpartum"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
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

    .line 241
    :cond_48
    const-string v1, "joints"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_4d
    return-object v0
.end method

.method static stations(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .registers 16
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

    .line 280
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->prog(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    add-int/lit8 v2, p1, -0x1

    aget-object v4, v0, v2

    .line 281
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 282
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->noCardioMachine:Z

    if-eqz v0, :cond_1b

    .line 283
    const-string v0, "elliptical"

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1b
    move v0, v1

    .line 285
    :goto_1c
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->COND:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4e

    .line 286
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->COND:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 287
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->AVOID:[[Ljava/lang/String;

    aget-object v3, v2, v0

    array-length v6, v3

    move v2, v1

    :goto_31
    if-ge v2, v6, :cond_3b

    aget-object v7, v3, v2

    .line 288
    invoke-interface {p4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 290
    :cond_3b
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->INSTEAD:[[Ljava/lang/String;

    aget-object v3, v2, v0

    array-length v6, v3

    move v2, v1

    :goto_41
    if-ge v2, v6, :cond_4b

    aget-object v7, v3, v2

    .line 291
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 285
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 295
    :cond_4e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 296
    array-length v7, v4

    move v3, v1

    :goto_55
    if-ge v3, v7, :cond_98

    aget-object v0, v4, v3

    .line 297
    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 298
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_62
    :goto_62
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_55

    .line 301
    :cond_66
    const-string v2, "elliptical"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoTemplates;->NO_MACHINE:[Ljava/lang/String;

    :goto_70
    array-length v8, v0

    move v2, v1

    :goto_72
    if-ge v2, v8, :cond_62

    aget-object v9, v0, v2

    .line 302
    invoke-interface {p4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_95

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_95

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/ai/AutoTemplates;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_95

    .line 303
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 301
    :cond_8c
    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_70

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    :cond_98
    move v2, v1

    move v0, v1

    .line 309
    :goto_9a
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_d0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_d0

    .line 310
    if-eqz p3, :cond_ae

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b1

    .line 309
    :cond_ae
    :goto_ae
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 313
    :cond_b1
    sget-object v3, Lcom/isaigu/gymapp/ai/AutoTemplateData;->FOCUS_EX:[[Ljava/lang/String;

    aget-object v4, v3, v2

    array-length v5, v4

    move v3, v1

    :goto_b7
    if-ge v3, v5, :cond_ae

    aget-object v7, v4, v3

    .line 314
    invoke-interface {p4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_cd

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_cd

    .line 315
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v0, v0, 0x1

    .line 317
    goto :goto_ae

    .line 313
    :cond_cd
    add-int/lit8 v3, v3, 0x1

    goto :goto_b7

    .line 321
    :cond_d0
    const-string v0, "power"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    const-string v0, "cardio"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 322
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AutoTemplates;->sortByPosition(Ljava/util/List;)V

    .line 324
    :cond_e3
    return-object v6
.end method

.method public static usesMachine(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoTemplates;->prog(Ljava/lang/String;)I

    move-result v1

    .line 37
    if-gez v1, :cond_8

    .line 45
    :cond_7
    :goto_7
    return v0

    .line 40
    :cond_8
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplateData;->STATIONS:[[[Ljava/lang/String;

    aget-object v2, v2, v1

    array-length v3, v2

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    .line 41
    if-eqz v4, :cond_1e

    const-string v5, "elliptical"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoTemplates;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 42
    const/4 v0, 0x1

    goto :goto_7

    .line 40
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
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

    .line 351
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 352
    const/4 v0, 0x1

    if-le p0, v0, :cond_13

    .line 353
    const-string v0, "jumping-jack"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v0, "forward-lunge"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_13
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoTemplates;->LIGHT:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_21

    aget-object v4, v2, v0

    .line 357
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 359
    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 360
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

    .line 361
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v5, :cond_2a

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 362
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 365
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

    .line 366
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v5, :cond_50

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 367
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 370
    :cond_72
    return-object v2
.end method
