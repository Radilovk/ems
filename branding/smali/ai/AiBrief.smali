.class public final Lcom/isaigu/gymapp/ai/AiBrief;
.super Ljava/lang/Object;
.source "AiBrief.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiBrief$Json;,
        Lcom/isaigu/gymapp/ai/AiBrief$Patch;
    }
.end annotation


# static fields
.field private static final AGE:Ljava/util/regex/Pattern;

.field public static final COND:[Ljava/lang/String;

.field static final COND_BG:[Ljava/lang/String;

.field static final CONTRA_BG:[Ljava/lang/String;

.field static final CONTRA_BG_KEYS:[Ljava/lang/String;

.field public static final FOCUS:[Ljava/lang/String;

.field static final FOCUS_BG:[Ljava/lang/String;

.field private static final KG:Ljava/util/regex/Pattern;

.field public static final LIVE_PAUSE:Ljava/lang/String; = "pause"

.field public static final LIVE_RECOVERY:Ljava/lang/String; = "to_recovery"

.field public static final LIVE_RESUME:Ljava/lang/String; = "resume"

.field public static final LIVE_SKIP:Ljava/lang/String; = "skip"

.field public static final LIVE_SOFTER:Ljava/lang/String; = "softer"

.field public static final LIVE_STRONGER:Ljava/lang/String; = "stronger"

.field private static final MIN:Ljava/util/regex/Pattern;

.field static final TODAY_BG:[Ljava/lang/String;

.field public static final TODAY_BG_KEYS:[Ljava/lang/String;

.field public static final ZONES:[Ljava/lang/String;

.field static final ZONES_BG:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chest"

    aput-object v1, v0, v3

    const-string v1, "abs"

    aput-object v1, v0, v4

    const-string v1, "front_thigh"

    aput-object v1, v0, v5

    const-string v1, "calf"

    aput-object v1, v0, v6

    const-string v1, "arms"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "traps"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "back"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lower_back"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "glutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "back_thigh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES:[Ljava/lang/String;

    .line 32
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0433\u044a\u0440\u0434\u0438"

    aput-object v1, v0, v3

    const-string v1, "\u043a\u043e\u0440\u0435\u043c"

    aput-object v1, v0, v4

    const-string v1, "\u043f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v1, v0, v5

    const-string v1, "\u043f\u0440\u0430\u0441\u0435\u0446"

    aput-object v1, v0, v6

    const-string v1, "\u0440\u044a\u0446\u0435"

    aput-object v1, v0, v7

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

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES_BG:[Ljava/lang/String;

    .line 34
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

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS:[Ljava/lang/String;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u043a\u043e\u0440\u0435\u043c"

    aput-object v1, v0, v3

    const-string v1, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    aput-object v1, v0, v4

    const-string v1, "\u043a\u0440\u0430\u043a\u0430"

    aput-object v1, v0, v5

    const-string v1, "\u0440\u044a\u0446\u0435"

    aput-object v1, v0, v6

    const-string v1, "\u0433\u0440\u044a\u0431"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0433\u044a\u0440\u0434\u0438"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS_BG:[Ljava/lang/String;

    .line 36
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "menopause"

    aput-object v1, v0, v3

    const-string v1, "prediabetes"

    aput-object v1, v0, v4

    const-string v1, "pcos"

    aput-object v1, v0, v5

    const-string v1, "thyroid"

    aput-object v1, v0, v6

    const-string v1, "water"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "postpartum"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "back"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "neck"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "knees"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "joints"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "injury"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "diastasis"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "osteo"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "varicose"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "desk"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "stress"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "sleep"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "senior"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "sensitive"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->COND:[Ljava/lang/String;

    .line 38
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u043c\u0435\u043d\u043e\u043f\u0430\u0443\u0437\u0430"

    aput-object v1, v0, v3

    const-string v1, "\u043f\u0440\u0435\u0434\u0434\u0438\u0430\u0431\u0435\u0442"

    aput-object v1, v0, v4

    const-string v1, "\u0421\u041f\u041a\u042f"

    aput-object v1, v0, v5

    const-string v1, "\u0449\u0438\u0442\u043e\u0432\u0438\u0434\u043d\u0430"

    aput-object v1, v0, v6

    const-string v1, "\u0437\u0430\u0434\u044a\u0440\u0436\u0430 \u0432\u043e\u0434\u0430"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0441\u043b\u0435\u0434 \u0440\u0430\u0436\u0434\u0430\u043d\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u043a\u0440\u044a\u0441\u0442 / \u0433\u0440\u044a\u0431"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0432\u0440\u0430\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u043a\u043e\u043b\u0435\u043d\u0435"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0441\u0442\u0430\u0432\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u0442\u0440\u0430\u0432\u043c\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u0434\u0438\u0430\u0441\u0442\u0430\u0437\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u043e\u0441\u0442\u0435\u043e\u043f\u043e\u0440\u043e\u0437\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u0440\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u0438 \u0432\u0435\u043d\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u0441\u0435\u0434\u044f\u0449 \u043d\u0430\u0447\u0438\u043d"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u0441\u0442\u0440\u0435\u0441"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u043b\u043e\u0448 \u0441\u044a\u043d"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "60+"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u0430 \u043a\u043e\u0436\u0430"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->COND_BG:[Ljava/lang/String;

    .line 41
    const/4 v0, 0x6

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

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->TODAY_BG_KEYS:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u043d\u0435\u0434\u043e\u0441\u043f\u0438\u0432\u0430\u043d\u0435"

    aput-object v1, v0, v3

    const-string v1, "\u0442\u043e\u043a\u0443-\u0449\u043e \u0435 \u044f\u043b\u0430"

    aput-object v1, v0, v4

    const-string v1, "\u0442\u0440\u0435\u043d\u0438\u0440\u0430\u043b\u0430 \u0441\u043a\u043e\u0440\u043e"

    aput-object v1, v0, v5

    const-string v1, "\u0441\u0442\u0440\u0435\u0441 \u0434\u043d\u0435\u0441"

    aput-object v1, v0, v6

    const-string v1, "\u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0442\u0440\u0435\u0441\u043a\u0430"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u0446\u0438\u043a\u044a\u043b"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->TODAY_BG:[Ljava/lang/String;

    .line 44
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

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->CONTRA_BG_KEYS:[Ljava/lang/String;

    .line 46
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442"

    aput-object v1, v0, v3

    const-string v1, "\u0438\u043c\u043f\u043b\u0430\u043d\u0442"

    aput-object v1, v0, v4

    const-string v1, "\u0441\u044a\u0440\u0434\u0435\u0447\u043d\u043e-\u0441\u044a\u0434\u043e\u0432\u043e"

    aput-object v1, v0, v5

    const-string v1, "\u043a\u0440\u044a\u0432\u043e\u043e\u0431\u0440\u0430\u0449\u0435\u043d\u0438\u0435"

    aput-object v1, v0, v6

    const-string v1, "\u0445\u0435\u0440\u043d\u0438\u044f"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u043e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u044f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u043a\u0440\u044a\u0432\u043e\u0442\u0435\u0447\u0435\u043d\u0438\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u043d\u0435\u0432\u0440\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0441\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u043a\u043e\u0436\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u0431\u044a\u0431\u0440\u0435\u0446\u0438"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u0442\u0443\u0431\u0435\u0440\u043a\u0443\u043b\u043e\u0437\u0430"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->CONTRA_BG:[Ljava/lang/String;

    .line 433
    const-string v0, "(\\d{1,2})\\s*\u043c\u0438\u043d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->MIN:Ljava/util/regex/Pattern;

    .line 434
    const-string v0, "(\\d{2})\\s*(\u0433\\b|\u0433\\.|\u0433\u043e\u0434)|\u043d\u0430\\s+(\\d{2})\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->AGE:Ljava/util/regex/Pattern;

    .line 435
    const-string v0, "(\\d{2,3})\\s*(\u043a\u0433|kg|\u043a\u0438\u043b\u0430)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->KG:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lcom/isaigu/gymapp/ai/AiBrief$Patch;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AiBrief$Patch;",
            "Lcom/isaigu/gymapp/ai/AutoModel$Input;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 231
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    if-nez p0, :cond_c

    move-object v0, v4

    .line 361
    :goto_b
    return-object v0

    .line 235
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sex:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sex:Ljava/lang/String;

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sex:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Sex;

    move-result-object v0

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    .line 237
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v1, :cond_146

    const-string v0, "\u0436\u0435\u043d\u0430"

    :goto_2e
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_31
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    if-eq v0, v1, :cond_5f

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->age:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->age:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0433."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_5f
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->weightKg:Ljava/lang/Integer;

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->weightKg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-wide v6, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_95

    .line 244
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->weightKg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->weightKg:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_95
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->heightCm:Ljava/lang/Integer;

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->heightCm:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-eq v0, v1, :cond_c3

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->heightCm:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->heightCm:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_c3
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->fitness:Ljava/lang/String;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->fitness:Ljava/lang/String;

    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->fitness:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    move-result-object v0

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 253
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_14a

    const-string v0, "\u043d\u0438\u0441\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    :goto_e5
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_e8
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sessions:Ljava/lang/Integer;

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sessions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    if-le v0, v1, :cond_10b

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sessions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 258
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sessions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_156

    const-string v0, "\u043f\u044a\u0440\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    :goto_108
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_10b
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->contraAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_111
    :goto_111
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_172

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 262
    if-eqz v1, :cond_12f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_111

    .line 263
    :cond_12f
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->screening:Lcom/isaigu/gymapp/ai/AiModel$Screening;

    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiModel$Screening;->contraindications:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v1, Lcom/isaigu/gymapp/ai/AiBrief;->CONTRA_BG_KEYS:[Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiBrief;->CONTRA_BG:[Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/ai/AiBrief;->name(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_111

    .line 237
    :cond_146
    const-string v0, "\u043c\u044a\u0436"

    goto/16 :goto_2e

    .line 254
    :cond_14a
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_153

    const-string v0, "\u0432\u0438\u0441\u043e\u043a\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    goto :goto_e5

    :cond_153
    const-string v0, "\u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    goto :goto_e5

    .line 258
    :cond_156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u043e\u043f\u0438\u0442: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sessions:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0438"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_108

    .line 267
    :cond_172
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->extraOn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_178
    :goto_178
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_194

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->setExtra(Lcom/isaigu/gymapp/ai/AutoModel$Extra;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 269
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->extraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_178

    .line 272
    :cond_194
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19a
    :goto_19a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19a

    .line 274
    sget-object v2, Lcom/isaigu/gymapp/ai/AiBrief;->COND:[Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiBrief;->COND_BG:[Ljava/lang/String;

    invoke-static {v0, v2, v5}, Lcom/isaigu/gymapp/ai/AiBrief;->name(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    const-string v2, "diastasis"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 276
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iput-boolean v9, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    goto :goto_19a

    .line 280
    :cond_1c6
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1cc
    :goto_1cc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_205

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0431\u0435\u0437 \u201e"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/isaigu/gymapp/ai/AiBrief;->COND:[Ljava/lang/String;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiBrief;->COND_BG:[Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiBrief;->name(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u201c"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1cc

    .line 285
    :cond_205
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->todayAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20b
    :goto_20b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 286
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20b

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0434\u043d\u0435\u0441: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/isaigu/gymapp/ai/AiBrief;->TODAY_BG_KEYS:[Ljava/lang/String;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiBrief;->TODAY_BG:[Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiBrief;->name(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20b

    .line 290
    :cond_23e
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusAdd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_244
    :goto_244
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_277

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 291
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_244

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS:[Ljava/lang/String;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS_BG:[Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiBrief;->name(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2191"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_244

    .line 295
    :cond_277
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27d
    :goto_27d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 296
    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27d

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS:[Ljava/lang/String;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS_BG:[Ljava/lang/String;

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/ai/AiBrief;->name(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2014 \u0431\u0435\u0437 \u0430\u043a\u0446\u0435\u043d\u0442"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27d

    .line 301
    :cond_2b0
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v7

    .line 302
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->goal:Ljava/lang/String;

    if-eqz v0, :cond_401

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->goal:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v0

    .line 303
    :goto_2c0
    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->kind:Ljava/lang/String;

    if-eqz v1, :cond_405

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->kind:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-result-object v1

    .line 304
    :goto_2ca
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->exercises:Ljava/lang/Boolean;

    if-eqz v2, :cond_2dc

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->exercises:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2dc

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->kind:Ljava/lang/String;

    if-nez v2, :cond_2dc

    .line 305
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 308
    :cond_2dc
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->program:Ljava/lang/String;

    if-eqz v2, :cond_468

    .line 309
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->program:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v5

    .line 310
    if-eqz v5, :cond_464

    .line 311
    iget-object v2, v5, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 312
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_461

    .line 313
    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AiBrief;->goalOf(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_2fb

    move-object v0, v1

    :cond_2fb
    move-object v6, v0

    .line 318
    :goto_2fc
    if-nez v5, :cond_45b

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne v6, v0, :cond_306

    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-eq v2, v0, :cond_45b

    .line 319
    :cond_306
    invoke-static {v6, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_45e

    .line 321
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v2, :cond_409

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 322
    :goto_316
    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    .line 324
    :goto_31b
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45b

    .line 325
    invoke-static {v6, v2, p1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 328
    :goto_325
    if-eqz v0, :cond_35f

    invoke-static {v6, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35f

    .line 329
    iput-object v6, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 330
    iput-object v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    .line 331
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iput-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    .line 332
    if-eqz v7, :cond_345

    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35f

    .line 333
    :cond_345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 336
    :cond_35f
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->intensity:Ljava/lang/String;

    if-eqz v0, :cond_37d

    .line 337
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->intensity:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->valueOf(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    move-result-object v1

    .line 338
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->aiIntensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-eq v1, v0, :cond_37d

    .line 339
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->STANDARD:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v1, v0, :cond_40d

    move-object v0, v3

    :goto_372
    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->aiIntensity:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    .line 340
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->SOFT:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v1, v0, :cond_410

    const-string v0, "\u043f\u043e-\u043c\u0435\u043a\u043e"

    :goto_37a
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_37d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->minutes:Ljava/lang/Integer;

    if-eqz v0, :cond_3a7

    .line 344
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->minutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->aiSeconds:Ljava/lang/Integer;

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->minutes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d (\u0434\u043e \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_3a7
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->doublePulse:Ljava/lang/Boolean;

    if-eqz v0, :cond_3ca

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->doublePulse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eq v0, v1, :cond_3ca

    .line 348
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->doublePulse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    .line 349
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->doublePulse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_41c

    const-string v0, "\u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    :goto_3c7
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_3ca
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->zonesOff:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3d0
    :goto_3d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    invoke-static {p1, v0, v8}, Lcom/isaigu/gymapp/ai/AiBrief;->force(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3d0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES:[Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES_BG:[Ljava/lang/String;

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/ai/AiBrief;->name(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2014 \u0438\u0437\u043a\u043b."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d0

    .line 302
    :cond_401
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto/16 :goto_2c0

    .line 303
    :cond_405
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto/16 :goto_2ca

    .line 321
    :cond_409
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto/16 :goto_316

    :cond_40d
    move-object v0, v1

    .line 339
    goto/16 :goto_372

    .line 340
    :cond_410
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Intensity;->INTENSE:Lcom/isaigu/gymapp/ai/AutoModel$Intensity;

    if-ne v1, v0, :cond_418

    const-string v0, "\u043f\u043e-\u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u043d\u043e"

    goto/16 :goto_37a

    :cond_418
    const-string v0, "\u0441\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u043d\u043e"

    goto/16 :goto_37a

    .line 349
    :cond_41c
    const-string v0, "\u0431\u0435\u0437 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    goto :goto_3c7

    .line 356
    :cond_41f
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->zonesOn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_425
    :goto_425
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_458

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    const/16 v2, 0x64

    invoke-static {p1, v0, v2}, Lcom/isaigu/gymapp/ai/AiBrief;->force(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_425

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES:[Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES_BG:[Ljava/lang/String;

    invoke-static {v0, v3, v5}, Lcom/isaigu/gymapp/ai/AiBrief;->name(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u2014 \u0432\u043a\u043b."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_425

    :cond_458
    move-object v0, v4

    .line 361
    goto/16 :goto_b

    :cond_45b
    move-object v0, v5

    goto/16 :goto_325

    :cond_45e
    move-object v1, v0

    goto/16 :goto_31b

    :cond_461
    move-object v6, v0

    goto/16 :goto_2fc

    :cond_464
    move-object v2, v1

    move-object v6, v0

    goto/16 :goto_2fc

    :cond_468
    move-object v5, v3

    move-object v2, v1

    move-object v6, v0

    goto/16 :goto_2fc
.end method

.method public static channel(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 402
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->index(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static channelOrCond(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 397
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->COND:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->index(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static clean(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 592
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

    .line 593
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_1f

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method private static extraName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 420
    const-string v0, "diastasis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "\u0434\u0438\u0430\u0441\u0442\u0430\u0437\u0430"

    .line 428
    :cond_a
    :goto_a
    return-object p0

    .line 421
    :cond_b
    const-string v0, "breastfeeding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "\u043a\u044a\u0440\u043c\u0438"

    goto :goto_a

    .line 422
    :cond_16
    const-string v0, "cesarean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "\u0446\u0435\u0437\u0430\u0440\u043e\u0432\u043e"

    goto :goto_a

    .line 423
    :cond_21
    const-string v0, "backAcute"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string p0, "\u043e\u0441\u0442\u0440\u0430 \u0431\u043e\u043b\u043a\u0430 \u0432 \u0433\u044a\u0440\u0431\u0430"

    goto :goto_a

    .line 424
    :cond_2c
    const-string v0, "backRadiating"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string p0, "\u0431\u043e\u043b\u043a\u0430 \u043a\u044a\u043c \u043a\u0440\u0430\u043a\u0430"

    goto :goto_a

    .line 425
    :cond_37
    const-string v0, "backTrauma"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p0, "\u0442\u0440\u0430\u0432\u043c\u0430 \u043d\u0430 \u0433\u044a\u0440\u0431\u0430"

    goto :goto_a

    .line 426
    :cond_42
    const-string v0, "backSurgery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p0, "\u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f \u043d\u0430 \u0433\u044a\u0440\u0431\u0430"

    goto :goto_a

    .line 427
    :cond_4d
    const-string v0, "injectable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "\u0431\u043e\u0442\u043e\u043a\u0441 / \u0444\u0438\u043b\u044a\u0440"

    goto :goto_a
.end method

.method private static force(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;I)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 380
    sget-object v1, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/isaigu/gymapp/ai/AiBrief;->index(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 381
    if-gez v1, :cond_a

    .line 392
    :cond_9
    :goto_9
    return v0

    .line 384
    :cond_a
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    if-nez v2, :cond_1b

    .line 385
    sget-object v2, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    .line 386
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 388
    :cond_1b
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    aget v2, v2, v1

    if-eq v2, p2, :cond_9

    .line 391
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->zoneForce:[I

    aput p2, v0, v1

    .line 392
    const/4 v0, 0x1

    goto :goto_9
.end method

.method static goalOf(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;
    .registers 6

    .prologue
    .line 155
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    .line 156
    iget-object v4, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 160
    :goto_17
    return-object v0

    .line 155
    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 160
    :cond_1c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static guest(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 366
    if-gtz p1, :cond_14

    const/4 v0, 0x0

    :goto_4
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    .line 367
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1b

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    :goto_b
    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    .line 368
    if-gtz p2, :cond_23

    const/16 v0, 0x20

    :goto_11
    iput v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 369
    return-void

    .line 366
    :cond_14
    if-ne p1, v1, :cond_18

    const/4 v0, 0x3

    goto :goto_4

    :cond_18
    const/16 v0, 0xc

    goto :goto_4

    .line 367
    :cond_1b
    if-ne p1, v1, :cond_20

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->MID:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_b

    :cond_20
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    goto :goto_b

    .line 368
    :cond_23
    if-ne p2, v1, :cond_28

    const/16 v0, 0x32

    goto :goto_11

    :cond_28
    const/16 v0, 0x42

    goto :goto_11
.end method

.method public static guestAgeBand(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I
    .registers 3

    .prologue
    .line 376
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x2

    goto :goto_7
.end method

.method public static guestExperience(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I
    .registers 3

    .prologue
    .line 372
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

.method private static varargs has(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 539
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, p1, v1

    .line 540
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 541
    const/4 v0, 0x1

    .line 544
    :cond_e
    return v0

    .line 539
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private static index(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 553
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 554
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 558
    :goto_c
    return v0

    .line 553
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 558
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static line(Ljava/util/List;)Ljava/lang/String;
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
    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 529
    const-string v3, " \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 533
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    const/4 v0, 0x0

    .line 599
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 600
    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_22

    .line 601
    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    :cond_22
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 604
    goto :goto_d

    .line 605
    :cond_2b
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static local(Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/AiBrief$Patch;
    .registers 13

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 442
    new-instance v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiBrief$Patch;-><init>()V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_59c

    const-string v0, ""

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 444
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\u0431\u043e\u043b"

    aput-object v3, v0, v7

    const-string v3, "\u0441\u0445\u0432\u0430\u043d"

    aput-object v3, v0, v6

    const-string v3, "\u0442\u0440\u0430\u0432\u043c"

    aput-object v3, v0, v8

    const-string v3, "\u043a\u043e\u043d\u0442\u0443\u0437"

    aput-object v3, v0, v9

    const-string v3, "\u043f\u0440\u043e\u0431\u043b\u0435\u043c"

    aput-object v3, v0, v10

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 445
    if-eqz p1, :cond_da

    .line 446
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    aput-object v4, v3, v7

    const-string v4, "\u043f\u043e \u043b\u0435\u043a\u043e"

    aput-object v4, v3, v6

    const-string v4, "\u043d\u0430\u043c\u0430\u043b\u0438"

    aput-object v4, v3, v8

    const-string v4, "\u043f\u043e-\u0441\u043b\u0430\u0431\u043e"

    aput-object v4, v3, v9

    const-string v4, "\u043f\u043e \u0441\u043b\u0430\u0431\u043e"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "\u043c\u043d\u043e\u0433\u043e \u0435 \u0441\u0438\u043b\u043d\u043e"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "\u0441\u0438\u043b\u043d\u043e \u0435"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5ac

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    const-string v4, "softer"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_72
    :goto_72
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u043f\u0430\u0443\u0437\u0430"

    aput-object v4, v3, v7

    const-string v4, "\u0441\u043f\u0440\u0438 "

    aput-object v4, v3, v6

    const-string v4, "\u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    const-string v4, "pause"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_8d
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    aput-object v4, v3, v7

    const-string v4, "\u043f\u0443\u0441\u043d\u0438"

    aput-object v4, v3, v6

    const-string v4, "\u0441\u0442\u0430\u0440\u0442"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a8

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    const-string v4, "resume"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_a8
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u043f\u0440\u0435\u0441\u043a\u043e\u0447\u0438"

    aput-object v4, v3, v7

    const-string v4, "\u0441\u043b\u0435\u0434\u0432\u0430\u0449"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bf

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    const-string v4, "skip"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_bf
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    aput-object v4, v3, v7

    const-string v4, "\u043f\u0440\u0438\u043a\u043b\u044e\u0447"

    aput-object v4, v3, v6

    const-string v4, "\u043a\u0440\u0430\u0439"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_da

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    const-string v4, "to_recovery"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_da
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u043a\u043e\u043b\u044f\u043d"

    aput-object v4, v3, v7

    const-string v4, "\u043a\u043e\u043b\u0435\u043d"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f1

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "knees"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_f1
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\u043a\u0440\u044a\u0441\u0442"

    aput-object v4, v3, v7

    const-string v4, "\u0434\u0438\u0441\u043a\u043e\u0432\u0430"

    aput-object v4, v3, v6

    const-string v4, "\u043b\u0443\u043c\u0431\u0430\u0433"

    aput-object v4, v3, v8

    const-string v4, "\u0438\u0448\u0438\u0430\u0441"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11b

    if-eqz v0, :cond_122

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u0433\u0440\u044a\u0431"

    aput-object v4, v3, v7

    const-string v4, "\u0433\u044a\u0440\u0431"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_122

    :cond_11b
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "back"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_122
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u0432\u0440\u0430\u0442"

    aput-object v4, v3, v7

    const-string v4, "\u0448\u0438\u044f"

    aput-object v4, v3, v6

    const-string v4, "\u0448\u0438\u0435\u043d"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13d

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "neck"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_13d
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\u0441\u0442\u0430\u0432\u0438"

    aput-object v4, v3, v7

    const-string v4, "\u0441\u0442\u0430\u0432\u0438\u0442"

    aput-object v4, v3, v6

    const-string v4, "\u0430\u0440\u0442\u0440\u0438\u0442"

    aput-object v4, v3, v8

    const-string v4, "\u0430\u0440\u0442\u0440\u043e\u0437"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15c

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "joints"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_15c
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "\u043e\u0441\u0442\u0435\u043e\u043f\u043e\u0440"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16f

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "osteo"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_16f
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u0440\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u0438 \u0432\u0435\u043d\u0438"

    aput-object v4, v3, v7

    const-string v4, "\u0432\u0430\u0440\u0438\u043a\u043e\u0437"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_186

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "varicose"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_186
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "\u043f\u043e \u0446\u044f\u043b \u0434\u0435\u043d \u0441\u0435\u0434\u0438"

    aput-object v4, v3, v7

    const-string v4, "\u0441\u0435\u0434\u0438 \u043f\u043e \u0446\u044f\u043b \u0434\u0435\u043d"

    aput-object v4, v3, v6

    const-string v4, "\u043e\u0444\u0438\u0441"

    aput-object v4, v3, v8

    const-string v4, "\u0437\u0430\u0441\u0435\u0434\u043d\u0430\u043b"

    aput-object v4, v3, v9

    const-string v4, "\u0441\u0435\u0434\u044f\u0449"

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "desk"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_1aa
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u0441\u0442\u0440\u0435\u0441"

    aput-object v4, v3, v7

    const-string v4, "\u0442\u0440\u0435\u0432\u043e\u0436"

    aput-object v4, v3, v6

    const-string v4, "\u043d\u0430\u043f\u0440\u0435\u0433\u043d\u0430\u0442"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c5

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "stress"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_1c5
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u0431\u0435\u0437\u0441\u044a\u043d\u0438"

    aput-object v4, v3, v7

    const-string v4, "\u0441\u043f\u0438 \u043b\u043e\u0448\u043e"

    aput-object v4, v3, v6

    const-string v4, "\u043b\u043e\u0448 \u0441\u044a\u043d"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "sleep"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_1e0
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u0440\u043e\u0434\u0438"

    aput-object v4, v3, v7

    const-string v4, "\u0441\u043b\u0435\u0434 \u0440\u0430\u0436\u0434\u0430\u043d\u0435"

    aput-object v4, v3, v6

    const-string v4, "\u0440\u043e\u0434\u0438\u043b\u0430"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1fb

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "postpartum"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_1fb
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "\u0434\u0438\u0430\u0441\u0442\u0430\u0437"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20e

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "diastasis"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_20e
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u043c\u0435\u043d\u043e\u043f\u0430\u0443\u0437"

    aput-object v4, v3, v7

    const-string v4, "\u043a\u043b\u0438\u043c\u0430\u043a\u0441"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_225

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "menopause"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_225
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u0449\u0438\u0442\u043e\u0432\u0438\u0434"

    aput-object v4, v3, v7

    const-string v4, "\u0445\u0430\u0448\u0438\u043c\u043e\u0442\u043e"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23c

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "thyroid"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_23c
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\u0437\u0430\u0434\u044a\u0440\u0436\u0430 \u0432\u043e\u0434\u0430"

    aput-object v4, v3, v7

    const-string v4, "\u043e\u0442\u043e\u0446"

    aput-object v4, v3, v6

    const-string v4, "\u043e\u0442\u043e\u043a"

    aput-object v4, v3, v8

    const-string v4, "\u043f\u043e\u0434\u0443\u0442"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25b

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "water"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_25b
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "\u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26e

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "sensitive"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    :cond_26e
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\u0442\u0440\u0430\u0432\u043c"

    aput-object v4, v3, v7

    const-string v4, "\u043a\u043e\u043d\u0442\u0443\u0437"

    aput-object v4, v3, v6

    const-string v4, "\u0441\u043a\u044a\u0441\u0430\u043d"

    aput-object v4, v3, v8

    const-string v4, "\u0440\u0430\u0437\u0442\u0435\u0433\u043d"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28d

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "injury"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_28d
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u0438\u043d\u0441\u0443\u043b\u0438\u043d\u043e\u0432"

    aput-object v4, v3, v7

    const-string v4, "\u043f\u0440\u0435\u0434\u0434\u0438\u0430\u0431\u0435\u0442"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a4

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "prediabetes"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_2a4
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u043f\u043e\u043b\u0438\u043a\u0438\u0441\u0442"

    aput-object v4, v3, v7

    const-string v4, "\u0441\u043f\u043a\u044f"

    aput-object v4, v3, v6

    const-string v4, "pcos"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2bf

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "pcos"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_2bf
    if-eqz v0, :cond_2cd

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "\u043a\u043e\u0440\u0435\u043c"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e8

    .line 472
    :cond_2cd
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u043a\u043e\u0440\u0435\u043c"

    aput-object v4, v3, v7

    const-string v4, "\u0442\u0430\u043b\u0438\u044f"

    aput-object v4, v3, v6

    const-string v4, "\u043f\u043b\u043e\u0447\u043a\u0438"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e8

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusAdd:Ljava/util/List;

    const-string v4, "abs"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_2e8
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\u0441\u0435\u0434\u0430\u043b\u0438\u0449"

    aput-object v4, v3, v7

    const-string v4, "\u0434\u0443\u043f\u0435"

    aput-object v4, v3, v6

    const-string v4, "\u0437\u0430\u0434\u043d\u0438\u043a"

    aput-object v4, v3, v8

    const-string v4, "\u0433\u043b\u0443\u0442\u0435\u0443\u0441"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_307

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusAdd:Ljava/util/List;

    const-string v4, "glutes"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_307
    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    const-string v4, "knees"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32c

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u043a\u0440\u0430\u043a\u0430"

    aput-object v4, v3, v7

    const-string v4, "\u0431\u0435\u0434\u0440\u0430"

    aput-object v4, v3, v6

    const-string v4, "\u0431\u0435\u0434\u0440"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32c

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusAdd:Ljava/util/List;

    const-string v4, "legs"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_32c
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\u0440\u044a\u0446\u0435"

    aput-object v4, v3, v7

    const-string v4, "\u0440\u044a\u043a\u0430"

    aput-object v4, v3, v6

    const-string v4, "\u0431\u0438\u0446\u0435\u043f\u0441"

    aput-object v4, v3, v8

    const-string v4, "\u0442\u0440\u0438\u0446\u0435\u043f\u0441"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34b

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusAdd:Ljava/util/List;

    const-string v4, "arms"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_34b
    if-nez v0, :cond_364

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u0433\u0440\u044a\u0431"

    aput-object v4, v3, v7

    const-string v4, "\u0433\u044a\u0440\u0431"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_364

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusAdd:Ljava/util/List;

    const-string v4, "back"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_364
    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "\u0433\u044a\u0440\u0434\u0438"

    aput-object v4, v3, v7

    const-string v4, "\u0433\u0440\u044a\u0434\u0435\u043d"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_387

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "\u043a\u044a\u0440\u043c\u0438"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_387

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusAdd:Ljava/util/List;

    const-string v4, "chest"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_387
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\u043d\u0435\u0434\u043e\u0441\u043f\u0430"

    aput-object v4, v3, v7

    const-string v4, "\u043d\u0435 \u0435 \u0441\u043f\u0430\u043b"

    aput-object v4, v3, v6

    const-string v4, "\u043c\u0430\u043b\u043a\u043e \u0441\u044a\u043d"

    aput-object v4, v3, v8

    const-string v4, "\u043d\u0435 \u0441\u043f\u0430"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a6

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->todayAdd:Ljava/util/List;

    const-string v4, "t_sleep"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_3a6
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\u0442\u043e\u043a\u0443-\u0449\u043e \u044f\u0434\u0435"

    aput-object v4, v3, v7

    const-string v4, "\u0442\u043e\u043a\u0443 \u0449\u043e \u044f\u0434\u0435"

    aput-object v4, v3, v6

    const-string v4, "\u043d\u0430\u0445\u0440\u0430\u043d"

    aput-object v4, v3, v8

    const-string v4, "\u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c5

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->todayAdd:Ljava/util/List;

    const-string v4, "t_food"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_3c5
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "\u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u0432\u0447\u0435\u0440\u0430"

    aput-object v4, v3, v7

    const-string v4, "\u0442\u0440\u0435\u043d\u0438\u0440\u0430\u043b\u0430 \u0432\u0447\u0435\u0440\u0430"

    aput-object v4, v3, v6

    const-string v4, "\u0442\u0440\u0435\u043d\u0438\u0440\u0430\u043b \u0432\u0447\u0435\u0440\u0430"

    aput-object v4, v3, v8

    const-string v4, "\u0444\u0438\u0442\u043d\u0435\u0441 \u0432\u0447\u0435\u0440\u0430"

    aput-object v4, v3, v9

    const-string v4, "\u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u0434\u043d\u0435\u0441"

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e9

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->todayAdd:Ljava/util/List;

    const-string v4, "t_active"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_3e9
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0442\u0440\u0435\u0441\u043a\u0430"

    aput-object v4, v3, v7

    const-string v4, "\u0441\u0445\u0432\u0430\u043d\u0430\u0442"

    aput-object v4, v3, v6

    const-string v4, "\u0431\u043e\u043b\u044f\u0442 \u043c\u0443\u0441\u043a\u0443\u043b"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_404

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->todayAdd:Ljava/util/List;

    const-string v4, "t_sore"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_404
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u0446\u0438\u043a\u044a\u043b"

    aput-object v4, v3, v7

    const-string v4, "\u043c\u0435\u043d\u0441\u0442\u0440\u0443\u0430"

    aput-object v4, v3, v6

    const-string v4, "\u043c\u0435\u043d\u0437\u0438\u0441"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41f

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->todayAdd:Ljava/util/List;

    const-string v4, "t_period"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_41f
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "\u0431\u0440\u0435\u043c\u0435\u043d"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_432

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->contraAdd:Ljava/util/List;

    const-string v4, "pregnancy"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_432
    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "\u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a"

    aput-object v4, v3, v7

    const-string v4, "\u043f\u0435\u0439\u0441\u043c\u0435\u043a"

    aput-object v4, v3, v6

    const-string v4, "\u043a\u0430\u0440\u0434\u0438\u043e\u0441\u0442\u0438\u043c\u0443\u043b\u0430\u0442\u043e\u0440"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44d

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->contraAdd:Ljava/util/List;

    const-string v4, "implant"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_44d
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "\u043a\u044a\u0440\u043c\u0438"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_460

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->extraOn:Ljava/util/List;

    const-string v4, "breastfeeding"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_460
    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "\u0446\u0435\u0437\u0430\u0440\u043e\u0432"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_473

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->extraOn:Ljava/util/List;

    const-string v4, "cesarean"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_473
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "\u043e\u0442\u0441\u043b\u0430\u0431"

    aput-object v4, v3, v7

    const-string v4, "\u0441\u0432\u0430\u043b\u0438"

    aput-object v4, v3, v6

    const-string v4, "\u043a\u0438\u043b\u043e\u0433\u0440\u0430\u043c"

    aput-object v4, v3, v8

    const-string v4, "\u043c\u0430\u0437\u043d\u0438\u043d"

    aput-object v4, v3, v9

    const-string v4, "\u0438\u0437\u0433\u0430\u0440\u044f"

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d2

    const-string v0, "SLIM"

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->goal:Ljava/lang/String;

    .line 491
    :cond_494
    :goto_494
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\u043f\u0430\u0441\u0438\u0432\u043d"

    aput-object v3, v0, v7

    const-string v3, "\u043b\u0435\u0436\u0438"

    aput-object v3, v0, v6

    const-string v3, "\u0432 \u043f\u043e\u043a\u043e\u0439"

    aput-object v3, v0, v8

    const-string v3, "\u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    aput-object v3, v0, v9

    const-string v3, "\u043d\u0435 \u043c\u043e\u0436\u0435 \u0434\u0430 \u0441\u0435 \u0434\u0432\u0438\u0436\u0438"

    aput-object v3, v0, v10

    const/4 v3, 0x5

    const-string v4, "\u043d\u0435 \u0438\u0441\u043a\u0430 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_617

    .line 492
    const-string v0, "PASSIVE"

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->kind:Ljava/lang/String;

    .line 493
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->exercises:Ljava/lang/Boolean;

    .line 497
    :cond_4be
    :goto_4be
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "\u043f\u043e-\u043b\u0435\u043a\u043e"

    aput-object v3, v0, v7

    const-string v3, "\u043f\u043e \u043b\u0435\u043a\u043e"

    aput-object v3, v0, v6

    const-string v3, "\u043d\u0435\u0436\u043d\u043e"

    aput-object v3, v0, v8

    const-string v3, "\u0432\u043d\u0438\u043c\u0430\u0442\u0435\u043b\u043d\u043e"

    aput-object v3, v0, v9

    const-string v3, "\u043d\u0430\u0447\u0438\u043d\u0430\u0435\u0449"

    aput-object v3, v0, v10

    const/4 v3, 0x5

    const-string v4, "\u043f\u044a\u0440\u0432\u0438 \u043f\u044a\u0442"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "\u043f\u044a\u0440\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_631

    .line 498
    if-nez p1, :cond_4eb

    const-string v0, "SOFT"

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->intensity:Ljava/lang/String;

    .line 502
    :cond_4eb
    :goto_4eb
    new-array v0, v10, [Ljava/lang/String;

    const-string v3, "\u043f\u044a\u0440\u0432\u0438 \u043f\u044a\u0442"

    aput-object v3, v0, v7

    const-string v3, "\u043f\u044a\u0440\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    aput-object v3, v0, v6

    const-string v3, "\u043d\u0438\u043a\u043e\u0433\u0430 \u043d\u0435 \u0435"

    aput-object v3, v0, v8

    const-string v3, "\u0437\u0430 \u043f\u044a\u0440\u0432\u0438"

    aput-object v3, v0, v9

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_509

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sessions:Ljava/lang/Integer;

    .line 503
    :cond_509
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->MIN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_52a

    .line 505
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 506
    const/4 v3, 0x5

    if-lt v0, v3, :cond_52a

    const/16 v3, 0x3c

    if-gt v0, v3, :cond_52a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->minutes:Ljava/lang/Integer;

    .line 508
    :cond_52a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->AGE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_552

    .line 510
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_651

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_540
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 511
    const/16 v3, 0xe

    if-lt v0, v3, :cond_552

    const/16 v3, 0x5f

    if-gt v0, v3, :cond_552

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->age:Ljava/lang/Integer;

    .line 513
    :cond_552
    sget-object v0, Lcom/isaigu/gymapp/ai/AiBrief;->KG:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_574

    .line 515
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 516
    const/16 v3, 0x23

    if-lt v0, v3, :cond_574

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_574

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->weightKg:Ljava/lang/Integer;

    .line 518
    :cond_574
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, " \u043c\u044a\u0436"

    aput-object v3, v0, v7

    const-string v3, "\u043c\u044a\u0436\u044a\u0442"

    aput-object v3, v0, v6

    const-string v3, " \u0442\u043e\u0439 "

    aput-object v3, v0, v8

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_657

    const-string v0, "MALE"

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sex:Ljava/lang/String;

    .line 520
    :cond_58c
    :goto_58c
    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sessions:Ljava/lang/Integer;

    if-eqz v0, :cond_59b

    iget-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sessions:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_59b

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sessions:Ljava/lang/Integer;

    .line 521
    :cond_59b
    return-object v1

    .line 443
    :cond_59c
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x45d

    const/16 v4, 0x438

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19

    .line 447
    :cond_5ac
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "\u043f\u043e-\u0441\u0438\u043b\u043d\u043e"

    aput-object v4, v3, v7

    const-string v4, "\u043f\u043e \u0441\u0438\u043b\u043d\u043e"

    aput-object v4, v3, v6

    const-string v4, "\u0443\u0432\u0435\u043b\u0438\u0447\u0438"

    aput-object v4, v3, v8

    const-string v4, "\u043a\u0430\u0447\u0438"

    aput-object v4, v3, v9

    const-string v4, "\u0441\u043b\u0430\u0431\u043e \u0435"

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_72

    iget-object v3, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    const-string v4, "stronger"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_72

    .line 489
    :cond_5d2
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "\u0441\u0442\u044f\u0433\u0430"

    aput-object v4, v3, v7

    const-string v4, "\u0442\u043e\u043d\u0443\u0441"

    aput-object v4, v3, v6

    const-string v4, "\u043e\u0444\u043e\u0440\u043c"

    aput-object v4, v3, v8

    const-string v4, "\u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    aput-object v4, v3, v9

    const-string v4, "\u0441\u0438\u043b\u0430"

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f5

    const-string v0, "TONE"

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->goal:Ljava/lang/String;

    goto/16 :goto_494

    .line 490
    :cond_5f5
    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432"

    aput-object v4, v3, v7

    const-string v4, "\u0440\u0435\u043b\u0430\u043a\u0441"

    aput-object v4, v3, v6

    const-string v4, "\u043e\u0442\u043f\u0443\u0441\u043a\u0430"

    aput-object v4, v3, v8

    const-string v4, "\u0437\u0434\u0440\u0430\u0432\u0435"

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_611

    if-eqz v0, :cond_494

    if-nez p1, :cond_494

    :cond_611
    const-string v0, "HEALTH"

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->goal:Ljava/lang/String;

    goto/16 :goto_494

    .line 494
    :cond_617
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, "\u0430\u043a\u0442\u0438\u0432\u043d"

    aput-object v3, v0, v7

    const-string v3, "\u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    aput-object v3, v0, v6

    const-string v3, "\u0441 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    aput-object v3, v0, v8

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4be

    .line 495
    const-string v0, "ACTIVE"

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->kind:Ljava/lang/String;

    goto/16 :goto_4be

    .line 499
    :cond_631
    if-nez p1, :cond_4eb

    new-array v0, v10, [Ljava/lang/String;

    const-string v3, "\u0438\u043d\u0442\u0435\u043d\u0437\u0438\u0432\u043d"

    aput-object v3, v0, v7

    const-string v3, "\u043f\u043e-\u0442\u0435\u0436\u043a\u043e"

    aput-object v3, v0, v6

    const-string v3, "\u0437\u0434\u0440\u0430\u0432\u043e"

    aput-object v3, v0, v8

    const-string v3, "\u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u043d\u043e"

    aput-object v3, v0, v9

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4eb

    .line 500
    const-string v0, "INTENSE"

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->intensity:Ljava/lang/String;

    goto/16 :goto_4eb

    .line 510
    :cond_651
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_540

    .line 519
    :cond_657
    new-array v0, v9, [Ljava/lang/String;

    const-string v3, " \u0436\u0435\u043d\u0430"

    aput-object v3, v0, v7

    const-string v3, "\u0442\u044f "

    aput-object v3, v0, v6

    const-string v3, "\u043a\u043b\u0438\u0435\u043d\u0442\u043a\u0430\u0442\u0430"

    aput-object v3, v0, v8

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AiBrief;->has(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58c

    const-string v0, "FEMALE"

    iput-object v0, v1, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sex:Ljava/lang/String;

    goto/16 :goto_58c
.end method

.method public static menu()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoCatalog$Program;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_c
    if-ge v3, v6, :cond_46

    aget-object v7, v5, v3

    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->values()[Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    move-result-object v8

    array-length v9, v8

    move v1, v2

    :goto_16
    if-ge v1, v9, :cond_42

    aget-object v0, v8, v1

    .line 144
    invoke-static {v7, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_22
    :goto_22
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 145
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_22

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v11

    if-nez v11, :cond_22

    .line 146
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 143
    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 142
    :cond_42
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    .line 151
    :cond_46
    return-object v4
.end method

.method private static name(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 548
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiBrief;->index(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 549
    if-ltz v0, :cond_8

    aget-object p0, p2, v0

    :cond_8
    return-object p0
.end method

.method private static num(Ljava/lang/Object;II)Ljava/lang/Integer;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 573
    instance-of v1, p0, Ljava/lang/Number;

    if-nez v1, :cond_6

    .line 577
    :cond_5
    :goto_5
    return-object v0

    .line 576
    :cond_6
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 577
    int-to-long v4, p1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5

    int-to-long v4, p2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5
.end method

.method private static varargs oneOf(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 562
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 563
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_16

    aget-object v0, p1, v1

    .line 564
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 569
    :goto_11
    return-object v0

    .line 563
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 569
    :cond_16
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static parse(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AiBrief$Patch;
    .registers 11

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 169
    :try_start_5
    new-instance v0, Lcom/isaigu/gymapp/ai/AiBrief$Json;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiBrief$Json;->value()Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_d} :catch_2b0

    move-result-object v0

    .line 173
    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_13

    .line 221
    :cond_12
    :goto_12
    return-object v2

    .line 176
    :cond_13
    check-cast v0, Ljava/util/Map;

    .line 177
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "ok"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "patch"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_12

    .line 180
    const-string v1, "patch"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 181
    new-instance v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiBrief$Patch;-><init>()V

    .line 182
    iput-boolean v7, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->fromModel:Z

    .line 183
    const-string v1, "goal"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "TONE"

    aput-object v5, v4, v6

    const-string v5, "SLIM"

    aput-object v5, v4, v7

    const-string v5, "HEALTH"

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->oneOf(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->goal:Ljava/lang/String;

    .line 184
    const-string v1, "kind"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "ACTIVE"

    aput-object v5, v4, v6

    const-string v5, "PASSIVE"

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->oneOf(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->kind:Ljava/lang/String;

    .line 185
    const-string v1, "program"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2a0

    const-string v1, "program"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v1

    if-eqz v1, :cond_2a0

    .line 186
    const-string v1, "program"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_8c
    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->program:Ljava/lang/String;

    .line 187
    const-string v1, "sex"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "FEMALE"

    aput-object v5, v4, v6

    const-string v5, "MALE"

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->oneOf(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sex:Ljava/lang/String;

    .line 188
    const-string v1, "age"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0xe

    const/16 v5, 0x5f

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/ai/AiBrief;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->age:Ljava/lang/Integer;

    .line 189
    const-string v1, "weight_kg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x23

    const/16 v5, 0xc8

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/ai/AiBrief;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->weightKg:Ljava/lang/Integer;

    .line 190
    const-string v1, "height_cm"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x82

    const/16 v5, 0xdc

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/ai/AiBrief;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->heightCm:Ljava/lang/Integer;

    .line 191
    const-string v1, "fitness"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "LOW"

    aput-object v5, v4, v6

    const-string v5, "MID"

    aput-object v5, v4, v7

    const-string v5, "HIGH"

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->oneOf(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->fitness:Ljava/lang/String;

    .line 192
    const-string v1, "sessions"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x1f4

    invoke-static {v1, v6, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->sessions:Ljava/lang/Integer;

    .line 193
    const-string v1, "intensity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "SOFT"

    aput-object v5, v4, v6

    const-string v5, "STANDARD"

    aput-object v5, v4, v7

    const-string v5, "INTENSE"

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->oneOf(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->intensity:Ljava/lang/String;

    .line 194
    const-string v1, "minutes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x5

    const/16 v5, 0x3c

    invoke-static {v1, v4, v5}, Lcom/isaigu/gymapp/ai/AiBrief;->num(Ljava/lang/Object;II)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->minutes:Ljava/lang/Integer;

    .line 195
    const-string v1, "exercises"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2a3

    const-string v1, "exercises"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    :goto_137
    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->exercises:Ljava/lang/Boolean;

    .line 196
    const-string v1, "double_pulse"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2a6

    const-string v1, "double_pulse"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    :goto_14b
    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->doublePulse:Ljava/lang/Boolean;

    .line 197
    const-string v1, "focus_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS:[Ljava/lang/String;

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusAdd:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 198
    const-string v1, "focus_remove"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiBrief;->FOCUS:[Ljava/lang/String;

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->focusRemove:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 199
    const-string v1, "cond_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiBrief;->COND:[Ljava/lang/String;

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condAdd:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 200
    const-string v1, "cond_remove"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiBrief;->COND:[Ljava/lang/String;

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->condRemove:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 201
    const-string v1, "today_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiBrief;->TODAY_BG_KEYS:[Ljava/lang/String;

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->todayAdd:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 202
    const-string v1, "contra_add"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiBrief;->CONTRA_BG_KEYS:[Ljava/lang/String;

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->contraAdd:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 203
    const-string v1, "extra_on"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "diastasis"

    aput-object v4, v2, v6

    const-string v4, "breastfeeding"

    aput-object v4, v2, v7

    const-string v4, "cesarean"

    aput-object v4, v2, v8

    const-string v4, "backAcute"

    aput-object v4, v2, v9

    const/4 v4, 0x4

    const-string v5, "backRadiating"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "backTrauma"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "backSurgery"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "injectable"

    aput-object v5, v2, v4

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->extraOn:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 205
    const-string v1, "zones_off"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES:[Ljava/lang/String;

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->zonesOff:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 206
    const-string v1, "zones_on"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiBrief;->ZONES:[Ljava/lang/String;

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->zonesOn:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 207
    const-string v1, "live"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "softer"

    aput-object v4, v2, v6

    const-string v4, "stronger"

    aput-object v4, v2, v7

    const-string v4, "pause"

    aput-object v4, v2, v8

    const-string v4, "resume"

    aput-object v4, v2, v9

    const/4 v4, 0x4

    const-string v5, "skip"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "to_recovery"

    aput-object v5, v2, v4

    iget-object v4, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->live:Ljava/util/List;

    invoke-static {v1, v2, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->strings(Ljava/lang/Object;[Ljava/lang/String;Ljava/util/List;)V

    .line 209
    const-string v1, "note"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2a9

    const-string v1, "note"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xf0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiBrief;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_228
    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->note:Ljava/lang/String;

    .line 210
    const-string v1, "question"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_2ad

    .line 211
    const-string v1, "question"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 212
    const-string v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2ad

    const-string v1, "options"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_2ad

    .line 213
    const-string v1, "text"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiBrief;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->question:Ljava/lang/String;

    .line 214
    const-string v1, "options"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26c
    :goto_26c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 215
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_26c

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x4

    if-ge v0, v4, :cond_26c

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x28

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_26c

    .line 216
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiBrief$Patch;->options:Ljava/util/List;

    check-cast v1, Ljava/lang/String;

    const/16 v4, 0x28

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiBrief;->clean(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26c

    :cond_2a0
    move-object v1, v2

    .line 186
    goto/16 :goto_8c

    :cond_2a3
    move-object v1, v2

    .line 195
    goto/16 :goto_137

    :cond_2a6
    move-object v1, v2

    .line 196
    goto/16 :goto_14b

    .line 209
    :cond_2a9
    const-string v1, ""

    goto/16 :goto_228

    :cond_2ad
    move-object v2, v3

    .line 221
    goto/16 :goto_12

    .line 170
    :catch_2b0
    move-exception v0

    goto/16 :goto_12
.end method

.method static q(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    const/4 v1, 0x0

    .line 609
    if-nez p0, :cond_a

    .line 610
    const-string v0, "null"

    .line 623
    :goto_9
    return-object v0

    .line 612
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 613
    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_47

    .line 614
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 615
    if-eq v3, v7, :cond_20

    if-ne v3, v8, :cond_2a

    .line 616
    :cond_20
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 617
    :cond_2a
    const/16 v4, 0x20

    if-ge v3, v4, :cond_43

    .line 618
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "\\u%04x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 620
    :cond_43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 623
    :cond_47
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public static requestFields(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AutoModel$Input;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoCatalog$Program;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x7d

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v0, "\"text\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, ",\"context\":{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v0, "\"session\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_165

    const-string v0, "RUNNING"

    :goto_23
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, ",\"guest\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    const-string v0, ",\"goal\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v0, ",\"kind\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v0, ",\"program\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->programId:Ljava/lang/String;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v0, ",\"sex\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Sex;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v0, ",\"age\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    const-string v0, ",\"weight_kg\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    iget v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    if-lez v0, :cond_a4

    .line 113
    const-string v0, ",\"height_cm\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    :cond_a4
    const-string v0, ",\"fitness\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, ",\"sessions\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v0, ",\"focus\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->focus:Ljava/util/Set;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, ",\"cond\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->cond:Ljava/util/Set;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v0, ",\"today\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->today:Ljava/util/Set;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->list(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    const-string v0, ",\"menu\":["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_fd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 124
    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_112

    .line 125
    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_112
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->goalOf(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-result-object v1

    .line 128
    const-string v5, "{\"id\":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\"name\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\"goal\":"

    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_169

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->name()Ljava/lang/String;

    move-result-object v1

    :goto_144
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",\"kind\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 131
    goto :goto_fd

    .line 104
    :cond_165
    const-string v0, "PLANNING"

    goto/16 :goto_23

    .line 129
    :cond_169
    const-string v1, ""

    goto :goto_144

    .line 132
    :cond_16c
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    if-eqz p3, :cond_190

    if-eqz p4, :cond_190

    .line 134
    const-string v0, ",\"question\":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"answer\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/isaigu/gymapp/ai/AiBrief;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static setExtra(Lcom/isaigu/gymapp/ai/AutoModel$Extra;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 407
    const-string v2, "diastasis"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->diastasis:Z

    .line 416
    :goto_e
    if-nez v2, :cond_6d

    :goto_10
    move v1, v0

    :cond_11
    return v1

    .line 408
    :cond_12
    const-string v2, "breastfeeding"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->breastfeeding:Z

    goto :goto_e

    .line 409
    :cond_1f
    const-string v2, "cesarean"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    goto :goto_e

    .line 410
    :cond_2c
    const-string v2, "backAcute"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backAcute:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backAcute:Z

    goto :goto_e

    .line 411
    :cond_39
    const-string v2, "backRadiating"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backRadiating:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backRadiating:Z

    goto :goto_e

    .line 412
    :cond_46
    const-string v2, "backTrauma"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backTrauma:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backTrauma:Z

    goto :goto_e

    .line 413
    :cond_53
    const-string v2, "backSurgery"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backSurgery:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->backSurgery:Z

    goto :goto_e

    .line 414
    :cond_60
    const-string v2, "injectable"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->injectable:Z

    iput-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->injectable:Z

    goto :goto_e

    :cond_6d
    move v0, v1

    .line 416
    goto :goto_10
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
    .line 581
    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_5

    .line 589
    :cond_4
    return-void

    .line 584
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

    .line 585
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_b

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AiBrief;->index(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0xa

    if-ge v0, v3, :cond_b

    .line 586
    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method
