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

.field private static askedAt:J

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

.field static volatile liveTurn:Z


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
    const/16 v0, 0xa

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

    const/16 v1, 0x8

    const-string v2, "skip"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "to_recovery"

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

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    .line 124
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
    .line 145
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
    .line 676
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 677
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    if-nez v0, :cond_b

    move-object v0, v1

    .line 685
    :goto_a
    return-object v0

    .line 680
    :cond_b
    const/4 v0, 0x0

    :goto_c
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4b

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4b

    .line 681
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_48

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_48

    .line 682
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

    .line 680
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_4b
    move-object v0, v1

    .line 685
    goto :goto_a
.end method

.method public static aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V
    .registers 6

    .prologue
    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 197
    :goto_6
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hasQuestion()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_71

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

    .line 200
    :cond_38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_65

    .line 201
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hasQuestion()Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/isaigu/gymapp/ai/AiCoach$Turn;-><init>(ZLjava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hasQuestion()Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_5f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_63
    sput-wide v0, Lcom/isaigu/gymapp/ai/AiCoach;->askedAt:J

    .line 204
    :cond_65
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->advice:[Ljava/lang/String;

    if-eqz v0, :cond_6d

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->advice:[Ljava/lang/String;

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    .line 207
    :cond_6d
    return-void

    .line 196
    :cond_6e
    const-string v0, ""

    goto :goto_6

    .line 198
    :cond_71
    const-string v0, ""

    goto :goto_2a

    .line 202
    :cond_74
    const-wide/16 v0, 0x0

    goto :goto_63
.end method

.method public static anyHealth(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 641
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_6
    if-ge v2, v4, :cond_16

    aget-object v5, v3, v2

    .line 642
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 651
    :cond_12
    :goto_12
    return v0

    .line 641
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 646
    :cond_16
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1a
    if-ge v2, v4, :cond_31

    aget-object v5, v3, v2

    .line 647
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 646
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_31
    move v0, v1

    .line 651
    goto :goto_12
.end method

.method public static anyHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_6
    if-ge v2, v4, :cond_16

    aget-object v5, v3, v2

    .line 502
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 511
    :cond_12
    :goto_12
    return v0

    .line 501
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 506
    :cond_16
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1a
    if-ge v2, v4, :cond_31

    aget-object v5, v3, v2

    .line 507
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v7, v7, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_31
    move v0, v1

    .line 511
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

    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 540
    if-nez p0, :cond_a

    move-object v0, v1

    .line 614
    :goto_9
    return-object v0

    .line 543
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

    .line 544
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 545
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v3, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiCoach;->nameOf(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 549
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

    .line 550
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 551
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiCoach;->nameOf(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_68
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 554
    const-string v3, "beta_blocker"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 555
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v5, v3, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    .line 557
    :cond_79
    const-string v3, "insulin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 558
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    const-string v3, "diabetes"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    const-string v3, "diabetes"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 562
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

    .line 563
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 564
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

    .line 566
    :cond_ce
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 567
    const-string v3, "beta_blocker"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 568
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    goto :goto_96

    .line 571
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

    .line 572
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->today:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 573
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

    .line 576
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

    .line 577
    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 578
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

    .line 581
    :cond_156
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    if-eqz v0, :cond_193

    .line 582
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v0

    .line 583
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v0, v2, :cond_16c

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v2, v3, :cond_16c

    .line 584
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 586
    :cond_16c
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq v0, v2, :cond_193

    .line 587
    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 588
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    .line 589
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

    .line 592
    :cond_193
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->mode:Ljava/lang/String;

    if-eqz v0, :cond_228

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->mode:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel$Mode;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Mode;

    move-result-object v0

    .line 593
    :goto_19d
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v2

    if-nez v2, :cond_1b1

    .line 594
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-eqz v0, :cond_22c

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 596
    :cond_1b1
    :goto_1b1
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-eq v0, v2, :cond_1c0

    .line 597
    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    .line 598
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v2, :cond_22f

    const-string v0, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    :goto_1bd
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_1c0
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->minutes:Ljava/lang/Integer;

    if-eqz v0, :cond_1fc

    .line 601
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->minutes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiPlanner;->clampSeconds(Lcom/isaigu/gymapp/ai/AiModel$Goal;I)I

    move-result v0

    .line 602
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    if-eqz v2, :cond_1de

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_1fc

    .line 603
    :cond_1de
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->totalSeconds:Ljava/lang/Integer;

    .line 604
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

    .line 607
    :cond_1fc
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->doubleImpulse:Ljava/lang/Boolean;

    if-eqz v0, :cond_225

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel;->activePauseAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Z

    move-result v0

    if-eqz v0, :cond_225

    .line 608
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->doubleImpulse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_232

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->AUTO:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 609
    :goto_212
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    if-eq v0, v2, :cond_225

    .line 610
    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->pause:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    .line 611
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->doubleImpulse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_235

    const-string v0, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    :goto_222
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_225
    move-object v0, v1

    .line 614
    goto/16 :goto_9

    .line 592
    :cond_228
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    goto/16 :goto_19d

    .line 594
    :cond_22c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    goto :goto_1b1

    .line 598
    :cond_22f
    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    goto :goto_1bd

    .line 608
    :cond_232
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$PauseMode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$PauseMode;

    goto :goto_212

    .line 611
    :cond_235
    const-string v0, "\u0431\u0435\u0437 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    goto :goto_222
.end method

.method public static applyAuto(Lcom/isaigu/gymapp/ai/AiCoach$Reply;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AiCoach$Reply;",
            "Lcom/isaigu/gymapp/ai/AutoModel$Input;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    new-instance v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiBrief$Patch;-><init>()V

    .line 439
    if-nez p0, :cond_d

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    :goto_c
    return-object v0

    .line 442
    :cond_d
    const-string v0, "FAT"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "SLIM"

    .line 443
    :goto_19
    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->goal:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->mode:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->kind:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->program:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->program:Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->intensity:Ljava/lang/String;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->intensity:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->minutes:Ljava/lang/Integer;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->minutes:Ljava/lang/Integer;

    .line 448
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->doubleImpulse:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->doublePulse:Ljava/lang/Boolean;

    .line 449
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->condAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->channelOrCond(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 451
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 442
    :cond_4d
    const-string v0, "TONE"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "SLIM"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "HEALTH"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 443
    :cond_6b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    goto :goto_19

    :cond_6e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    if-eqz v0, :cond_75

    const-string v0, "HEALTH"

    goto :goto_19

    :cond_75
    const/4 v0, 0x0

    goto :goto_19

    .line 454
    :cond_77
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condRemove:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->condRemove:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 455
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusAdd:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->focusAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 456
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->todayAdd:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->todayAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->contraAdd:Ljava/util/List;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->contraAdd:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 458
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/ai/AiBrief;->apply(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v1

    .line 460
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->condAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9d
    :goto_9d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ee

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->channelOrCond(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c2

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 462
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/ai/AiCoach;->nameOf(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_c2
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    const-string v3, "insulin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    const-string v4, "diabetes"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 466
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    const-string v4, "diabetes"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_e0
    const-string v3, "beta_blocker"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 469
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    goto :goto_9d

    .line 472
    :cond_ee
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->condRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_f4

    :cond_106
    move-object v0, v1

    .line 475
    goto/16 :goto_c
.end method

.method public static awaitingAnswer()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 188
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/isaigu/gymapp/ai/AiCoach;->askedAt:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x15f90

    cmp-long v0, v2, v4

    if-lez v0, :cond_19

    :cond_17
    move v0, v1

    .line 192
    :goto_18
    return v0

    .line 191
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    .line 192
    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v2, :cond_41

    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->question:Z

    if-nez v2, :cond_3f

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3f
    const/4 v0, 0x1

    goto :goto_18

    :cond_41
    move v0, v1

    goto :goto_18
.end method

.method public static bmi(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)D
    .registers 7

    .prologue
    .line 213
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

.method public static bmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)D
    .registers 7

    .prologue
    .line 378
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-lez v0, :cond_14

    iget-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    iget v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

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
    .line 217
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_9

    const-string v0, ""

    .line 223
    :goto_8
    return-object v0

    .line 218
    :cond_9
    const-wide v0, 0x4032800000000000L    # 18.5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_15

    const-string v0, "\u043f\u043e\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e"

    goto :goto_8

    .line 219
    :cond_15
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1e

    const-string v0, "\u043d\u043e\u0440\u043c\u0430\u043b\u043d\u043e"

    goto :goto_8

    .line 220
    :cond_1e
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_27

    const-string v0, "\u043d\u0430\u0434\u043d\u043e\u0440\u043c\u0435\u043d\u043e"

    goto :goto_8

    .line 221
    :cond_27
    const-wide v0, 0x4041800000000000L    # 35.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_33

    const-string v0, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435 I"

    goto :goto_8

    .line 222
    :cond_33
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3c

    const-string v0, "\u0437\u0430\u0442\u043b\u044a\u0441\u0442\u044f\u0432\u0430\u043d\u0435 II"

    goto :goto_8

    .line 223
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
    .line 141
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    return-object v0
.end method

.method public static clearHealth(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 656
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_11

    aget-object v4, v2, v0

    .line 657
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 659
    :cond_11
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_15
    if-ge v0, v3, :cond_27

    aget-object v4, v2, v0

    .line 660
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 662
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    .line 663
    return-void
.end method

.method public static clearHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 515
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_11

    aget-object v4, v2, v0

    .line 516
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 518
    :cond_11
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_15
    if-ge v0, v3, :cond_27

    aget-object v4, v2, v0

    .line 519
    iget-object v5, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 521
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 522
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    .line 523
    return-void
.end method

.method public static experience(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;I)V
    .registers 3

    .prologue
    .line 667
    if-gtz p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sessions:I

    .line 668
    return-void

    .line 667
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/4 v0, 0x3

    goto :goto_3

    :cond_b
    const/16 v0, 0xc

    goto :goto_3
.end method

.method public static experience(Lcom/isaigu/gymapp/ai/AutoModel$Input;I)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 527
    if-gtz p1, :cond_d

    const/4 v0, 0x0

    :goto_4
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 528
    if-gtz p1, :cond_14

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    :goto_a
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 529
    return-void

    .line 527
    :cond_d
    if-ne p1, v1, :cond_11

    const/4 v0, 0x3

    goto :goto_4

    :cond_11
    const/16 v0, 0xc

    goto :goto_4

    .line 528
    :cond_14
    if-ne p1, v1, :cond_19

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_a

    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_a
.end method

.method public static experienceOf(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)I
    .registers 3

    .prologue
    .line 671
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

.method public static experienceOf(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I
    .registers 3

    .prologue
    .line 532
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x2

    goto :goto_5
.end method

.method private static focusName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 705
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 706
    if-ltz v0, :cond_c

    sget-object v1, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS_BG:[Ljava/lang/String;

    aget-object p0, v1, v0

    :cond_c
    return-object p0
.end method

.method public static healthOn(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 633
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_17

    .line 634
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 636
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_16
.end method

.method public static healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 496
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_17

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_16
    return v0

    .line 497
    :cond_17
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_16
.end method

.method static indexOf(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 710
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 711
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 715
    :goto_c
    return v0

    .line 710
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 715
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
    .line 160
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 161
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 162
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
    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    const/4 v0, 0x0

    .line 282
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

    .line 283
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

    .line 284
    goto :goto_d

    .line 283
    :cond_2c
    const-string v1, ""

    goto :goto_1f

    .line 285
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
    .line 691
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 692
    if-ltz v0, :cond_9

    .line 693
    aget-object p0, p2, v0

    .line 696
    :cond_8
    :goto_8
    return-object p0

    .line 695
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->COND:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 696
    if-ltz v0, :cond_8

    sget-object v1, Lcom/isaigu/gymapp/ai/AiBrief;->COND_BG:[Ljava/lang/String;

    aget-object p0, v1, v0

    goto :goto_8
.end method

.method private static num(Ljava/lang/Object;II)Ljava/lang/Integer;
    .registers 9

    .prologue
    .line 738
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_6

    .line 739
    const/4 v0, 0x0

    .line 742
    :goto_5
    return-object v0

    .line 741
    :cond_6
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 742
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
    .line 727
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 728
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_16

    aget-object v0, p1, v1

    .line 729
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 734
    :goto_11
    return-object v0

    .line 728
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 734
    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiCoach$Reply;
    .registers 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 294
    :try_start_5
    new-instance v0, Lcom/isaigu/gymapp/ai/AiBrief$Json;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_d} :catch_2bf

    move-result-object v1

    .line 298
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

    .line 299
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-nez v0, :cond_31

    .line 361
    :cond_30
    :goto_30
    return-object v3

    .line 302
    :cond_31
    check-cast v1, Ljava/util/Map;

    const-string v0, "coach"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 303
    new-instance v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;-><init>()V

    .line 304
    const-string v1, "reply"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x104

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 305
    const-string v1, "question"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_cb

    .line 306
    const-string v1, "question"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 307
    const-string v2, "text"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v5, 0x8c

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_cb

    const-string v5, "options"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/util/List;

    if-eqz v5, :cond_cb

    .line 309
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

    .line 310
    const/16 v7, 0x28

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/ai/AiCoach;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_88

    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x4

    if-ge v7, v9, :cond_88

    .line 312
    iget-object v7, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 315
    :cond_ad
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v10, :cond_2ac

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiCoach;->liveTurn:Z

    if-nez v1, :cond_bf

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->questionsAsked()I

    move-result v1

    if-ge v1, v11, :cond_2ac

    :cond_bf
    move-object v1, v2

    :goto_c0
    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->question:Ljava/lang/String;

    .line 316
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->question:Ljava/lang/String;

    if-nez v1, :cond_cb

    .line 317
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 321
    :cond_cb
    const-string v1, "goal"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

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

    const/4 v5, 0x5

    const-string v7, "SLIM"

    aput-object v7, v2, v5

    const/4 v5, 0x6

    const-string v7, "HEALTH"

    aput-object v7, v2, v5

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->one(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->goal:Ljava/lang/String;

    .line 322
    const-string v1, "program"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2af

    const-string v1, "program"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    if-eqz v1, :cond_2af

    .line 323
    const-string v1, "program"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_119
    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->program:Ljava/lang/String;

    .line 324
    const-string v1, "intensity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/String;

    const-string v5, "SOFT"

    aput-object v5, v2, v4

    const-string v5, "STANDARD"

    aput-object v5, v2, v6

    const-string v5, "INTENSE"

    aput-object v5, v2, v10

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->one(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->intensity:Ljava/lang/String;

    .line 325
    const-string v1, "veto"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_19b

    .line 326
    const-string v1, "veto"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 327
    const-string v2, "reason"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v5, 0x78

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoReason:Ljava/lang/String;

    .line 328
    const-string v2, "hz"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v5, 0x78

    invoke-static {v2, v6, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoHz:Ljava/lang/Integer;

    .line 329
    const-string v2, "on_s"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/16 v5, 0xa

    invoke-static {v2, v6, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOn:Ljava/lang/Integer;

    .line 330
    const-string v2, "off_s"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v6, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOff:Ljava/lang/Integer;

    .line 331
    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoReason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_193

    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoHz:Ljava/lang/Integer;

    if-nez v1, :cond_19b

    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOn:Ljava/lang/Integer;

    if-nez v1, :cond_19b

    iget-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOff:Ljava/lang/Integer;

    if-nez v1, :cond_19b

    .line 332
    :cond_193
    iput-object v3, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoReason:Ljava/lang/String;

    .line 333
    iput-object v3, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOff:Ljava/lang/Integer;

    iput-object v3, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoOn:Ljava/lang/Integer;

    iput-object v3, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->vetoHz:Ljava/lang/Integer;

    .line 336
    :cond_19b
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

    .line 337
    const-string v1, "minutes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v5, 0x19

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->minutes:Ljava/lang/Integer;

    .line 338
    const-string v1, "double_impulse"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2b2

    const-string v1, "double_impulse"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    :goto_1d3
    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->doubleImpulse:Ljava/lang/Boolean;

    .line 339
    const-string v1, "cond_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->COND_ALL:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->condAdd:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 340
    const-string v1, "cond_remove"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->COND_ALL:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->condRemove:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 341
    const-string v1, "focus_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->FOCUS_ALL:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->focusAdd:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 342
    const-string v1, "today_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->TODAY_ALL:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->todayAdd:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 343
    const-string v1, "contra_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_ALL:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->contraAdd:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 344
    const-string v1, "actions"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->ACTIONS:[Ljava/lang/String;

    iget-object v5, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->actions:Ljava/util/List;

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 345
    const-string v1, "on_delta"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, v2, v10}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->onDelta:Ljava/lang/Integer;

    .line 346
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiVoiceCmd;->fromCoach(Ljava/util/Map;)Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->cmds:Lcom/isaigu/gymapp/ai/AiVoiceCmd$Result;

    .line 347
    const-string v1, "off_delta"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, v2, v11}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->offDelta:Ljava/lang/Integer;

    .line 348
    const-string v1, "hz_pct"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, -0xf

    const/16 v5, 0xf

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hzPct:Ljava/lang/Integer;

    .line 349
    const-string v1, "rest_pct"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, -0x1e

    const/16 v5, 0x3c

    invoke-static {v1, v2, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->restPct:Ljava/lang/Integer;

    .line 350
    const-string v1, "end_in_min"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v1, v4, v2}, Lcom/isaigu/gymapp/ai/AiCoach;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->endInMin:Ljava/lang/Integer;

    .line 351
    const-string v1, "advice"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_2bc

    .line 352
    const-string v1, "advice"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 353
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v1, v1

    new-array v7, v1, [Ljava/lang/String;

    move v1, v4

    move v2, v4

    .line 355
    :goto_28a
    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_2b7

    .line 356
    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v9, 0xaa

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/ai/AiCoach;->str(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    .line 357
    aget-object v5, v7, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2b5

    move v5, v6

    :goto_2a8
    or-int/2addr v2, v5

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_28a

    :cond_2ac
    move-object v1, v3

    .line 315
    goto/16 :goto_c0

    :cond_2af
    move-object v1, v3

    .line 323
    goto/16 :goto_119

    :cond_2b2
    move-object v1, v3

    .line 338
    goto/16 :goto_1d3

    :cond_2b5
    move v5, v4

    .line 357
    goto :goto_2a8

    .line 359
    :cond_2b7
    if-eqz v2, :cond_2ba

    move-object v3, v7

    :cond_2ba
    iput-object v3, v8, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->advice:[Ljava/lang/String;

    :cond_2bc
    move-object v3, v8

    .line 361
    goto/16 :goto_30

    .line 295
    :catch_2bf
    move-exception v0

    goto/16 :goto_30
.end method

.method public static questionsAsked()I
    .registers 4

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 150
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

    .line 151
    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v3, :cond_22

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->question:Z

    if-eqz v0, :cond_22

    .line 152
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1f
    move v1, v0

    .line 154
    goto :goto_8

    .line 155
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

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    const-string v0, "\"kind\":\"coach\",\"text\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, ",\"context\":{\"session\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_13e

    const-string v0, "RUNNING"

    :goto_1d
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
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

    .line 235
    iget v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    if-lez v0, :cond_52

    .line 236
    const-string v0, ",\"height_cm\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    :cond_52
    const-string v0, ",\"weight_kg\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoach;->bmi(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)D

    move-result-wide v0

    .line 240
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_97

    .line 241
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

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->bmiClass(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
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

    .line 245
    const-string v0, ",\"ems_sessions\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
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

    .line 247
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

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->focus:Ljava/util/Set;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
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

    .line 251
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11c

    .line 233
    :cond_13e
    const-string v0, "PLANNING"

    goto/16 :goto_1d

    .line 255
    :cond_142
    const-string v0, ",\"contra\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    if-eqz p2, :cond_15a

    .line 257
    const-string v0, ",\"plan\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_15a
    if-eqz p3, :cond_165

    .line 260
    const-string v0, ",\"now\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_165
    const-string v0, "},\"chat\":["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 264
    :goto_177
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c2

    .line 265
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    .line 266
    if-le v1, v2, :cond_18e

    .line 267
    const/16 v3, 0x2c

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
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

    .line 270
    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->question:Z

    if-eqz v0, :cond_1b6

    .line 271
    const-string v0, ",\"q\":true"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_1b6
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_177

    .line 269
    :cond_1bf
    const-string v3, "\"trainer\""

    goto :goto_19a

    .line 275
    :cond_1c2
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestFieldsAuto(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 15

    .prologue
    const/16 v9, 0x7d

    const/4 v2, 0x0

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    const-string v0, "\"kind\":\"coach\",\"domain\":\"auto\",\"text\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v0, ",\"context\":{\"session\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_150

    const-string v0, "RUNNING"

    :goto_1f
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v0, ",\"sex\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"age\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-lez v0, :cond_54

    .line 389
    const-string v0, ",\"height_cm\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    :cond_54
    const-string v0, ",\"weight_kg\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 392
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoach;->bmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)D

    move-result-wide v0

    .line 393
    const-wide/16 v6, 0x0

    cmpl-double v3, v0, v6

    if-lez v3, :cond_99

    .line 394
    const-string v3, ",\"bmi\":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",\"bmi_class\":"

    .line 395
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->bmiClass(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_99
    const-string v0, ",\"fitness\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"ems_sessions\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    const-string v0, ",\"goal\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"mode\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string v0, ",\"program\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v0, ",\"cond\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"today\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"focus\":"

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12e
    :goto_12e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_154

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 404
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 405
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12e

    .line 386
    :cond_150
    const-string v0, "PLANNING"

    goto/16 :goto_1f

    .line 408
    :cond_154
    const-string v0, ",\"contra\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    if-eqz p2, :cond_16c

    .line 410
    const-string v0, ",\"plan\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_16c
    if-eqz p3, :cond_177

    .line 413
    const-string v0, ",\"now\":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_177
    const-string v0, "},\"menu\":["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiBrief;->menu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_185
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 418
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->goalOf(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v6

    .line 419
    add-int/lit8 v3, v1, 0x1

    if-lez v1, :cond_1ee

    const-string v1, ","

    :goto_19b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "{\"id\":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ",\"name\":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 420
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ",\"goal\":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v6, :cond_1f1

    invoke-virtual {v6}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->name()Ljava/lang/String;

    move-result-object v1

    :goto_1cd
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ",\"kind\":"

    .line 421
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    .line 422
    goto :goto_185

    .line 419
    :cond_1ee
    const-string v1, ""

    goto :goto_19b

    .line 420
    :cond_1f1
    const-string v1, ""

    goto :goto_1cd

    .line 423
    :cond_1f4
    const-string v0, "],\"chat\":["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 425
    :goto_206
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_258

    .line 426
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    .line 427
    if-le v1, v2, :cond_24f

    const-string v3, ","

    :goto_21a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "{\"role\":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v3, :cond_252

    const-string v3, "\"ai\""

    :goto_22a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",\"text\":"

    .line 428
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->question:Z

    if-eqz v0, :cond_255

    const-string v0, ",\"q\":true"

    :goto_244
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_206

    .line 427
    :cond_24f
    const-string v3, ""

    goto :goto_21a

    :cond_252
    const-string v3, "\"trainer\""

    goto :goto_22a

    .line 428
    :cond_255
    const-string v0, ""

    goto :goto_244

    .line 430
    :cond_258
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reset(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)V
    .registers 3

    .prologue
    .line 128
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 131
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 132
    if-eqz p0, :cond_1b

    .line 133
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_1b
    return-void
.end method

.method public static resetAuto(Lcom/isaigu/gymapp/ai/AutoModel$Input;)V
    .registers 3

    .prologue
    .line 368
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 369
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->advice:[Ljava/lang/String;

    .line 370
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 371
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 372
    if-eqz p0, :cond_1b

    .line 373
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 375
    :cond_1b
    return-void
.end method

.method public static savedLearned()V
    .registers 2

    .prologue
    .line 167
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->condAtStart:Ljava/util/Set;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->condLearned:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    return-void
.end method

.method private static str(Ljava/lang/Object;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 719
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_7

    .line 720
    const-string v0, ""

    .line 723
    :cond_6
    :goto_6
    return-object v0

    .line 722
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

    .line 723
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
    .line 746
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_5

    .line 754
    :cond_4
    return-void

    .line 749
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

    .line 750
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

    .line 751
    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method private static todayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 700
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->TODAY_BG_KEYS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 701
    if-ltz v0, :cond_c

    sget-object v1, Lcom/isaigu/gymapp/ai/AiBrief;->TODAY_BG:[Ljava/lang/String;

    aget-object p0, v1, v0

    :cond_c
    return-object p0
.end method

.method public static toggleHealth(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 619
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 620
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    .line 621
    :goto_19
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_24
    :goto_24
    return-void

    .line 620
    :cond_25
    const/4 v0, 0x0

    goto :goto_19

    .line 624
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 625
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_34
    const-string v0, "beta_blocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 628
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->cond:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    goto :goto_24
.end method

.method public static toggleHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 480
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->indexOf(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 481
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_24
    :goto_24
    return-void

    .line 481
    :cond_25
    const/4 v0, 0x0

    goto :goto_1d

    .line 484
    :cond_27
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 485
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_34
    const-string v0, "diastasis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 488
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 490
    :cond_46
    const-string v0, "beta_blocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 491
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AiModel$Screening;->hrLoweringMedication:Z

    goto :goto_24
.end method

.method public static userSaid(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    invoke-direct {v1, v2, p0, v2}, Lcom/isaigu/gymapp/ai/AiCoach$Turn;-><init>(ZLjava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public static userSpoke(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 176
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->chat:Ljava/util/List;

    new-instance v1, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    const/4 v2, 0x1

    invoke-direct {v1, v3, p0, v3, v2}, Lcom/isaigu/gymapp/ai/AiCoach$Turn;-><init>(ZLjava/lang/String;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method
