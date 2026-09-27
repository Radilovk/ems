.class public final Lcom/isaigu/gymapp/ai/AutoCatalog;
.super Ljava/lang/Object;
.source "AutoCatalog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    }
.end annotation


# static fields
.field private static final ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoCatalog$Program;",
            ">;"
        }
    .end annotation
.end field

.field public static final BACK_ACTIVE:Ljava/lang/String; = "back_active"

.field public static final BACK_PAIN:Ljava/lang/String; = "back_pain"

.field public static final CARDIO:Ljava/lang/String; = "cardio"

.field public static final CELLULITE:Ljava/lang/String; = "cellulite"

.field public static final CORE:Ljava/lang/String; = "core"

.field public static final DRAIN:Ljava/lang/String; = "drain"

.field static final ENV_MAX:D = -1.0

.field public static final GENERAL:Ljava/lang/String; = "general"

.field public static final GLUTES_LEGS:Ljava/lang/String; = "glutes"

.field public static final PASSIVE_METABOLIC:Ljava/lang/String; = "passive_metabolic"

.field public static final POSTPARTUM:Ljava/lang/String; = "postpartum"

.field public static final POWER:Ljava/lang/String; = "power"

.field public static final RECOVERY:Ljava/lang/String; = "recovery"

.field public static final SENIOR:Ljava/lang/String; = "senior"


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .prologue
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    .line 100
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "general"

    const-string v12, "\u041e\u0431\u0449\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u0438 \u043e\u0444\u043e\u0440\u043c\u044f\u043d\u0435"

    const-string v13, "Full-body toning"

    const-string v14, "\u0426\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e, \u0441\u0438\u043b\u043e\u0432\u0430 \u0440\u0430\u0431\u043e\u0442\u0430 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v15, "Whole body, strength work with exercises"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x46

    const/16 v1, 0x5a

    const/16 v2, 0x5a

    const/16 v3, 0x64

    const/16 v4, 0x5a

    const/16 v5, 0x50

    const/16 v6, 0x5a

    const/16 v7, 0x46

    const/16 v8, 0x50

    const/16 v9, 0x4b

    .line 102
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 100
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 103
    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    .line 105
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "glutes"

    const-string v12, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435 \u0438 \u0431\u0435\u0434\u0440\u0430"

    const-string v13, "Glutes & thighs"

    const-string v14, "\u0410\u043a\u0446\u0435\u043d\u0442 \u0432\u044a\u0440\u0445\u0443 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0438 \u0437\u0430\u0434\u043d\u043e\u0442\u043e \u0431\u0435\u0434\u0440\u043e"

    const-string v15, "Focus on glutes and hamstrings"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x3c

    const/16 v1, 0x55

    const/16 v2, 0x5f

    const/16 v3, 0x64

    const/16 v4, 0x46

    const/16 v5, 0x4b

    const/16 v6, 0x3c

    const/16 v7, 0x28

    const/16 v8, 0x28

    const/16 v9, 0x28

    .line 107
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 105
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 108
    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    .line 110
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "core"

    const-string v12, "\u0422\u0430\u043b\u0438\u044f \u0438 \u043a\u043e\u0440\u0435\u043c"

    const-string v13, "Waist & core"

    const-string v14, "\u041a\u043e\u0440\u0435\u043c \u0441 \u043a\u0440\u044a\u0441\u0442\u0430 \u0432 \u0431\u0430\u043b\u0430\u043d\u0441 \u2014 \u043f\u0430\u0437\u0438 \u0433\u0440\u044a\u0431\u043d\u0430\u043a\u0430"

    const-string v15, "Abs balanced with the lower back"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x28

    const/16 v1, 0x3c

    const/16 v2, 0x3c

    const/16 v3, 0x46

    const/16 v4, 0x64

    const/16 v5, 0x5a

    const/16 v6, 0x4b

    const/16 v7, 0x2d

    const/16 v8, 0x37

    const/16 v9, 0x28

    .line 112
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 110
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 113
    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    .line 115
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "power"

    const-string v12, "\u0421\u0438\u043b\u0430 \u0438 \u0431\u044a\u0440\u0437\u0438\u043d\u0430"

    const-string v13, "Power & speed"

    const-string v14, "\u0411\u044a\u0440\u0437\u0438 \u0432\u043b\u0430\u043a\u043d\u0430: \u043a\u0440\u0430\u0442\u044a\u043a \u0432\u0437\u0440\u0438\u0432\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441, \u0434\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v15, "Fast fibres: short explosive pulse, long rest"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x50

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/16 v3, 0x64

    const/16 v4, 0x55

    const/16 v5, 0x50

    const/16 v6, 0x5a

    const/16 v7, 0x46

    const/16 v8, 0x55

    const/16 v9, 0x50

    .line 117
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 115
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 118
    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide v2, 0x3ff2666666666666L    # 1.15

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 120
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "cardio"

    const-string v12, "\u041a\u0430\u0440\u0434\u0438\u043e-\u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0442\u043d\u0430"

    const-string v13, "Cardio-metabolic"

    const-string v14, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435: \u0441\u0438\u043b\u0430 \u2194 7 Hz, \u043f\u0443\u043b\u0441\u044a\u0442 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430 \u043d\u0430 \u043c\u0430\u0437\u043d\u0438\u043d\u0438\u0442\u0435"

    const-string v15, "Burn: strength \u2194 7 Hz, HR in the fat zone"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x5a

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/16 v3, 0x64

    const/16 v4, 0x46

    const/16 v5, 0x46

    const/16 v6, 0x50

    const/16 v7, 0x32

    const/16 v8, 0x3c

    const/16 v9, 0x46

    .line 122
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 120
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 123
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide v2, 0x3ff199999999999aL    # 1.1

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    .line 125
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "back_active"

    const-string v12, "\u0417\u0434\u0440\u0430\u0432 \u0433\u0440\u044a\u0431 \u0438 \u0441\u0442\u043e\u0439\u043a\u0430"

    const-string v13, "Healthy back & posture"

    const-string v14, "\u0413\u0440\u044a\u0431, \u043a\u0440\u044a\u0441\u0442 \u0438 \u043a\u043e\u0440\u0435\u043c \u0437\u0430\u0435\u0434\u043d\u043e, \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v15, "Back, lower back and core together, with exercises"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x32

    const/16 v1, 0x46

    const/16 v2, 0x50

    const/16 v3, 0x5a

    const/16 v4, 0x50

    const/16 v5, 0x64

    const/16 v6, 0x64

    const/16 v7, 0x50

    const/16 v8, 0x3c

    const/16 v9, 0x3c

    .line 127
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 125
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 128
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide v2, 0x3ff2666666666666L    # 1.15

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    .line 130
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "senior"

    const-string v12, "\u0417\u0434\u0440\u0430\u0432\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 50+"

    const-string v13, "Strong muscles 50+"

    const-string v14, "\u0421\u0438\u043b\u0430 \u0437\u0430 \u0435\u0436\u0435\u0434\u043d\u0435\u0432\u0438\u0435\u0442\u043e, \u0431\u0430\u0432\u043d\u0438 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u044f"

    const-string v15, "Strength for daily life, slow movements"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x50

    const/16 v1, 0x64

    const/16 v2, 0x5a

    const/16 v3, 0x64

    const/16 v4, 0x46

    const/16 v5, 0x50

    const/16 v6, 0x50

    const/16 v7, 0x3c

    const/16 v8, 0x3c

    const/16 v9, 0x46

    .line 132
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 130
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 133
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 135
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "cellulite"

    const-string v12, "\u0410\u043d\u0442\u0438\u0446\u0435\u043b\u0443\u043b\u0438\u0442"

    const-string v13, "Anti-cellulite"

    const-string v14, "\u0422\u043e\u043d\u0443\u0441 \u043d\u0430 \u0434\u043e\u043b\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 + \u0434\u0440\u0435\u043d\u0430\u0436\u043d\u0430 \u0432\u044a\u043b\u043d\u0430"

    const-string v15, "Lower-body tone + drainage wave"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x46

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/16 v3, 0x64

    const/16 v4, 0x4b

    const/16 v5, 0x3c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x32

    .line 137
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 135
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 138
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe3333333333333L    # 0.6

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    .line 140
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "postpartum"

    const-string v12, "\u0421\u043b\u0435\u0434\u0440\u043e\u0434\u0438\u043b\u043d\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v13, "Postpartum recovery"

    const-string v14, "\u0422\u0430\u0437\u043e\u0432\u043e \u0434\u044a\u043d\u043e, \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 \u0438 \u043a\u0440\u044a\u0441\u0442; \u043a\u043e\u0440\u0435\u043c\u044a\u0442 \u2014 \u0432\u043d\u0438\u043c\u0430\u0442\u0435\u043b\u043d\u043e"

    const-string v15, "Pelvic floor, glutes, lower back; abs gently"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x32

    const/16 v1, 0x46

    const/16 v2, 0x50

    const/16 v3, 0x64

    const/16 v4, 0x3c

    const/16 v5, 0x5a

    const/16 v6, 0x3c

    const/16 v7, 0x32

    const/16 v8, 0x28

    const/16 v9, 0x32

    .line 142
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 140
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 143
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksPostpartum:Z

    .line 145
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "drain"

    const-string v12, "\u0414\u0440\u0435\u043d\u0430\u0436"

    const-string v13, "Lymph drainage"

    const-string v14, "\u0412\u044a\u043b\u043d\u0430 \u043f\u043e \u0437\u043e\u043d\u0438\u0442\u0435 \u043e\u0442 \u043f\u0435\u0440\u0438\u0444\u0435\u0440\u0438\u044f\u0442\u0430 \u043a\u044a\u043c \u0446\u0435\u043d\u0442\u044a\u0440\u0430"

    const-string v15, "A wave through the zones towards the centre"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x64

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/16 v5, 0x64

    const/16 v6, 0x64

    const/16 v7, 0x64

    const/16 v8, 0x64

    const/16 v9, 0x64

    .line 147
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 145
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 148
    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 149
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u0435\u043d (35 Hz)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d (8 Hz)"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    .line 150
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Standard (35 Hz)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Sensitive (8 Hz)"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsEn:[Ljava/lang/String;

    .line 152
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "passive_metabolic"

    const-string v12, "\u041f\u0430\u0441\u0438\u0432\u0435\u043d \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0437\u044a\u043c"

    const-string v13, "Passive metabolism"

    const-string v14, "6 Hz \u2014 \u043d\u0430\u0439-\u0433\u043e\u043b\u044f\u043c \u0435\u043d\u0435\u0440\u0433\u043e\u0440\u0430\u0437\u0445\u043e\u0434 \u0431\u0435\u0437 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    const-string v15, "6 Hz \u2014 most energy use without moving"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x5a

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/16 v3, 0x64

    const/16 v4, 0x3c

    const/16 v5, 0x3c

    const/16 v6, 0x46

    const/16 v7, 0x28

    const/16 v8, 0x28

    const/16 v9, 0x3c

    .line 154
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 152
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 155
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe3333333333333L    # 0.6

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 157
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "back_pain"

    const-string v12, "\u0411\u043e\u043b\u043a\u0438 \u0432 \u0433\u044a\u0440\u0431\u0430 \u0438 \u043a\u0440\u044a\u0441\u0442\u0430"

    const-string v13, "Back & low-back pain"

    const-string v14, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435, \u0441\u0442\u0430\u0431\u0438\u043b\u0438\u0437\u0430\u0446\u0438\u044f, \u043e\u0431\u0435\u0437\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v15, "Relax, stabilise, relieve"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v0, 0x0

    const/16 v1, 0x28

    const/16 v2, 0x3c

    const/16 v3, 0x50

    const/16 v4, 0x46

    const/16 v5, 0x64

    const/16 v6, 0x5a

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 159
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 157
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 160
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    .line 162
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "recovery"

    const-string v12, "\u0420\u0435\u0433\u0435\u043d\u0435\u0440\u0430\u0446\u0438\u044f \u0438 \u0440\u0435\u043b\u0430\u043a\u0441"

    const-string v13, "Recovery & relax"

    const-string v14, "3 \u2194 8 Hz \u043c\u0430\u0441\u0430\u0436 \u0441\u043b\u0435\u0434 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435"

    const-string v15, "3 \u2194 8 Hz massage after training"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x50

    const/16 v1, 0x5a

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    const/16 v4, 0x32

    const/16 v5, 0x46

    const/16 v6, 0x50

    const/16 v7, 0x50

    const/16 v8, 0x28

    const/16 v9, 0x3c

    .line 164
    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/ai/AutoModel;->zones(IIIIIIIIII)[I

    move-result-object v7

    move-object v0, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 162
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 165
    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 166
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 2

    .prologue
    .line 169
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-object p0
.end method

.method public static all()Ljava/util/List;
    .registers 1
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
    .line 174
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    return-object v0
.end method

.method public static baseSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I
    .registers 11

    .prologue
    const/16 v4, 0x4b0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x5dc

    .line 307
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p1, v0, :cond_1b

    move v0, v1

    .line 308
    :goto_b
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_6c

    :cond_15
    move v2, v5

    :goto_16
    packed-switch v2, :pswitch_data_8a

    move v3, v4

    .line 321
    :goto_1a
    :pswitch_1a
    return v3

    :cond_1b
    move v0, v2

    .line 307
    goto :goto_b

    .line 308
    :sswitch_1d
    const-string v1, "general"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_16

    :sswitch_26
    const-string v2, "glutes"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v1

    goto :goto_16

    :sswitch_30
    const-string v1, "core"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v2, 0x2

    goto :goto_16

    :sswitch_3a
    const-string v1, "power"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v2, 0x3

    goto :goto_16

    :sswitch_44
    const-string v1, "cardio"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v2, 0x4

    goto :goto_16

    :sswitch_4e
    const-string v1, "cellulite"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v2, 0x5

    goto :goto_16

    :sswitch_58
    const-string v1, "passive_metabolic"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v2, 0x6

    goto :goto_16

    .line 312
    :pswitch_62
    if-eqz v0, :cond_67

    move v0, v3

    :goto_65
    move v3, v0

    goto :goto_1a

    :cond_67
    move v0, v4

    goto :goto_65

    .line 314
    :pswitch_69
    const/16 v3, 0x438

    goto :goto_1a

    .line 308
    :sswitch_data_6c
    .sparse-switch
        -0x5183fbca -> :sswitch_44
        -0x4a13fe0e -> :sswitch_26
        -0x4c6f718 -> :sswitch_1d
        0x2eaf9f -> :sswitch_30
        0x65e8905 -> :sswitch_3a
        0x1c4fe11c -> :sswitch_58
        0x625d7281 -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_62
        :pswitch_62
        :pswitch_62
        :pswitch_69
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public static blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 253
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    .line 261
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v2, :cond_16

    .line 262
    const-string v0, "\u0421\u0430\u043c\u043e \u0437\u0430 \u0436\u0435\u043d\u0438"

    const-string v1, "Women only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_15
    return-object v0

    .line 264
    :cond_16
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-wide v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    cmpl-double v0, v2, v6

    if-ltz v0, :cond_33

    iget-wide v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_33

    .line 265
    const-string v0, "\u041f\u043e\u0434 24 \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u2014 \u0441\u0430\u043c\u043e \u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v1, "Under 24 h since the last active one \u2014 passive only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 268
    :cond_33
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p1, v0, :cond_55

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v2

    cmpl-double v0, v2, v6

    if-lez v0, :cond_55

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v2

    const-wide v4, 0x4032800000000000L    # 18.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_55

    .line 269
    const-string v0, "\u0418\u0422\u041c \u043f\u043e\u0434 18.5 \u2014 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435\u0442\u043e \u043d\u0435 \u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u043e"

    const-string v1, "BMI under 18.5 \u2014 weight loss is not suitable"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 272
    :cond_55
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x46

    if-lt v0, v2, :cond_6e

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-eq p1, v0, :cond_6e

    .line 273
    const-string v0, "\u0421\u043b\u0435\u0434 70 \u0433. \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u0437\u0430 \u0437\u0434\u0440\u0430\u0432\u0435"

    const-string v1, "After 70 \u2014 the health programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 275
    :cond_6e
    const-string v0, "power"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 276
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_86

    .line 277
    const-string v0, "\u0421\u043b\u0435\u0434 4 \u0441\u0435\u0441\u0438\u0438 (\u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f)"

    const-string v1, "After 4 sessions (adaptation)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 279
    :cond_86
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_95

    .line 280
    const-string v0, "\u0414\u043e 60 \u0433."

    const-string v1, "Under 60"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 282
    :cond_95
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v2, :cond_a5

    .line 283
    const-string v0, "\u041d\u0443\u0436\u043d\u0430 \u0435 \u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "Needs medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 286
    :cond_a5
    if-nez p3, :cond_aa

    move-object v0, v1

    .line 287
    goto/16 :goto_15

    .line 289
    :cond_aa
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    if-eqz v0, :cond_c0

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->anyBackRedFlag()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 290
    const-string v0, "\u0421\u0438\u0433\u043d\u0430\u043b \u0437\u0430 \u0442\u0440\u0435\u0432\u043e\u0433\u0430 \u0437\u0430 \u0433\u044a\u0440\u0431\u0430 \u2014 \u043f\u044a\u0440\u0432\u043e \u043b\u0435\u043a\u0430\u0440"

    const-string v1, "Back red flag \u2014 see a doctor first"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 293
    :cond_c0
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksPostpartum:Z

    if-eqz v0, :cond_10c

    .line 294
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    if-eqz v0, :cond_10a

    const/16 v0, 0xc

    .line 295
    :goto_cc
    iget-object v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-ge v2, v0, :cond_10c

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041d\u0430\u0439-\u0440\u0430\u043d\u043e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u0441\u043b\u0435\u0434 \u0440\u0430\u0436\u0434\u0430\u043d\u0435\u0442\u043e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " weeks after birth"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 294
    :cond_10a
    const/4 v0, 0x6

    goto :goto_cc

    :cond_10c
    move-object v0, v1

    .line 300
    goto/16 :goto_15
.end method

.method private static varargs ch([I)[I
    .registers 1

    .prologue
    .line 625
    return-object p0
.end method

.method private static cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;",
            ">;IDI)",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;"
        }
    .end annotation

    .prologue
    .line 558
    const-string v2, "COOLDOWN"

    const-string v3, "\u041e\u0445\u043b\u0430\u0436\u0434\u0430\u043d\u0435"

    const-string v4, "Cool-down"

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    move-object v1, p0

    move-wide v5, p2

    move v7, p1

    invoke-static/range {v1 .. v11}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v6

    .line 559
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 560
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 561
    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v1, 0xfa

    const/16 v2, 0xa

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    return-object v6
.end method

.method static corridor(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)[D
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 649
    const-string v0, "passive_metabolic"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 650
    new-array v0, v2, [D

    fill-array-data v0, :array_18

    .line 652
    :goto_10
    return-object v0

    :cond_11
    new-array v0, v2, [D

    fill-array-data v0, :array_24

    goto :goto_10

    .line 650
    nop

    :array_18
    .array-data 8
        0x3fd0000000000000L    # 0.25
        0x3fdccccccccccccdL    # 0.45
    .end array-data

    .line 652
    :array_24
    .array-data 8
        0x3fd999999999999aL    # 0.4
        0x3fe2e147ae147ae1L    # 0.59
    .end array-data
.end method

.method private static fixDurations(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 569
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v0, v1

    move v1, v0

    .line 570
    goto :goto_6

    .line 571
    :cond_17
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    .line 572
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 573
    const/16 v2, 0x1e

    iget v3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v3, p1

    sub-int v1, v3, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 575
    :cond_36
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 4

    .prologue
    .line 178
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 179
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static goalOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;
    .registers 3

    .prologue
    .line 233
    if-nez p0, :cond_5

    .line 234
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 240
    :goto_4
    return-object v0

    .line 236
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 240
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 237
    :pswitch_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 239
    :pswitch_16
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 236
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static hrUse(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$HrUse;
    .registers 4

    .prologue
    .line 638
    const-string v0, "cardio"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "passive_metabolic"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 639
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    .line 644
    :goto_16
    return-object v0

    .line 641
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p1, v0, :cond_3c

    const-string v0, "general"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "glutes"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "core"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 642
    :cond_39
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    goto :goto_16

    .line 644
    :cond_3c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CAP:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    goto :goto_16
.end method

.method public static kindOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Kind;
    .registers 2

    .prologue
    .line 245
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_a

    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eq p0, v0, :cond_a

    if-nez p0, :cond_d

    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    goto :goto_c
.end method

.method private static legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V
    .registers 11

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 535
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v4, [I

    aput v6, v1, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v5, [I

    fill-array-data v1, :array_72

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    new-array v2, v4, [I

    aput v6, v2, v3

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v4, [I

    aput v7, v1, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_7a

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v5, [I

    fill-array-data v1, :array_82

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    new-array v2, v4, [I

    aput v7, v2, v3

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    return-void

    .line 536
    nop

    :array_72
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 537
    :array_7a
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 538
    :array_82
    .array-data 4
        0x1
        0x7
    .end array-data
.end method

.method public static menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AutoModel$Goal;",
            "Lcom/isaigu/gymapp/ai/AutoModel$Kind;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoCatalog$Program;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_94

    .line 201
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_7f

    .line 202
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "back_active"

    aput-object v2, v0, v1

    const-string v2, "senior"

    aput-object v2, v0, v3

    .line 206
    :goto_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    array-length v3, v0

    :goto_24
    if-ge v1, v3, :cond_92

    aget-object v4, v0, v1

    .line 208
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 191
    :pswitch_32
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_49

    .line 192
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "general"

    aput-object v2, v0, v1

    const-string v2, "glutes"

    aput-object v2, v0, v3

    const-string v2, "core"

    aput-object v2, v0, v4

    const-string v2, "power"

    aput-object v2, v0, v5

    goto :goto_1e

    .line 193
    :cond_49
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "cellulite"

    aput-object v2, v0, v1

    const-string v2, "postpartum"

    aput-object v2, v0, v3

    goto :goto_1e

    .line 196
    :pswitch_54
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_70

    .line 197
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "cardio"

    aput-object v2, v0, v1

    const-string v2, "general"

    aput-object v2, v0, v3

    const-string v2, "glutes"

    aput-object v2, v0, v4

    const-string v2, "core"

    aput-object v2, v0, v5

    const-string v2, "power"

    aput-object v2, v0, v6

    goto :goto_1e

    .line 198
    :cond_70
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "cellulite"

    aput-object v2, v0, v1

    const-string v2, "drain"

    aput-object v2, v0, v3

    const-string v2, "passive_metabolic"

    aput-object v2, v0, v4

    goto :goto_1e

    .line 203
    :cond_7f
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "back_pain"

    aput-object v2, v0, v1

    const-string v2, "drain"

    aput-object v2, v0, v3

    const-string v2, "postpartum"

    aput-object v2, v0, v4

    const-string v2, "recovery"

    aput-object v2, v0, v5

    goto :goto_1e

    .line 210
    :cond_92
    return-object v2

    .line 189
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_32
        :pswitch_54
    .end packed-switch
.end method

.method static onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I
    .registers 6

    .prologue
    const/4 v2, 0x2

    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_d

    .line 328
    new-array v0, v2, [I

    fill-array-data v0, :array_22

    .line 333
    :goto_c
    return-object v0

    .line 330
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_19

    .line 331
    new-array v0, v2, [I

    fill-array-data v0, :array_2a

    goto :goto_c

    .line 333
    :cond_19
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    goto :goto_c

    .line 328
    :array_22
    .array-data 4
        0x4
        0x6
    .end array-data

    .line 331
    :array_2a
    .array-data 4
        0x6
        0x4
    .end array-data
.end method

.method static pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 4

    .prologue
    .line 593
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 594
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 595
    return-object p0
.end method

.method private static phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DIDD)",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;-><init>()V

    .line 545
    iput-object p1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    .line 546
    iput-object p2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    .line 547
    iput-object p3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    .line 548
    int-to-double v2, p6

    mul-double/2addr v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 549
    iput-wide p7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 550
    iput-wide p9, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 551
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 552
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 553
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    return-object v0
.end method

.method static phases(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AutoCatalog$Program;",
            "Lcom/isaigu/gymapp/ai/AutoModel$Goal;",
            "Lcom/isaigu/gymapp/ai/AutoModel$Input;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 338
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_9b

    const/4 v2, 0x1

    .line 339
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_868

    :cond_18
    :goto_18
    packed-switch v4, :pswitch_data_89a

    .line 518
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 519
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 520
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 521
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    const-string v4, "MAIN"

    const-string v5, "\u041c\u0430\u0441\u0430\u0436"

    const-string v6, "Massage"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 523
    iget-object v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x8

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x2

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 529
    :goto_95
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->fixDurations(Ljava/util/List;I)V

    .line 530
    return-object v3

    .line 338
    :cond_9b
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 339
    :sswitch_9e
    const-string v6, "general"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x0

    goto/16 :goto_18

    :sswitch_a9
    const-string v6, "glutes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x1

    goto/16 :goto_18

    :sswitch_b4
    const-string v6, "core"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x2

    goto/16 :goto_18

    :sswitch_bf
    const-string v6, "power"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x3

    goto/16 :goto_18

    :sswitch_ca
    const-string v6, "cardio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x4

    goto/16 :goto_18

    :sswitch_d5
    const-string v6, "back_active"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x5

    goto/16 :goto_18

    :sswitch_e0
    const-string v6, "senior"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x6

    goto/16 :goto_18

    :sswitch_eb
    const-string v6, "cellulite"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x7

    goto/16 :goto_18

    :sswitch_f6
    const-string v6, "drain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x8

    goto/16 :goto_18

    :sswitch_102
    const-string v6, "passive_metabolic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x9

    goto/16 :goto_18

    :sswitch_10e
    const-string v6, "back_pain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xa

    goto/16 :goto_18

    :sswitch_11a
    const-string v6, "postpartum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xb

    goto/16 :goto_18

    .line 343
    :pswitch_126
    const-string v4, "glutes"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_234

    const/4 v4, 0x5

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v4

    move-object v14, v4

    .line 346
    :goto_13b
    const-string v4, "glutes"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23f

    .line 347
    const-string v5, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0433\u043b\u0443\u0442\u0435\u0443\u0441 \u043c\u043e\u0441\u0442, \u0430\u0431\u0434\u0443\u043a\u0446\u0438\u044f"

    .line 348
    const-string v4, "Squat, lunge, glute bridge, abduction"

    move-object v15, v4

    move-object/from16 v16, v5

    .line 356
    :goto_14e
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    if-eqz v2, :cond_25d

    const-wide v7, 0x3fb999999999999aL    # 0.1

    :goto_15b
    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 357
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 358
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 359
    const-string v5, "\u041a\u043b\u0435\u043a, \u0445\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 360
    const-string v5, "Squat, marching"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 361
    iget-object v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x55

    const/16 v5, 0x12c

    const/4 v7, 0x4

    const/4 v8, 0x4

    invoke-static {v4, v5, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v7

    const/4 v8, 0x6

    if-eqz v2, :cond_264

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    :goto_18f
    invoke-static {v7, v8, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    if-eqz v2, :cond_26b

    const-wide v7, 0x3fdccccccccccccdL    # 0.45

    :goto_1a3
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v5

    .line 363
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 364
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 365
    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 366
    iput-object v15, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 367
    const/16 v4, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 368
    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v2, :cond_1d9

    const/4 v6, 0x6

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v4, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    :cond_1d9
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    if-eqz v2, :cond_227

    .line 370
    const-string v4, "METABOLIC"

    const-string v5, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Burn"

    const-wide v7, 0x3fd6666666666666L    # 0.35

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 371
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 372
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435, \u0441\u0442\u0435\u043f, \u043b\u0435\u043a\u0438 \u043a\u043b\u0435\u043a\u043e\u0432\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 373
    const-string v4, "Walking, step, light squats"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 374
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_227
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 343
    :cond_234
    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v4

    move-object v14, v4

    goto/16 :goto_13b

    .line 349
    :cond_23f
    const-string v4, "core"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_254

    .line 350
    const-string v5, "\u041f\u043b\u0430\u043d\u043a, \u043a\u0440\u044a\u043d\u0447, \u0440\u043e\u0442\u0430\u0446\u0438\u0438, \u201e\u043c\u044a\u0440\u0442\u0432\u0430 \u0431\u0443\u0431\u043e\u043b\u0435\u0447\u043a\u0430\u201c"

    .line 351
    const-string v4, "Plank, crunch, rotations, dead bug"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_14e

    .line 353
    :cond_254
    const-string v5, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u043b\u0438\u0446\u0435\u0432\u0438 \u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435, \u0433\u0440\u0435\u0431\u0430\u043d\u0435"

    .line 354
    const-string v4, "Squat, lunge, knee push-ups, rows"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_14e

    .line 356
    :cond_25d
    const-wide v7, 0x3fc3333333333333L    # 0.15

    goto/16 :goto_15b

    .line 361
    :cond_264
    const-wide v4, 0x3fd999999999999aL    # 0.4

    goto/16 :goto_18f

    .line 362
    :cond_26b
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    goto/16 :goto_1a3

    .line 381
    :pswitch_26f
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 382
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 383
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 384
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x55

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    const-string v4, "MAIN"

    const-string v5, "\u0412\u0437\u0440\u0438\u0432\u043d\u0430 \u0441\u0438\u043b\u0430"

    const-string v6, "Explosive power"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 386
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 387
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 388
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onMinus:I

    .line 389
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onPlus:I

    .line 390
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 391
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x3

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offPlus:I

    .line 392
    const-string v4, "\u0412\u0437\u0440\u0438\u0432\u0435\u043d \u043a\u043b\u0435\u043a / \u0441\u043a\u043e\u043a / \u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435 \u043d\u0430 \u0432\u0441\u0435\u043a\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 393
    const-string v4, "Explosive squat / jump / throw on every pulse"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 394
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x64

    const/16 v5, 0x12c

    const/4 v6, 0x3

    const/16 v7, 0x9

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 399
    :pswitch_2ff
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 400
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 401
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 402
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x55

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    const/4 v5, 0x6

    const-wide v6, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    const-string v4, "METABOLIC"

    const-string v5, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Burn"

    const-wide v7, 0x3fe999999999999aL    # 0.8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 404
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 405
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 406
    const-string v4, "\u0421\u0442\u0435\u043f, \u0445\u043e\u0434\u0435\u043d\u0435, \u043a\u043b\u0435\u043a \u2014 \u0431\u0435\u0437 \u0441\u043f\u0438\u0440\u0430\u043d\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 407
    const-string v4, "Step, walking, squats \u2014 keep moving"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 408
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 414
    :pswitch_39b
    const/4 v2, 0x6

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v2

    .line 415
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 416
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 417
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 418
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x12c

    const/4 v7, 0x4

    const/4 v8, 0x4

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e\u0441\u0442"

    const-string v6, "Stability"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 420
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 421
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 422
    const-string v5, "\u041f\u0442\u0438\u0446\u0430-\u043a\u0443\u0447\u0435, \u043c\u043e\u0441\u0442, \u043f\u043b\u0430\u043d\u043a, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0443\u0441\u0443\u043a\u0432\u0430\u043d\u0435 \u043f\u043e\u0434 \u0442\u043e\u0432\u0430\u0440"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 423
    const-string v5, "Bird-dog, bridge, plank, rows \u2014 no loaded twisting"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 424
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v2, v2, v8

    invoke-static {v5, v6, v7, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x4

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 429
    :pswitch_425
    const/4 v2, 0x4

    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v2

    .line 430
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v4, v5, :cond_43b

    .line 431
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_8b6

    .line 433
    :cond_43b
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 434
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 435
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 436
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x12c

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 438
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 439
    const-string v5, "\u0421\u0442\u0430\u0432\u0430\u043d\u0435 \u043e\u0442 \u0441\u0442\u043e\u043b, \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u043d\u0435 \u043d\u0430 \u043f\u0440\u044a\u0441\u0442\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u0441 \u043b\u0430\u0441\u0442\u0438\u043a"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 440
    const-string v5, "Sit-to-stand, calf raises, band rows"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 441
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x0

    aget v7, v2, v7

    const/4 v8, 0x1

    aget v2, v2, v8

    invoke-static {v5, v6, v7, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 446
    :pswitch_4b0
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 447
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    const-string v4, "MAIN"

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    const-string v6, "Tone"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 449
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 450
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    const/16 v5, 0x8

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    const-string v4, "WAVE"

    const-string v5, "\u0414\u0440\u0435\u043d\u0430\u0436\u043d\u0430 \u0432\u044a\u043b\u043d\u0430"

    const-string v6, "Drainage wave"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 452
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 453
    const/16 v4, 0x23

    const/16 v5, 0x12c

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 454
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 458
    :pswitch_546
    move-object/from16 v0, p2

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_66e

    const/16 v2, 0x8

    .line 459
    :goto_54f
    const-string v4, "OPEN"

    const-string v5, "\u041e\u0442\u0432\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Opening"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 460
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 461
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_8be

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x5

    aput v9, v7, v8

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_8c6

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    const-string v4, "LEGS"

    const-string v5, "\u041a\u0440\u0430\u043a\u0430"

    const-string v6, "Legs"

    const-wide v7, 0x3fe199999999999aL    # 0.55

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 465
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 466
    const/16 v5, 0x12c

    invoke-static {v4, v2, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 467
    const-string v4, "ARMS"

    const-string v5, "\u0420\u044a\u0446\u0435 \u0438 \u0433\u0440\u044a\u0431"

    const-string v6, "Arms and back"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 468
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 469
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x4

    aput v9, v7, v8

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_8ce

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x4

    aput v10, v8, v9

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x5

    aput v9, v7, v8

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_8d6

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 474
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/16 v4, 0x3c

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->uniform(I)[I

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    goto/16 :goto_95

    .line 458
    :cond_66e
    const/16 v2, 0x23

    goto/16 :goto_54f

    .line 478
    :pswitch_672
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb47ae147ae147bL    # 0.08

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 479
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    const/4 v2, 0x4

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "LOW"

    aput-object v4, v14, v2

    const/4 v2, 0x1

    const-string v4, "TONE"

    aput-object v4, v14, v2

    const/4 v2, 0x2

    const-string v4, "LOW"

    aput-object v4, v14, v2

    const/4 v2, 0x3

    const-string v4, "TONE"

    aput-object v4, v14, v2

    .line 481
    const/4 v2, 0x4

    new-array v15, v2, [D

    fill-array-data v15, :array_8de

    .line 482
    const/4 v2, 0x0

    :goto_6bc
    array-length v4, v14

    if-ge v2, v4, :cond_72c

    .line 483
    const-string v4, "TONE"

    aget-object v5, v14, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 484
    if-nez v2, :cond_6f7

    const-string v4, "MAIN"

    .line 485
    :goto_6cb
    if-eqz v16, :cond_70d

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    :goto_6cf
    if-eqz v16, :cond_710

    const-string v6, "Tone"

    :goto_6d3
    aget-wide v7, v15, v2

    .line 486
    if-eqz v16, :cond_713

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    :goto_6d9
    if-eqz v16, :cond_719

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    :goto_6dd
    move/from16 v9, p3

    .line 484
    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 487
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v16, :cond_71f

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    :goto_6f1
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_6bc

    .line 484
    :cond_6f7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v14, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6cb

    .line 485
    :cond_70d
    const-string v5, "6 Hz"

    goto :goto_6cf

    :cond_710
    const-string v6, "6 Hz"

    goto :goto_6d3

    .line 486
    :cond_713
    const-wide v10, 0x3fe6666666666666L    # 0.7

    goto :goto_6d9

    :cond_719
    const-wide v12, 0x3fe6666666666666L    # 0.7

    goto :goto_6dd

    .line 487
    :cond_71f
    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    goto :goto_6f1

    .line 489
    :cond_72c
    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 493
    :pswitch_739
    const-string v4, "RELAX"

    const-string v5, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v6, "Relax"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 494
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x4

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v6, "Stabilise"

    const-wide v7, 0x3fe199999999999aL    # 0.55

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 496
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 497
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x0

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 498
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x50

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    const-string v4, "RELIEF"

    const-string v5, "\u041e\u0431\u0435\u0437\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Relief"

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 500
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x2

    const/16 v5, 0xc8

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_95

    .line 504
    :pswitch_7c6
    move-object/from16 v0, p2

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_864

    const/16 v2, 0x32

    .line 505
    :goto_7cf
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    const-wide v6, 0x3fe3333333333333L    # 0.6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    move-object/from16 v0, p2

    iget v10, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    div-int/lit8 v10, v10, 0x2

    int-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 506
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 507
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    const-string v4, "MAIN"

    const-string v5, "\u0422\u0430\u0437\u043e\u0432\u043e \u0434\u044a\u043d\u043e"

    const-string v6, "Pelvic floor"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide v10, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    move-wide v12, v14

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 509
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 510
    iput-wide v14, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 511
    const-string v5, "\u0418\u0437\u0434\u0438\u0448\u0430\u0439 \u0438 \u0441\u0442\u0435\u0433\u043d\u0438 \u0442\u0430\u0437\u043e\u0432\u043e\u0442\u043e \u0434\u044a\u043d\u043e \u0441 \u0432\u0441\u0435\u043a\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 512
    const-string v5, "Breathe out and lift the pelvic floor with each pulse"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 513
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0xfa

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v2, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    const/4 v5, 0x6

    const-wide v6, 0x3fd6666666666666L    # 0.35

    invoke-static {v2, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    const-wide v4, 0x3fc3333333333333L    # 0.15

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 504
    :cond_864
    const/16 v2, 0x28

    goto/16 :goto_7cf

    .line 339
    :sswitch_data_868
    .sparse-switch
        -0x6f0d1d95 -> :sswitch_11a
        -0x626b8aa2 -> :sswitch_d5
        -0x5183fbca -> :sswitch_ca
        -0x4a13fe0e -> :sswitch_a9
        -0x35ffd1d0 -> :sswitch_e0
        -0x4c6f718 -> :sswitch_9e
        0x2eaf9f -> :sswitch_b4
        0x5b679f8 -> :sswitch_f6
        0x65e8905 -> :sswitch_bf
        0x1c4fe11c -> :sswitch_102
        0x4f930f2e -> :sswitch_10e
        0x625d7281 -> :sswitch_eb
    .end sparse-switch

    :pswitch_data_89a
    .packed-switch 0x0
        :pswitch_126
        :pswitch_126
        :pswitch_126
        :pswitch_26f
        :pswitch_2ff
        :pswitch_39b
        :pswitch_425
        :pswitch_4b0
        :pswitch_546
        :pswitch_672
        :pswitch_739
        :pswitch_7c6
    .end packed-switch

    .line 431
    :array_8b6
    .array-data 4
        0x4
        0x4
    .end array-data

    .line 461
    :array_8be
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 462
    :array_8c6
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 470
    :array_8ce
    .array-data 4
        0x0
        0x6
    .end array-data

    .line 471
    :array_8d6
    .array-data 4
        0x0
        0x6
    .end array-data

    .line 481
    :array_8de
    .array-data 8
        0x3fd3333333333333L    # 0.3
        0x3fbeb851eb851eb8L    # 0.12
        0x3fd3333333333333L    # 0.3
        0x3fbeb851eb851eb8L    # 0.12
    .end array-data
.end method

.method public static recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    .line 216
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p0, v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_1a

    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1a

    .line 217
    const-string v0, "senior"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 228
    :goto_19
    return-object v0

    .line 219
    :cond_1a
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_39

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-lez v0, :cond_39

    const-string v0, "postpartum"

    .line 220
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 221
    const-string v0, "postpartum"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    goto :goto_19

    .line 223
    :cond_39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 224
    invoke-static {v0, p0, p2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3d

    goto :goto_19

    .line 228
    :cond_50
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    goto :goto_19
.end method

.method private static rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 618
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v1, 0x3

    const/16 v2, 0xfa

    add-int/lit8 v3, p0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 619
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 620
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 621
    return-object v0
.end method

.method static tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    .line 578
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 579
    const/16 v1, 0x190

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 580
    const/16 v1, 0x12c

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 581
    return-object v0
.end method

.method static twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 8

    .prologue
    const/16 v1, 0xc8

    .line 585
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 586
    iput-wide p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 587
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 588
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 589
    return-object v0
.end method

.method private static uniform(I)[I
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 629
    new-array v1, v2, [I

    .line 630
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_c

    .line 631
    aput p0, v1, v0

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 633
    :cond_c
    return-object v1
.end method

.method private static waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 600
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 601
    const/16 v1, 0x3e8

    iput v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 602
    const/16 v1, 0x1f4

    iput v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 603
    const/16 v1, 0xa

    new-array v3, v1, [I

    .line 604
    if-eqz p3, :cond_23

    .line 605
    array-length v4, p3

    move v1, v0

    :goto_18
    if-ge v1, v4, :cond_23

    aget v5, p3, v1

    .line 606
    const/16 v6, 0x32

    aput v6, v3, v5

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 609
    :cond_23
    array-length v1, p2

    :goto_24
    if-ge v0, v1, :cond_2f

    aget v4, p2, v0

    .line 610
    const/16 v5, 0x64

    aput v5, v3, v4

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 612
    :cond_2f
    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 613
    return-object v2
.end method
