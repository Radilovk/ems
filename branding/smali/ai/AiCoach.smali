.class public final Lcom/isaigu/gymapp/ai/AiCoach;
.super Ljava/lang/Object;
.source "AiCoach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiCoach$Turn;,
        Lcom/isaigu/gymapp/ai/AiCoach$Reply;
    }
.end annotation


# static fields
.field static final ACTIONS:[Ljava/lang/String;

.field public static final ADVICE:[Ljava/lang/String;

.field public static final ADVICE_BG:[Ljava/lang/String;

.field static final COND_ALL:[Ljava/lang/String;

.field public static final CONTRA:[Ljava/lang/String;

.field static final CONTRA_ALL:[Ljava/lang/String;

.field public static final CONTRA_BG:[Ljava/lang/String;

.field static final FOCUS_ALL:[Ljava/lang/String;

.field static final GOAL_BG:[Ljava/lang/String;

.field public static final HEALTH:[Ljava/lang/String;

.field public static final HEALTH_BG:[Ljava/lang/String;

.field static final TODAY_ALL:[Ljava/lang/String;

.field private static advice:[Ljava/lang/String;

.field private static final chat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AiCoach$Turn;",
            ">;"
        }
    .end annotation
.end field

.field private static final condAtStart:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final condLearned:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "knees"

    aput-object v1, v0, v3

    const-string v1, "back"

    aput-object v1, v0, v4

    const-string v1, "neck"

    aput-object v1, v0, v5

    const-string v1, "joints"

    aput-object v1, v0, v6

    const-string v1, "diabetes"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "insulin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hypertension"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "heart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thyroid"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "varicose"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "osteo"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "postpartum"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "diastasis"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "menopause"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "beta_blocker"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "anticoag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u043a\u043e\u043b\u0435\u043d\u0435"

    aput-object v1, v0, v3

    const-string v1, "\u0433\u0440\u044a\u0431 / \u043a\u0440\u044a\u0441\u0442"

    aput-object v1, v0, v4

    const-string v1, "\u0432\u0440\u0430\u0442"

    aput-object v1, v0, v5

    const-string v1, "\u0441\u0442\u0430\u0432\u0438"

    aput-object v1, v0, v6

    const-string v1, "\u0434\u0438\u0430\u0431\u0435\u0442"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0438\u043d\u0441\u0443\u043b\u0438\u043d / \u0445\u0430\u043f\u0447\u0435\u0442\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0432\u0438\u0441\u043e\u043a\u043e \u043a\u0440\u044a\u0432\u043d\u043e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0441\u044a\u0440\u0446\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0449\u0438\u0442\u043e\u0432\u0438\u0434\u043d\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0440\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u0438 \u0432\u0435\u043d\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u043e\u0441\u0442\u0435\u043e\u043f\u043e\u0440\u043e\u0437\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u0441\u043b\u0435\u0434 \u0440\u0430\u0436\u0434\u0430\u043d\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u0434\u0438\u0430\u0441\u0442\u0430\u0437\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u043c\u0435\u043d\u043e\u043f\u0430\u0443\u0437\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u0431\u0435\u0442\u0430-\u0431\u043b\u043e\u043a\u0435\u0440"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u0440\u0430\u0437\u0440\u0435\u0436\u0434\u0430\u0449\u0438 \u043a\u0440\u044a\u0432\u0442\u0430"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pregnancy"

    aput-object v1, v0, v3

    const-string v1, "implant"

    aput-object v1, v0, v4

    const-string v1, "epilepsy"

    aput-object v1, v0, v5

    const-string v1, "cancer"

    aput-object v1, v0, v6

    const-string v1, "recent_surgery"

    aput-object v1, v0, v7

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442"

    aput-object v1, v0, v3

    const-string v1, "\u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440 / \u0438\u043c\u043f\u043b\u0430\u043d\u0442"

    aput-object v1, v0, v4

    const-string v1, "\u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f"

    aput-object v1, v0, v5

    const-string v1, "\u043e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u044f"

    aput-object v1, v0, v6

    const-string v1, "\u0441\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f"

    aput-object v1, v0, v7

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    .line 38
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "menopause"

    aput-object v1, v0, v3

    const-string v1, "prediabetes"

    aput-object v1, v0, v4

    const-string v1, "diabetes"

    aput-object v1, v0, v5

    const-string v1, "insulin"

    aput-object v1, v0, v6

    const-string v1, "pcos"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "thyroid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "water"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "postpartum"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "back"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "neck"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "knees"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "joints"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "injury"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "diastasis"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "osteo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "varicose"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "desk"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "stress"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sleep"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "senior"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sensitive"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hypertension"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "heart"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "anticoag"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "beta_blocker"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "obesity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->COND_ALL:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "t_sleep"

    aput-object v1, v0, v3

    const-string v1, "t_food"

    aput-object v1, v0, v4

    const-string v1, "t_active"

    aput-object v1, v0, v5

    const-string v1, "t_stress"

    aput-object v1, v0, v6

    const-string v1, "t_sore"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "t_period"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "t_gentle"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->TODAY_ALL:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "abs"

    aput-object v1, v0, v3

    const-string v1, "glutes"

    aput-object v1, v0, v4

    const-string v1, "legs"

    aput-object v1, v0, v5

    const-string v1, "arms"

    aput-object v1, v0, v6

    const-string v1, "back"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "chest"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->FOCUS_ALL:[Ljava/lang/String;

    .line 43
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pregnancy"

    aput-object v1, v0, v3

    const-string v1, "implant"

    aput-object v1, v0, v4

    const-string v1, "cardiovascular"

    aput-object v1, v0, v5

    const-string v1, "circulation"

    aput-object v1, v0, v6

    const-string v1, "hernia"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cancer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bleeding"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "epilepsy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "neurological"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "recent_surgery"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "skin_lesion"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "kidney"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "tuberculosis"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_ALL:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0441\u0442\u044f\u0433\u0430\u043d\u0435"

    aput-object v1, v0, v3

    const-string v1, "\u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    aput-object v1, v0, v4

    const-string v1, "\u0440\u0435\u043b\u0430\u043a\u0441"

    aput-object v1, v0, v5

    const-string v1, "\u0434\u0440\u0435\u043d\u0430\u0436"

    aput-object v1, v0, v6

    const-string v1, "\u0446\u0435\u043b\u0443\u043b\u0438\u0442"

    aput-object v1, v0, v7

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->GOAL_BG:[Ljava/lang/String;

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "softer"

    aput-object v1, v0, v3

    const-string v1, "stronger"

    aput-object v1, v0, v4

    const-string v1, "pause"

    aput-object v1, v0, v5

    const-string v1, "resume"

    aput-object v1, v0, v6

    const-string v1, "continue"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "to_cooldown"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "double_on"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "double_off"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->ACTIONS:[Ljava/lang/String;

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "exercise"

    aput-object v1, v0, v3

    const-string v1, "load"

    aput-object v1, v0, v4

    const-string v1, "rest"

    aput-object v1, v0, v5

    const-string v1, "equipment"

    aput-object v1, v0, v6

    const-string v1, "before"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "during"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "after"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0423\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    aput-object v1, v0, v3

    const-string v1, "\u041d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435"

    aput-object v1, v0, v4

    const-string v1, "\u0412 \u043f\u043e\u0447\u0438\u0432\u043a\u0438\u0442\u0435"

    aput-object v1, v0, v5

    const-string v1, "\u0422\u0435\u0436\u0435\u0441\u0442"

    aput-object v1, v0, v6

    const-string v1, "\u041f\u0440\u0435\u0434\u0438"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u041f\u043e \u0432\u0440\u0435\u043c\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0421\u043b\u0435\u0434"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE_BG:[Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static advice()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 125
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    return-object v0
.end method

.method public static adviceLines()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 449
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    if-nez v0, :cond_b

    move-object v0, v1

    .line 457
    :goto_a
    return-object v0

    .line 452
    :cond_b
    const/4 v0, 0x0

    :goto_c
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4b

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4b

    .line 453
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_48

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_48

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE_BG:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_4b
    move-object v0, v1

    .line 457
    goto :goto_a
.end method

.method public static aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V
    .registers 6

    .prologue
    .line 155
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 156
    :goto_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hasQuestion()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_59

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4d

    .line 160
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hasQuestion()Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/isaigu/gymapp/ai/AiCoach$Turn;-><init>(ZLjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_4d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->advice:[Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 163
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->advice:[Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    .line 165
    :cond_55
    return-void

    .line 155
    :cond_56
    const-string v0, ""

    goto :goto_6

    .line 157
    :cond_59
    const-string v0, ""

    goto :goto_2a
.end method

.method public static anyHealth(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 413
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_6
    if-ge v2, v4, :cond_16

    aget-object v5, v3, v2

    .line 414
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 423
    :cond_12
    :goto_12
    return v0

    .line 413
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 418
    :cond_16
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1a
    if-ge v2, v4, :cond_31

    aget-object v5, v3, v2

    .line 419
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_31
    move v0, v1

    .line 423
    goto :goto_12
.end method

.method public static apply(Lcom/isaigu/gymapp/ai/AiCoach$Reply;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AiCoach$Reply;",
            "Lcom/isaigu/gymapp/ai/AiModel$SessionInput;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    if-nez p0, :cond_a

    move-object v0, v1

    .line 386
    :goto_9
    return-object v0

    .line 315
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->contraAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 317
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiCoach;->nameOf(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 321
    :cond_43
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->condAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_49
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 323
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiCoach;->nameOf(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_68
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    const-string v3, "beta_blocker"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 327
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    .line 329
    :cond_79
    const-string v3, "insulin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 330
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    const-string v3, "diabetes"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    const-string v3, "diabetes"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 334
    :cond_90
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->condRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_96
    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 335
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0431\u0435\u0437 \u201e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->nameOf(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u201c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_ce
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 339
    const-string v3, "beta_blocker"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 340
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    goto :goto_96

    .line 343
    :cond_e1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->todayAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e7
    :goto_e7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_121

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->today:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 345
    const-string v3, "t_gentle"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    const-string v0, "\u043f\u043e-\u043b\u0435\u043a\u043e \u0434\u043d\u0435\u0441"

    :goto_105
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    :cond_109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0434\u043d\u0435\u0441: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->todayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_105

    .line 348
    :cond_121
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->focusAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_127
    :goto_127
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_156

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->focusName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u2191"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_127

    .line 353
    :cond_156
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    if-eqz v0, :cond_193

    .line 354
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v0

    .line 355
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v2, :cond_16c

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v2, v3, :cond_16c

    .line 356
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 358
    :cond_16c
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v0, v2, :cond_193

    .line 359
    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 360
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0446\u0435\u043b: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->GOAL_BG:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v0

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_193
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->mode:Ljava/lang/String;

    if-eqz v0, :cond_228

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->mode:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Mode;

    move-result-object v0

    .line 365
    :goto_19d
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v2

    if-nez v2, :cond_1b1

    .line 366
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-eqz v0, :cond_22c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 368
    :cond_1b1
    :goto_1b1
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-eq v0, v2, :cond_1c0

    .line 369
    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 370
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v2, :cond_22f

    const-string v0, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    :goto_1bd
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_1c0
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->minutes:Ljava/lang/Integer;

    if-eqz v0, :cond_1fc

    .line 373
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->minutes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->clampSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;I)I

    move-result v0

    .line 374
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v2, :cond_1de

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_1fc

    .line 375
    :cond_1de
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v0, v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043c\u0438\u043d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_1fc
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->doubleImpulse:Ljava/lang/Boolean;

    if-eqz v0, :cond_225

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel;->activePauseAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v0

    if-eqz v0, :cond_225

    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->doubleImpulse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_232

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->AUTO:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 381
    :goto_212
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    if-eq v0, v2, :cond_225

    .line 382
    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 383
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->doubleImpulse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_235

    const-string v0, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    :goto_222
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_225
    move-object v0, v1

    .line 386
    goto/16 :goto_9

    .line 364
    :cond_228
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    goto/16 :goto_19d

    .line 366
    :cond_22c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    goto :goto_1b1

    .line 370
    :cond_22f
    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    goto :goto_1bd

    .line 380
    :cond_232
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    goto :goto_212

    .line 383
    :cond_235
    const-string v0, "\u0431\u0435\u0437 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    goto :goto_222
.end method

.method public static bmi(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)D
    .registers 7

    .prologue
    .line 171
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    if-lez v0, :cond_14

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    iget v2, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    :goto_13
    return-wide v0

    :cond_14
    const-wide/16 v0, 0x0

    goto :goto_13
.end method

.method public static bmiClass(D)Ljava/lang/String;
    .registers 4

    .prologue
    .line 175
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_9

    const-string v0, ""

    .line 181
    :goto_8
    return-object v0

    .line 176
    :cond_9
    const-wide v0, 0x4032800000000000L    # 18.5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_15

    const-string v0, "\u043f\u043e\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e"

    goto :goto_8

    .line 177
    :cond_15
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1e

    const-string v0, "\u043d\u043e\u0440\u043c\u0430\u043b\u043d\u043e"

    goto :goto_8

    .line 178
    :cond_1e
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_27

    const-string v0, "\u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e"

    goto :goto_8

    .line 179
    :cond_27
    const-wide v0, 0x4041800000000000L    # 35.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_33

    const-string v0, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435 I"

    goto :goto_8

    .line 180
    :cond_33
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3c

    const-string v0, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435 II"

    goto :goto_8

    .line 181
    :cond_3c
    const-string v0, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435 III"

    goto :goto_8
.end method

.method public static chat()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AiCoach$Turn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    return-object v0
.end method

.method public static clearHealth(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 428
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_11

    aget-object v4, v2, v0

    .line 429
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 431
    :cond_11
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_15
    if-ge v0, v3, :cond_27

    aget-object v4, v2, v0

    .line 432
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 434
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    .line 435
    return-void
.end method

.method public static experience(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;I)V
    .registers 3

    .prologue
    .line 439
    if-gtz p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sessions:I

    .line 440
    return-void

    .line 439
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/4 v0, 0x3

    goto :goto_3

    :cond_b
    const/16 v0, 0xc

    goto :goto_3
.end method

.method public static experienceOf(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)I
    .registers 3

    .prologue
    .line 443
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sessions:I

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sessions:I

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sessions:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_5

    :cond_14
    const/4 v0, 0x2

    goto :goto_5
.end method

.method private static focusName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 477
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 478
    if-ltz v0, :cond_c

    sget-object v1, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS_BG:[Ljava/lang/String;

    aget-object p0, v1, v0

    :cond_c
    return-object p0
.end method

.method public static healthOn(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 405
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_17

    .line 406
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 408
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_16
.end method

.method static indexOf(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 482
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 483
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 487
    :goto_c
    return v0

    .line 482
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static learned()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 142
    return-object v0
.end method

.method private static list(Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_2c

    const-string v1, ","

    :goto_1f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 242
    goto :goto_d

    .line 241
    :cond_2c
    const-string v1, ""

    goto :goto_1f

    .line 243
    :cond_2f
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static nameOf(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 463
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 464
    if-ltz v0, :cond_9

    .line 465
    aget-object p0, p2, v0

    .line 468
    :cond_8
    :goto_8
    return-object p0

    .line 467
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->COND:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 468
    if-ltz v0, :cond_8

    sget-object v1, Lcom/isaigu/gymapp/ai/AiBrief;->COND_BG:[Ljava/lang/String;

    aget-object p0, v1, v0

    goto :goto_8
.end method

.method private static num(Ljava/lang/Object;II)Ljava/lang/Integer;
    .registers 9

    .prologue
    .line 510
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_6

    .line 511
    const/4 v0, 0x0

    .line 514
    :goto_5
    return-object v0

    .line 513
    :cond_6
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 514
    int-to-long v2, p1

    int-to-long v4, p2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5
.end method

.method private static varargs one(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 499
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 500
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_16

    aget-object v0, p1, v1

    .line 501
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 506
    :goto_11
    return-object v0

    .line 500
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 506
    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiCoach$Reply;
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 252
    :try_start_5
    new-instance v0, Lcom/isaigu/gymapp/ai/AiBrief$Json;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_d} :catch_206

    move-result-object v1

    .line 256
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_30

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    const-string v5, "ok"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    const-string v2, "coach"

    .line 257
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_31

    .line 304
    :cond_30
    :goto_30
    return-object v3

    .line 260
    :cond_31
    check-cast v1, Ljava/util/Map;

    const-string v0, "coach"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 261
    new-instance v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;-><init>()V

    .line 262
    const-string v1, "reply"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x104

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 263
    const-string v1, "question"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_c7

    .line 264
    const-string v1, "question"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 265
    const-string v2, "text"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v5, 0x8c

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c7

    const-string v5, "options"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/util/List;

    if-eqz v5, :cond_c7

    .line 267
    const-string v5, "options"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_88
    :goto_88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 268
    const/16 v7, 0x28

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiCoach;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    .line 269
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_88

    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x4

    if-ge v7, v9, :cond_88

    .line 270
    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 273
    :cond_ad
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v10, :cond_1f6

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->questionsAsked()I

    move-result v1

    if-ge v1, v11, :cond_1f6

    move-object v1, v2

    :goto_bc
    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->question:Ljava/lang/String;

    .line 274
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->question:Ljava/lang/String;

    if-nez v1, :cond_c7

    .line 275
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 279
    :cond_c7
    const-string v1, "goal"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "TONE"

    aput-object v5, v2, v4

    const-string v5, "FAT"

    aput-object v5, v2, v6

    const-string v5, "MASSAGE"

    aput-object v5, v2, v10

    const-string v5, "DRAIN"

    aput-object v5, v2, v11

    const/4 v5, 0x4

    const-string v7, "CELLULITE"

    aput-object v7, v2, v5

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->one(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    .line 280
    const-string v1, "mode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v5, "ACTIVE"

    aput-object v5, v2, v4

    const-string v5, "PASSIVE"

    aput-object v5, v2, v6

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->one(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->mode:Ljava/lang/String;

    .line 281
    const-string v1, "minutes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v5, 0x19

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->minutes:Ljava/lang/Integer;

    .line 282
    const-string v1, "double_impulse"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1f9

    const-string v1, "double_impulse"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    :goto_123
    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->doubleImpulse:Ljava/lang/Boolean;

    .line 283
    const-string v1, "cond_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->COND_ALL:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->condAdd:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 284
    const-string v1, "cond_remove"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->COND_ALL:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->condRemove:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 285
    const-string v1, "focus_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->FOCUS_ALL:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->focusAdd:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 286
    const-string v1, "today_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->TODAY_ALL:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->todayAdd:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 287
    const-string v1, "contra_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_ALL:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->contraAdd:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 288
    const-string v1, "actions"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->ACTIONS:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->actions:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 289
    const-string v1, "on_delta"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, v2, v10}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    .line 290
    const-string v1, "off_delta"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, v2, v11}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    .line 291
    const-string v1, "hz_pct"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, -0xf

    const/16 v5, 0xf

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    .line 292
    const-string v1, "rest_pct"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, -0x1e

    const/16 v5, 0x3c

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    .line 293
    const-string v1, "end_in_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v1, v4, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    .line 294
    const-string v1, "advice"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_203

    .line 295
    const-string v1, "advice"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 296
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v1, v1

    new-array v7, v1, [Ljava/lang/String;

    move v1, v4

    move v2, v4

    .line 298
    :goto_1d4
    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1fe

    .line 299
    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v9, 0xaa

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiCoach;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    .line 300
    aget-object v5, v7, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1fc

    move v5, v6

    :goto_1f2
    or-int/2addr v2, v5

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d4

    :cond_1f6
    move-object v1, v3

    .line 273
    goto/16 :goto_bc

    :cond_1f9
    move-object v1, v3

    .line 282
    goto/16 :goto_123

    :cond_1fc
    move v5, v4

    .line 300
    goto :goto_1f2

    .line 302
    :cond_1fe
    if-eqz v2, :cond_201

    move-object v3, v7

    :cond_201
    iput-object v3, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->advice:[Ljava/lang/String;

    :cond_203
    move-object v3, v8

    .line 304
    goto/16 :goto_30

    .line 253
    :catch_206
    move-exception v0

    goto/16 :goto_30
.end method

.method public static questionsAsked()I
    .registers 4

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    .line 131
    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v3, :cond_22

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->question:Z

    if-eqz v0, :cond_22

    .line 132
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1f
    move v1, v0

    .line 134
    goto :goto_8

    .line 135
    :cond_21
    return v1

    :cond_22
    move v0, v1

    goto :goto_1f
.end method

.method public static requestFields(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    const-string v0, "\"kind\":\"coach\",\"text\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v0, ",\"context\":{\"session\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_13e

    const-string v0, "RUNNING"

    :goto_1d
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v0, ",\"sex\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"age\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    if-lez v0, :cond_52

    .line 194
    const-string v0, ",\"height_cm\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    :cond_52
    const-string v0, ",\"weight_kg\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoach;->bmi(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)D

    move-result-wide v0

    .line 198
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_97

    .line 199
    const-string v2, ",\"bmi\":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"bmi_class\":"

    .line 200
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->bmiClass(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_97
    const-string v0, ",\"fitness\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v0, ",\"ems_sessions\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v0, ",\"goal\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"mode\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v0, ",\"cond\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"today\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->today:Ljava/util/Set;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"focus\":"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11c
    :goto_11c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_142

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    .line 191
    :cond_13e
    const-string v0, "PLANNING"

    goto/16 :goto_1d

    .line 213
    :cond_142
    const-string v0, ",\"contra\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    if-eqz p2, :cond_15a

    .line 215
    const-string v0, ",\"plan\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_15a
    if-eqz p3, :cond_165

    .line 218
    const-string v0, ",\"now\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_165
    const-string v0, "},\"chat\":["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 222
    :goto_177
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c2

    .line 223
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    .line 224
    if-le v1, v2, :cond_18e

    .line 225
    const/16 v3, 0x2c

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 227
    :cond_18e
    const-string v3, "{\"role\":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v3, :cond_1bf

    const-string v3, "\"ai\""

    :goto_19a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",\"text\":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->question:Z

    if-eqz v0, :cond_1b6

    .line 229
    const-string v0, ",\"q\":true"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_1b6
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_177

    .line 227
    :cond_1bf
    const-string v3, "\"trainer\""

    goto :goto_19a

    .line 233
    :cond_1c2
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reset(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 3

    .prologue
    .line 111
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 114
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 115
    if-eqz p0, :cond_1b

    .line 116
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 118
    :cond_1b
    return-void
.end method

.method public static savedLearned()V
    .registers 2

    .prologue
    .line 147
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 148
    return-void
.end method

.method private static str(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 491
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_7

    .line 492
    const-string v0, ""

    .line 495
    :cond_6
    :goto_6
    return-object v0

    .line 494
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

    .line 495
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_5

    .line 526
    :cond_4
    return-void

    .line 521
    :cond_5
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 522
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_b

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_b

    .line 523
    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method private static todayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 472
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->TODAY_BG_KEYS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 473
    if-ltz v0, :cond_c

    sget-object v1, Lcom/isaigu/gymapp/ai/AiBrief;->TODAY_BG:[Ljava/lang/String;

    aget-object p0, v1, v0

    :cond_c
    return-object p0
.end method

.method public static toggleHealth(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 391
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 392
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    .line 393
    :goto_19
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_24
    :goto_24
    return-void

    .line 392
    :cond_25
    const/4 v0, 0x0

    goto :goto_19

    .line 396
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 397
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_34
    const-string v0, "beta_blocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    goto :goto_24
.end method

.method public static userSaid(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 151
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    invoke-direct {v1, v2, p0, v2}, Lcom/isaigu/gymapp/ai/AiCoach$Turn;-><init>(ZLjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method
