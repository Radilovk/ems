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

.field static final ALL_ON:[I

.field public static final ANTIAGE:Ljava/lang/String; = "antiage"

.field public static final ANTIAGE_PASSIVE:Ljava/lang/String; = "antiage_passive"

.field public static final BACK_ACTIVE:Ljava/lang/String; = "back_active"

.field public static final BACK_PAIN:Ljava/lang/String; = "back_pain"

.field public static final CARDIO:Ljava/lang/String; = "cardio"

.field public static final CELLULITE:Ljava/lang/String; = "cellulite"

.field static final CHEEKS:[I

.field public static final CORE:Ljava/lang/String; = "core"

.field public static final CORE_P:Ljava/lang/String; = "core_passive"

.field public static final DRAIN:Ljava/lang/String; = "drain"

.field static final ENV_MAX:D = -1.0

.field public static final FACE:Ljava/lang/String; = "face"

.field public static final FACE_CALM:Ljava/lang/String; = "face_calm"

.field public static final FACE_CHIN:Ljava/lang/String; = "face_chin"

.field public static final FACE_CHIN_PW:I = 0x96

.field public static final FACE_DRAIN:Ljava/lang/String; = "face_drain"

.field public static final FACE_HZ_MIN:I = 0x14

.field public static final FACE_IDS:[Ljava/lang/String;

.field public static final FACE_JAW:Ljava/lang/String; = "face_jaw"

.field public static final FACE_JAW_PW:I = 0x96

.field public static final FACE_OVAL:Ljava/lang/String; = "face_oval"

.field public static final FACE_PW:I = 0x64

.field public static final FACE_RECOVERY_S:I = 0x78

.field public static final FACE_RELAX:Ljava/lang/String; = "face_relax"

.field public static final FACE_RELAX_PW:I = 0x32

.field public static final FACE_TONE:Ljava/lang/String; = "face_tone"

.field public static final F_CHIN:I = 0x9

.field public static final F_FOREHEAD:I = 0x8

.field public static final F_JAW_L:I = 0x6

.field public static final F_JAW_R:I = 0x7

.field public static final F_LC_L:I = 0x4

.field public static final F_LC_R:I = 0x5

.field public static final F_NL_L:I = 0x2

.field public static final F_NL_R:I = 0x3

.field public static final F_ZM_L:I = 0x0

.field public static final F_ZM_R:I = 0x1

.field public static final GENERAL:Ljava/lang/String; = "general"

.field public static final GENERAL_P:Ljava/lang/String; = "general_passive"

.field public static final GLUTES_LEGS:Ljava/lang/String; = "glutes"

.field public static final GLUTES_P:Ljava/lang/String; = "glutes_passive"

.field static final LOWER:[I

.field public static final MASS:Ljava/lang/String; = "mass"

.field public static final MASS_P:Ljava/lang/String; = "mass_passive"

.field public static final PASSIVE_METABOLIC:Ljava/lang/String; = "passive_metabolic"

.field public static final POSTPARTUM:Ljava/lang/String; = "postpartum"

.field static final POSTURE:[I

.field public static final POWER:Ljava/lang/String; = "power"

.field public static final POWER_P:Ljava/lang/String; = "power_passive"

.field public static final RECOVERY:Ljava/lang/String; = "recovery"

.field public static final SENIOR:Ljava/lang/String; = "senior"

.field public static final SENIOR_P:Ljava/lang/String; = "senior_passive"

.field static final TRUNK:[I

.field public static final UPPER:Ljava/lang/String; = "upper"

.field static final UPPER_BODY:[I

.field public static final UPPER_P:Ljava/lang/String; = "upper_passive"

.field static final WARMUP_HZ:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .prologue
    .line 96
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "face"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "face_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "face_oval"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "face_drain"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "face_relax"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "face_calm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "face_jaw"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "face_chin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->FACE_IDS:[Ljava/lang/String;

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_842

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 153
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_852

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->LOWER:[I

    .line 155
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_862

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->UPPER_BODY:[I

    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_872

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->TRUNK:[I

    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_87e

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->POSTURE:[I

    .line 170
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_88a

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    .line 232
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

    .line 234
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

    .line 232
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 235
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

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 237
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

    .line 239
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

    .line 237
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 240
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

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 242
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "mass"

    const-string v12, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430"

    const-string v13, "Muscle mass"

    const-string v14, "\u0426\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e, \u0442\u0435\u0436\u043a\u0438 \u0431\u0430\u0432\u043d\u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f \u2014 \u043e\u0431\u0435\u043c \u0438 \u0441\u0438\u043b\u0430"

    const-string v15, "Whole body, heavy slow reps \u2014 size and strength"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x3c

    const/16 v1, 0x55

    const/16 v2, 0x50

    const/16 v3, 0x50

    const/16 v4, 0x50

    const/16 v5, 0x4b

    const/16 v6, 0x64

    const/16 v7, 0x5a

    const/16 v8, 0x64

    const/16 v9, 0x64

    .line 244
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

    .line 242
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 245
    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->maleOnly:Z

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 247
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "upper"

    const-string v12, "\u0413\u044a\u0440\u0434\u0438, \u0440\u0430\u043c\u0435\u043d\u0435 \u0438 \u0440\u044a\u0446\u0435"

    const-string v13, "Chest, shoulders & arms"

    const-string v14, "\u0413\u043e\u0440\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442: \u0433\u044a\u0440\u0434\u0438, \u0433\u0440\u044a\u0431, \u0440\u0430\u043c\u0435\u043d\u0435 \u0438 \u0440\u044a\u0446\u0435"

    const-string v15, "Upper body: chest, back, shoulders and arms"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v0, 0x28

    const/16 v1, 0x3c

    const/16 v2, 0x37

    const/16 v3, 0x3c

    const/16 v4, 0x50

    const/16 v5, 0x46

    const/16 v6, 0x64

    const/16 v7, 0x64

    const/16 v8, 0x64

    const/16 v9, 0x64

    .line 249
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

    .line 247
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 250
    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->maleOnly:Z

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 252
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

    .line 254
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

    .line 252
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 255
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

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 257
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

    .line 259
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

    .line 257
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 260
    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3feb333333333333L    # 0.85

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide v2, 0x3ff2666666666666L    # 1.15

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    const-string v1, "power"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 262
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

    .line 264
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

    .line 262
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 265
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

    const-string v1, "cardio"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 267
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

    .line 269
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

    .line 267
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 270
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

    const-string v1, "gentle"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 274
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "senior"

    const-string v12, "50+ \u00b7 \u041c\u0443\u0441\u043a\u0443\u043b\u0438, \u043a\u043e\u0441\u0442\u0438, \u0437\u0430\u0445\u0430\u0440"

    const-string v13, "50+ \u00b7 Muscle, bone, blood sugar"

    const-string v14, "\u0421\u0438\u043b\u0430, \u0437\u0434\u0440\u0430\u0432\u0438 \u043a\u043e\u0441\u0442\u0438, \u0434\u043e\u0431\u0440\u0430 \u0437\u0430\u0445\u0430\u0440 \u2014 \u0438 \u043f\u0440\u0435\u0437 \u043c\u0435\u043d\u043e\u043f\u0430\u0443\u0437\u0430\u0442\u0430"

    const-string v15, "Strength, strong bones, good blood sugar \u2014 through menopause too"

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

    .line 277
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

    .line 274
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 278
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    const-string v1, "gentle"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 280
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

    .line 282
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

    .line 280
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 283
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe3333333333333L    # 0.6

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    .line 285
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

    .line 287
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

    .line 285
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 288
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

    const-string v1, "gentle"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 290
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

    .line 292
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

    .line 290
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 293
    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 294
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u0435\u043d (35 Hz)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d (8 Hz)"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    .line 295
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Standard (35 Hz)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Sensitive (8 Hz)"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsEn:[Ljava/lang/String;

    .line 297
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

    .line 299
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

    .line 297
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 300
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe3333333333333L    # 0.6

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 302
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

    .line 304
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

    .line 302
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 305
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    .line 307
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

    .line 309
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

    .line 307
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 310
    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 314
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "antiage"

    const-string v12, "\u0410\u043d\u0442\u0438\u0435\u0439\u0434\u0436\u0438\u043d\u0433 \u00b7 Longevity"

    const-string v13, "Anti-ageing \u00b7 Longevity"

    const-string v14, "\u0414\u044a\u043b\u0433\u043e\u043b\u0435\u0442\u0438\u0435 \u043d\u0430 \u0432\u0441\u044f\u043a\u0430 \u0432\u044a\u0437\u0440\u0430\u0441\u0442: \u043c\u0438\u043e\u043a\u0438\u043d\u0438, \u043c\u043e\u0437\u044a\u043a, \u0438\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u0438, \u0441\u044a\u0434\u043e\u0432\u0435"

    const-string v15, "Longevity at any age: myokines, brain, intervals, vessels"

    sget-object v16, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

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

    .line 317
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

    .line 314
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 318
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe999999999999aL    # 0.8

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide v2, 0x3ff199999999999aL    # 1.1

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    const-string v1, "cardio"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 320
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "antiage_passive"

    const-string v12, "\u0410\u043d\u0442\u0438\u0435\u0439\u0434\u0436\u0438\u043d\u0433 \u00b7 Longevity \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v13, "Anti-ageing \u00b7 Longevity treatment"

    const-string v14, "\u0417\u0430\u0445\u0430\u0440, \u043c\u043e\u0437\u044a\u043a, \u0441\u044a\u0434\u043e\u0432\u0435 \u2014 \u0432 \u043f\u043e\u043a\u043e\u0439, \u043d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435"

    const-string v15, "Blood sugar, brain, vessels \u2014 at rest, best after a meal"

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

    .line 323
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

    .line 320
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 324
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 327
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "general_passive"

    const-string v2, "\u041e\u0431\u0449\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Full-body toning \u00b7 treatment"

    const-string v4, "\u0426\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e \u0432 \u043f\u043e\u043a\u043e\u0439: \u0434\u044a\u043b\u0431\u043e\u043a\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f \u0441 \u0434\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v5, "The whole body at rest: deep holds, long rests"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 329
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 327
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 330
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 332
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "glutes_passive"

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435 \u0438 \u0431\u0435\u0434\u0440\u0430 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Glutes & thighs \u00b7 treatment"

    const-string v4, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435 \u0438 \u0431\u0435\u0434\u0440\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439 + \u0434\u0440\u0435\u043d\u0430\u0436\u043d\u0430 \u0432\u044a\u043b\u043d\u0430 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430"

    const-string v5, "Glutes and thighs at rest + a leg drainage wave"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->LOWER:[I

    .line 334
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 332
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 335
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->doublePulse:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 337
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "mass_passive"

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Muscle mass \u00b7 treatment"

    const-string v4, "\u0413\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0432 \u043f\u043e\u043a\u043e\u0439: \u0434\u044a\u043b\u0433\u0438 \u0441\u0438\u043b\u043d\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f"

    const-string v5, "The big muscles at rest: long strong holds"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 339
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 337
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 340
    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->maleOnly:Z

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 342
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "upper_passive"

    const-string v2, "\u0413\u044a\u0440\u0434\u0438, \u0440\u0430\u043c\u0435\u043d\u0435 \u0438 \u0440\u044a\u0446\u0435 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Chest, shoulders & arms \u00b7 treatment"

    const-string v4, "\u0413\u043e\u0440\u043d\u0430\u0442\u0430 \u0447\u0430\u0441\u0442 \u0432 \u043f\u043e\u043a\u043e\u0439: \u0433\u044a\u0440\u0434\u0438, \u0433\u0440\u044a\u0431, \u0440\u0430\u043c\u0435\u043d\u0435, \u0440\u044a\u0446\u0435"

    const-string v5, "The upper body at rest: chest, back, shoulders, arms"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->UPPER_BODY:[I

    .line 344
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 342
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 345
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->maleOnly:Z

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 347
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "core_passive"

    const-string v2, "\u0422\u0430\u043b\u0438\u044f \u0438 \u043a\u043e\u0440\u0435\u043c \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Waist & core \u00b7 treatment"

    const-string v4, "\u041a\u043e\u0440\u0435\u043c, \u043a\u0440\u044a\u0441\u0442 \u0438 \u0433\u0440\u044a\u0431 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 \u043e\u043f\u043e\u0440\u0430 \u0437\u0430 \u0433\u0440\u044a\u0431\u043d\u0430\u043a\u0430"

    const-string v5, "Abs, lower back and back at rest \u2014 support for the spine"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->TRUNK:[I

    .line 349
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 347
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 350
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 352
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "power_passive"

    const-string v2, "\u0421\u0438\u043b\u0430 \u0438 \u0431\u044a\u0440\u0437\u0438\u043d\u0430 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Power & speed \u00b7 treatment"

    const-string v4, "\u0411\u044a\u0440\u0437\u0438\u0442\u0435 \u0432\u043b\u0430\u043a\u043d\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439: \u043a\u0440\u0430\u0442\u043a\u0438 \u0432\u0437\u0440\u0438\u0432\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438, \u0434\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    const-string v5, "Fast fibres at rest: short explosive bursts, long rest"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 355
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 352
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 356
    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-string v1, "power"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 358
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "senior_passive"

    const-string v2, "50+ \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "50+ \u00b7 treatment"

    const-string v4, "\u0421\u0435\u0434\u043d\u0430\u043b: \u0441\u0438\u043b\u0430 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430, \u0441\u0442\u043e\u0439\u043a\u0430, \u0437\u0430\u0445\u0430\u0440 \u2014 \u0431\u0435\u0437 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435 \u043d\u0430 \u0441\u0442\u0430\u0432\u0438\u0442\u0435"

    const-string v5, "Seated: leg strength, posture, blood sugar \u2014 no load on the joints"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v7, 0x8

    new-array v7, v7, [I

    fill-array-data v7, :array_8a2

    .line 361
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 358
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 362
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-string v1, "gentle"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 364
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u041b\u0438\u0444\u0442\u0438\u043d\u0433 \u043d\u0430 \u0441\u043a\u0443\u043b\u0438\u0442\u0435"

    const-string v3, "Face \u00b7 Cheekbone lift"

    const-string v4, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433 \u00b7 \u0421\u043a\u0443\u043b\u043f\u0442\u0443\u0440\u0438\u0440\u0430\u043d\u0435 \u00b7 \u041b\u0438\u043c\u0444\u043e\u0434\u0440\u0435\u043d\u0430\u0436 \u00b7 \u0411\u043e\u0442\u043e\u043a\u0441 \u0435\u0444\u0435\u043a\u0442 \u00b7 \u0421\u0432\u0435\u0436\u043e \u043b\u0438\u0446\u0435 \u2014 \u0438\u0437\u0431\u043e\u0440 \u0432 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0437\u0430 \u043b\u0438\u0446\u0435"

    const-string v5, "Lift \u00b7 Oval \u00b7 Facial lymphatic drainage \u00b7 Botox effect \u00b7 Fresh face \u2014 chosen in the face studio"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 367
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 364
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 368
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 369
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_tone"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0422\u043e\u043d\u0443\u0441 \u0438 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e\u0441\u0442"

    const-string v3, "Face \u00b7 Tone & firmness"

    const-string v4, "\u041f\u0430\u0437\u0438 \u043b\u0438\u0444\u0442\u0438\u043d\u0433\u0430 \u0441\u0442\u0435\u0433\u043d\u0430\u0442"

    const-string v5, "Keeps the lift firm"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 370
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 369
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 371
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 372
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_oval"

    const-string v2, "\u0421\u043a\u0443\u043b\u043f\u0442\u0443\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e"

    const-string v3, "Face \u00b7 Sculpting"

    const-string v4, "\u0421\u043a\u0443\u043b\u0438 \u0438 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430 \u0432 \u0435\u0434\u043d\u0430 \u0441\u0435\u0441\u0438\u044f"

    const-string v5, "Cheekbones and chin in one session"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x7

    new-array v7, v7, [I

    fill-array-data v7, :array_8b6

    .line 374
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 372
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 375
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 376
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_drain"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u041b\u0438\u043c\u0444\u043e\u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v3, "Face \u00b7 Lymphatic drainage"

    const-string v4, "\u041f\u043e-\u043c\u0430\u043b\u043a\u043e \u043f\u043e\u0434\u043f\u0443\u0445\u0432\u0430\u043d\u0435, \u043f\u043e-\u0441\u0432\u0435\u0436\u0438 \u0447\u0435\u0440\u0442\u0438"

    const-string v5, "Less puffiness, fresher features"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x7

    new-array v7, v7, [I

    fill-array-data v7, :array_8c8

    .line 378
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 376
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 379
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 380
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_relax"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0411\u043e\u0442\u043e\u043a\u0441 \u0435\u0444\u0435\u043a\u0442"

    const-string v3, "Face \u00b7 Botox effect"

    const-string v4, "\u041e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u043c\u0438\u043c\u0438\u043a\u0430, \u043f\u043e-\u0433\u043b\u0430\u0434\u043a\u043e \u0447\u0435\u043b\u043e \u00b7 \u0431\u0435\u0437 \u0438\u0433\u043b\u0430"

    const-string v5, "Relaxed expression, smoother forehead \u00b7 no needle"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0x8

    aput v9, v7, v8

    .line 382
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 380
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 383
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 384
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_calm"

    const-string v2, "\u0421\u0432\u0435\u0436\u043e \u043b\u0438\u0446\u0435"

    const-string v3, "Fresh face"

    const-string v4, "\u0411\u0435\u0437 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u0432 \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430"

    const-string v5, "No tension in the forehead and jaw"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_8da

    .line 386
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 384
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 387
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 388
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_jaw"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0420\u0435\u043b\u0430\u043a\u0441\u0430\u0446\u0438\u044f \u043d\u0430 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430"

    const-string v3, "Face \u00b7 Jaw relaxation"

    const-string v4, "\u041f\u043e-\u043c\u0435\u043a \u0434\u043e\u043b\u0435\u043d \u043e\u0432\u0430\u043b"

    const-string v5, "A softer jawline"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_8e4

    .line 389
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 388
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 390
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 391
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_chin"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043f\u0440\u043e\u0444\u0438\u043b"

    const-string v3, "Face \u00b7 Firm profile"

    const-string v4, "\u041f\u043e-\u0441\u0442\u0435\u0433\u043d\u0430\u0442 \u043f\u0440\u043e\u0444\u0438\u043b"

    const-string v5, "A firmer profile"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0x9

    aput v9, v7, v8

    .line 392
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 391
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 393
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 397
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "back_active"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "senior"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "postpartum"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "drain"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "back_pain"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "recovery"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "antiage_passive"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "senior_passive"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "core_passive"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "general_passive"

    aput-object v2, v1, v0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_810
    if-ge v0, v2, :cond_81e

    aget-object v3, v1, v0

    .line 399
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_810

    .line 401
    :cond_81e
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "power"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "cardio"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "mass"

    aput-object v2, v1, v0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_832
    if-ge v0, v2, :cond_840

    aget-object v3, v1, v0

    .line 402
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    const/4 v4, 0x3

    iput v4, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_832

    .line 404
    :cond_840
    return-void

    .line 112
    nop

    :array_842
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 153
    :array_852
    .array-data 4
        0x3
        0x2
        0x9
        0x8
        0x1
        0x7
    .end array-data

    .line 155
    :array_862
    .array-data 4
        0x1
        0x7
        0x6
        0x5
        0x0
        0x4
    .end array-data

    .line 157
    :array_872
    .array-data 4
        0x1
        0x7
        0x6
        0x8
    .end array-data

    .line 159
    :array_87e
    .array-data 4
        0x7
        0x6
        0x5
        0x8
    .end array-data

    .line 170
    :array_88a
    .array-data 4
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    .line 358
    :array_8a2
    .array-data 4
        0x3
        0x2
        0x9
        0x8
        0x1
        0x7
        0x6
        0x5
    .end array-data

    .line 372
    :array_8b6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x9
    .end array-data

    .line 376
    :array_8c8
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x0
        0x1
        0x9
    .end array-data

    .line 384
    :array_8da
    .array-data 4
        0x8
        0x6
        0x7
    .end array-data

    .line 388
    :array_8e4
    .array-data 4
        0x6
        0x7
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 525
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    const-string v2, "face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    move v0, v1

    .line 527
    :goto_c
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->zones:[I

    array-length v2, v2

    if-ge v0, v2, :cond_22

    .line 528
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->zones:[I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->zones:[I

    aget v2, v2, v0

    if-lez v2, :cond_20

    const/16 v2, 0x64

    :goto_1b
    aput v2, v3, v0

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_20
    move v2, v1

    .line 528
    goto :goto_1b

    .line 531
    :cond_22
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
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
    .line 536
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    return-object v0
.end method

.method public static baseSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I
    .registers 12

    .prologue
    const/16 v5, 0x384

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x5dc

    const/16 v4, 0x4b0

    .line 702
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p1, v0, :cond_1d

    move v0, v1

    .line 703
    :goto_d
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_12e

    :cond_17
    move v2, v6

    :goto_18
    packed-switch v2, :pswitch_data_184

    move v3, v4

    .line 737
    :cond_1c
    :goto_1c
    :pswitch_1c
    return v3

    :cond_1d
    move v0, v2

    .line 702
    goto :goto_d

    .line 703
    :sswitch_1f
    const-string v1, "general"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_18

    :sswitch_28
    const-string v2, "glutes"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v1

    goto :goto_18

    :sswitch_32
    const-string v1, "core"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v2, 0x2

    goto :goto_18

    :sswitch_3c
    const-string v1, "mass"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v2, 0x3

    goto :goto_18

    :sswitch_46
    const-string v1, "upper"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v2, 0x4

    goto :goto_18

    :sswitch_50
    const-string v1, "power"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v2, 0x5

    goto :goto_18

    :sswitch_5a
    const-string v1, "cardio"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v2, 0x6

    goto :goto_18

    :sswitch_64
    const-string v1, "cellulite"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v2, 0x7

    goto :goto_18

    :sswitch_6e
    const-string v1, "passive_metabolic"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0x8

    goto :goto_18

    :sswitch_79
    const-string v1, "general_passive"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0x9

    goto :goto_18

    :sswitch_84
    const-string v1, "glutes_passive"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xa

    goto :goto_18

    :sswitch_8f
    const-string v1, "core_passive"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xb

    goto/16 :goto_18

    :sswitch_9b
    const-string v1, "power_passive"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xc

    goto/16 :goto_18

    :sswitch_a7
    const-string v1, "face"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xd

    goto/16 :goto_18

    :sswitch_b3
    const-string v1, "face_oval"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xe

    goto/16 :goto_18

    :sswitch_bf
    const-string v1, "face_tone"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xf

    goto/16 :goto_18

    :sswitch_cb
    const-string v1, "face_drain"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0x10

    goto/16 :goto_18

    :sswitch_d7
    const-string v1, "face_chin"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0x11

    goto/16 :goto_18

    :sswitch_e3
    const-string v1, "face_jaw"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0x12

    goto/16 :goto_18

    :sswitch_ef
    const-string v1, "face_relax"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0x13

    goto/16 :goto_18

    :sswitch_fb
    const-string v1, "face_calm"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0x14

    goto/16 :goto_18

    .line 709
    :pswitch_107
    if-eqz v0, :cond_10d

    move v0, v3

    :goto_10a
    move v3, v0

    goto/16 :goto_1c

    :cond_10d
    move v0, v4

    goto :goto_10a

    .line 711
    :pswitch_10f
    const/16 v3, 0x438

    goto/16 :goto_1c

    .line 720
    :pswitch_113
    if-nez v0, :cond_1c

    move v3, v4

    goto/16 :goto_1c

    :pswitch_118
    move v3, v5

    .line 722
    goto/16 :goto_1c

    .line 725
    :pswitch_11b
    const/16 v3, 0x438

    goto/16 :goto_1c

    .line 727
    :pswitch_11f
    const/16 v3, 0x30c

    goto/16 :goto_1c

    .line 730
    :pswitch_123
    const/16 v3, 0x2d0

    goto/16 :goto_1c

    :pswitch_127
    move v3, v5

    .line 732
    goto/16 :goto_1c

    :pswitch_12a
    move v3, v4

    .line 735
    goto/16 :goto_1c

    .line 703
    nop

    :sswitch_data_12e
    .sparse-switch
        -0x6ef04930 -> :sswitch_79
        -0x699e30ff -> :sswitch_fb
        -0x699e1714 -> :sswitch_d7
        -0x69986f0c -> :sswitch_b3
        -0x699641ec -> :sswitch_bf
        -0x558a3613 -> :sswitch_9b
        -0x5183fbca -> :sswitch_5a
        -0x4a13fe0e -> :sswitch_28
        -0x2b99fa26 -> :sswitch_84
        -0x4c6f718 -> :sswitch_1f
        0x2eaf9f -> :sswitch_32
        0x2fd65d -> :sswitch_a7
        0x3306f4 -> :sswitch_3c
        0x65e8905 -> :sswitch_50
        0x6a558a2 -> :sswitch_46
        0x1c4fe11c -> :sswitch_6e
        0x1da0293e -> :sswitch_e3
        0x2deab687 -> :sswitch_8f
        0x35edb996 -> :sswitch_cb
        0x36ad422e -> :sswitch_ef
        0x625d7281 -> :sswitch_64
    .end sparse-switch

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_107
        :pswitch_10f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_113
        :pswitch_113
        :pswitch_113
        :pswitch_118
        :pswitch_11b
        :pswitch_11b
        :pswitch_11f
        :pswitch_123
        :pswitch_123
        :pswitch_127
        :pswitch_12a
        :pswitch_12a
    .end packed-switch
.end method

.method public static blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 641
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

    .line 649
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v2, :cond_16

    .line 650
    const-string v0, "\u0421\u0430\u043c\u043e \u0437\u0430 \u0436\u0435\u043d\u0438"

    const-string v1, "Women only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    :goto_15
    return-object v0

    .line 652
    :cond_16
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->maleOnly:Z

    if-eqz v0, :cond_29

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_29

    .line 653
    const-string v0, "\u041c\u044a\u0436\u043a\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v1, "Men\'s program"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 655
    :cond_29
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-wide v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    cmpl-double v0, v2, v6

    if-ltz v0, :cond_46

    iget-wide v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->hoursSinceActive:D

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_46

    .line 656
    const-string v0, "\u041f\u043e\u0434 24 \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u2014 \u0441\u0430\u043c\u043e \u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v1, "Under 24 h since the last active one \u2014 passive only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 659
    :cond_46
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p1, v0, :cond_68

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v2

    cmpl-double v0, v2, v6

    if-lez v0, :cond_68

    invoke-virtual {p2}, Lcom/isaigu/gymapp/ai/AutoModel$Input;->bmi()D

    move-result-wide v2

    const-wide v4, 0x4032800000000000L    # 18.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_68

    .line 660
    const-string v0, "\u0418\u0422\u041c \u043f\u043e\u0434 18.5 \u2014 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435\u0442\u043e \u043d\u0435 \u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u043e"

    const-string v1, "BMI under 18.5 \u2014 weight loss is not suitable"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 663
    :cond_68
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x46

    if-lt v0, v2, :cond_81

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-eq p1, v0, :cond_81

    .line 664
    const-string v0, "\u0421\u043b\u0435\u0434 70 \u0433. \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u0437\u0430 \u0437\u0434\u0440\u0430\u0432\u0435"

    const-string v1, "After 70 \u2014 the health programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 666
    :cond_81
    const-string v0, "power"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const-string v0, "power_passive"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 667
    :cond_95
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_a4

    .line 668
    const-string v0, "\u0421\u043b\u0435\u0434 4 \u0441\u0435\u0441\u0438\u0438 (\u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f)"

    const-string v1, "After 4 sessions (adaptation)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 670
    :cond_a4
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_b4

    .line 671
    const-string v0, "\u0414\u043e 60 \u0433."

    const-string v1, "Under 60"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 673
    :cond_b4
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v2, :cond_ce

    const-string v0, "power"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 674
    const-string v0, "\u041d\u0443\u0436\u043d\u0430 \u0435 \u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "Needs medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 677
    :cond_ce
    if-nez p3, :cond_d3

    move-object v0, v1

    .line 678
    goto/16 :goto_15

    .line 680
    :cond_d3
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksFace:Z

    if-eqz v0, :cond_e7

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->injectable:Z

    if-eqz v0, :cond_e7

    .line 681
    const-string v0, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u0434\u043e 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u2014 \u0434\u043d\u0435\u0441 \u0431\u0435\u0437 \u043b\u0438\u0446\u0435"

    const-string v1, "Botox or filler within 2 weeks \u2014 no face today"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 684
    :cond_e7
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    if-eqz v0, :cond_fd

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->anyBackRedFlag()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 685
    const-string v0, "\u0421\u0438\u0433\u043d\u0430\u043b \u0437\u0430 \u0442\u0440\u0435\u0432\u043e\u0433\u0430 \u0437\u0430 \u0433\u044a\u0440\u0431\u0430 \u2014 \u043f\u044a\u0440\u0432\u043e \u043b\u0435\u043a\u0430\u0440"

    const-string v1, "Back red flag \u2014 see a doctor first"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 688
    :cond_fd
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksPostpartum:Z

    if-eqz v0, :cond_149

    .line 689
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    if-eqz v0, :cond_147

    const/16 v0, 0xc

    .line 690
    :goto_109
    iget-object v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-ge v2, v0, :cond_149

    .line 691
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

    .line 689
    :cond_147
    const/4 v0, 0x6

    goto :goto_109

    :cond_149
    move-object v0, v1

    .line 695
    goto/16 :goto_15
.end method

.method private static varargs ch([I)[I
    .registers 1

    .prologue
    .line 1333
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
    .line 1248
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

    .line 1249
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1250
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1251
    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v1, 0xfa

    const/16 v2, 0xa

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    return-object v6
.end method

.method static corridor(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)[D
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 1357
    const-string v0, "passive_metabolic"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1358
    new-array v0, v2, [D

    fill-array-data v0, :array_18

    .line 1360
    :goto_10
    return-object v0

    :cond_11
    new-array v0, v2, [D

    fill-array-data v0, :array_24

    goto :goto_10

    .line 1358
    nop

    :array_18
    .array-data 8
        0x3fd0000000000000L    # 0.25
        0x3fdccccccccccccdL    # 0.45
    .end array-data

    .line 1360
    :array_24
    .array-data 8
        0x3fd999999999999aL    # 0.4
        0x3fe2e147ae147ae1L    # 0.59
    .end array-data
.end method

.method private static face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 516
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    .line 517
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    .line 518
    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 519
    const-string v0, "gentle"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 520
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksFace:Z

    .line 521
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 522
    return-void
.end method

.method private static faceCooldown(Ljava/util/List;I)V
    .registers 3
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
    .line 479
    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;II)V

    .line 480
    return-void
.end method

.method private static faceCooldown(Ljava/util/List;II)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 483
    const-string v2, "COOLDOWN"

    const-string v3, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v4, "Let go"

    const-wide v5, 0x3fb999999999999aL    # 0.1

    move-object v1, p0

    move v7, p1

    move-wide v10, v8

    invoke-static/range {v1 .. v11}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 484
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 485
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 486
    const-string v1, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u043b\u0438\u0446\u0435\u0442\u043e \u2014 \u0441\u0430\u043c\u043e \u043c\u0435\u043a\u0438 \u043a\u0440\u0430\u0442\u043a\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 487
    const-string v1, "Let the face go \u2014 only soft short holds"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 488
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v1, 0x1e

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/16 v4, 0x1f4

    invoke-static {v1, p2, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method private static faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 471
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/16 v1, 0x1e

    const/16 v2, 0x64

    add-int/lit8 v3, p0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 472
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 473
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 474
    return-object v0
.end method

.method private static faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 5

    .prologue
    .line 438
    const/16 v0, 0x64

    const/16 v1, 0x1f4

    invoke-static {p0, v0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    return-object v0
.end method

.method private static faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    .line 442
    const/16 v0, 0x14

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 443
    iput p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 444
    iput p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 445
    return-object v0
.end method

.method private static faceStep(IIIII[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 7

    .prologue
    .line 450
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 451
    iput-object p5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 452
    return-object v0
.end method

.method private static faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 10

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 457
    const/16 v3, 0xa

    new-array v5, v3, [I

    .line 458
    if-eqz p1, :cond_17

    .line 459
    array-length v4, p1

    move v3, v0

    :goto_c
    if-ge v3, v4, :cond_17

    aget v6, p1, v3

    .line 460
    const/16 v7, 0x32

    aput v7, v5, v6

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 463
    :cond_17
    array-length v3, p0

    :goto_18
    if-ge v0, v3, :cond_21

    aget v4, p0, v0

    .line 464
    aput v1, v5, v4

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 466
    :cond_21
    const/16 v0, 0x1e

    const/16 v4, 0x12c

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    return-object v0
.end method

.method private static fixDurations(Ljava/util/List;I)V
    .registers 14
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
    const/4 v3, 0x0

    .line 1260
    .line 1261
    const/4 v1, 0x0

    .line 1262
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1263
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-nez v5, :cond_62

    .line 1264
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v1, v2

    move v2, v1

    :goto_1d
    move-object v1, v0

    .line 1267
    goto :goto_7

    .line 1269
    :cond_1f
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v3

    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1270
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1271
    const/16 v5, 0x258

    iput v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    move v0, v4

    :goto_3b
    move v4, v0

    .line 1276
    goto :goto_24

    .line 1273
    :cond_3d
    if-lez v2, :cond_51

    iget v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-double v8, v5

    int-to-double v10, p1

    mul-double/2addr v8, v10

    int-to-double v10, v2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v5, v8

    :goto_4b
    iput v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 1274
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v0, v4

    goto :goto_3b

    :cond_51
    move v5, v3

    .line 1273
    goto :goto_4b

    .line 1277
    :cond_53
    if-eqz v1, :cond_61

    .line 1278
    const/16 v0, 0x1e

    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 1280
    :cond_61
    return-void

    :cond_62
    move-object v0, v1

    goto :goto_1d
.end method

.method public static get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 4

    .prologue
    .line 540
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

    .line 541
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 545
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static goalOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;
    .registers 3

    .prologue
    .line 621
    if-nez p0, :cond_5

    .line 622
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 628
    :goto_4
    return-object v0

    .line 624
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 628
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 625
    :pswitch_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 627
    :pswitch_16
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 624
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
    .line 1346
    const-string v0, "cardio"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "passive_metabolic"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "antiage"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1347
    :cond_1e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    .line 1352
    :goto_20
    return-object v0

    .line 1349
    :cond_21
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p1, v0, :cond_46

    const-string v0, "general"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "glutes"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string v0, "core"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1350
    :cond_43
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    goto :goto_20

    .line 1352
    :cond_46
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CAP:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    goto :goto_20
.end method

.method public static isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z
    .registers 3

    .prologue
    .line 100
    if-eqz p0, :cond_e

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    const-string v1, "face"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static kindOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Kind;
    .registers 2

    .prologue
    .line 633
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

    .line 1225
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v4, [I

    aput v6, v1, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
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

    .line 1227
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

    .line 1228
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

    .line 1229
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    return-void

    .line 1226
    nop

    :array_72
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 1227
    :array_7a
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 1228
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

    .line 551
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_100

    .line 566
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_e1

    .line 567
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "back_active"

    aput-object v2, v0, v1

    const-string v2, "senior"

    aput-object v2, v0, v3

    const-string v2, "antiage"

    aput-object v2, v0, v4

    .line 571
    :goto_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 572
    array-length v3, v0

    :goto_28
    if-ge v1, v3, :cond_ff

    aget-object v4, v0, v1

    .line 573
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 554
    :pswitch_36
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_5c

    .line 555
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "general"

    aput-object v2, v0, v1

    const-string v2, "mass"

    aput-object v2, v0, v3

    const-string v2, "upper"

    aput-object v2, v0, v4

    const-string v2, "glutes"

    aput-object v2, v0, v5

    const-string v2, "core"

    aput-object v2, v0, v6

    const/4 v2, 0x5

    const-string v3, "power"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "antiage"

    aput-object v3, v0, v2

    goto :goto_22

    .line 556
    :cond_5c
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "general_passive"

    aput-object v2, v0, v1

    const-string v2, "mass_passive"

    aput-object v2, v0, v3

    const-string v2, "upper_passive"

    aput-object v2, v0, v4

    const-string v2, "glutes_passive"

    aput-object v2, v0, v5

    const-string v2, "core_passive"

    aput-object v2, v0, v6

    const/4 v2, 0x5

    const-string v3, "power_passive"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "antiage_passive"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "cellulite"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "postpartum"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "passive_metabolic"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "face"

    aput-object v3, v0, v2

    goto :goto_22

    .line 560
    :pswitch_96
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_b8

    .line 561
    const/4 v0, 0x6

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

    const/4 v2, 0x5

    const-string v3, "antiage"

    aput-object v3, v0, v2

    goto/16 :goto_22

    .line 562
    :cond_b8
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "passive_metabolic"

    aput-object v2, v0, v1

    const-string v2, "general_passive"

    aput-object v2, v0, v3

    const-string v2, "glutes_passive"

    aput-object v2, v0, v4

    const-string v2, "core_passive"

    aput-object v2, v0, v5

    const-string v2, "power_passive"

    aput-object v2, v0, v6

    const/4 v2, 0x5

    const-string v3, "antiage_passive"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "cellulite"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "drain"

    aput-object v3, v0, v2

    goto/16 :goto_22

    .line 568
    :cond_e1
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "back_pain"

    aput-object v2, v0, v1

    const-string v2, "senior_passive"

    aput-object v2, v0, v3

    const-string v2, "antiage_passive"

    aput-object v2, v0, v4

    const-string v2, "drain"

    aput-object v2, v0, v5

    const-string v2, "postpartum"

    aput-object v2, v0, v6

    const/4 v2, 0x5

    const-string v3, "recovery"

    aput-object v3, v0, v2

    goto/16 :goto_22

    .line 575
    :cond_ff
    return-object v2

    .line 551
    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_36
        :pswitch_96
    .end packed-switch
.end method

.method public static menuAll(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AutoModel$Goal;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoCatalog$Program;",
            ">;"
        }
    .end annotation

    .prologue
    .line 583
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    .line 584
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    .line 585
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 586
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 587
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->passiveOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 589
    if-eqz v0, :cond_15

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 590
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 593
    :cond_40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 594
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 595
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 598
    :cond_5a
    return-object v2
.end method

.method static onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I
    .registers 6

    .prologue
    const/4 v2, 0x2

    .line 743
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_d

    .line 744
    new-array v0, v2, [I

    fill-array-data v0, :array_22

    .line 749
    :goto_c
    return-object v0

    .line 746
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_19

    .line 747
    new-array v0, v2, [I

    fill-array-data v0, :array_2a

    goto :goto_c

    .line 749
    :cond_19
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    goto :goto_c

    .line 744
    :array_22
    .array-data 4
        0x4
        0x6
    .end array-data

    .line 747
    :array_2a
    .array-data 4
        0x6
        0x4
    .end array-data
.end method

.method static varargs only([I)[I
    .registers 6

    .prologue
    .line 163
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 164
    array-length v2, p0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_11

    aget v3, p0, v0

    .line 165
    const/16 v4, 0x64

    aput v4, v1, v3

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 167
    :cond_11
    return-object v1
.end method

.method public static passiveOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 134
    if-nez p0, :cond_4

    .line 148
    :goto_3
    return-object v0

    .line 137
    :cond_4
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_9a

    :cond_c
    :goto_c
    packed-switch v1, :pswitch_data_c4

    goto :goto_3

    .line 138
    :pswitch_10
    const-string v0, "general_passive"

    goto :goto_3

    .line 137
    :sswitch_13
    const-string v2, "general"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :sswitch_1d
    const-string v2, "glutes"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x1

    goto :goto_c

    :sswitch_27
    const-string v2, "mass"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x2

    goto :goto_c

    :sswitch_31
    const-string v2, "upper"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x3

    goto :goto_c

    :sswitch_3b
    const-string v2, "core"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x4

    goto :goto_c

    :sswitch_45
    const-string v2, "power"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x5

    goto :goto_c

    :sswitch_4f
    const-string v2, "senior"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x6

    goto :goto_c

    :sswitch_59
    const-string v2, "cardio"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v1, 0x7

    goto :goto_c

    :sswitch_63
    const-string v2, "back_active"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v1, 0x8

    goto :goto_c

    :sswitch_6e
    const-string v2, "antiage"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v1, 0x9

    goto :goto_c

    .line 139
    :pswitch_79
    const-string v0, "glutes_passive"

    goto :goto_3

    .line 140
    :pswitch_7c
    const-string v0, "mass_passive"

    goto :goto_3

    .line 141
    :pswitch_7f
    const-string v0, "upper_passive"

    goto :goto_3

    .line 142
    :pswitch_82
    const-string v0, "core_passive"

    goto/16 :goto_3

    .line 143
    :pswitch_86
    const-string v0, "power_passive"

    goto/16 :goto_3

    .line 144
    :pswitch_8a
    const-string v0, "senior_passive"

    goto/16 :goto_3

    .line 145
    :pswitch_8e
    const-string v0, "passive_metabolic"

    goto/16 :goto_3

    .line 146
    :pswitch_92
    const-string v0, "back_pain"

    goto/16 :goto_3

    .line 147
    :pswitch_96
    const-string v0, "antiage_passive"

    goto/16 :goto_3

    .line 137
    :sswitch_data_9a
    .sparse-switch
        -0x626b8aa2 -> :sswitch_63
        -0x5183fbca -> :sswitch_59
        -0x4a13fe0e -> :sswitch_1d
        -0x35ffd1d0 -> :sswitch_4f
        -0x327a9da3 -> :sswitch_6e
        -0x4c6f718 -> :sswitch_13
        0x2eaf9f -> :sswitch_3b
        0x3306f4 -> :sswitch_27
        0x65e8905 -> :sswitch_45
        0x6a558a2 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_79
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
        :pswitch_86
        :pswitch_8a
        :pswitch_8e
        :pswitch_92
        :pswitch_96
    .end packed-switch
.end method

.method static pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 4

    .prologue
    .line 1301
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 1302
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 1303
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
    .line 1234
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;-><init>()V

    .line 1235
    iput-object p1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    .line 1236
    iput-object p2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    .line 1237
    iput-object p3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    .line 1238
    int-to-double v2, p6

    mul-double/2addr v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 1239
    iput-wide p7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 1240
    iput-wide p9, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 1241
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1242
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1243
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1244
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
    .line 753
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 754
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_bb

    const/4 v2, 0x1

    .line 755
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1258

    :cond_18
    :goto_18
    packed-switch v4, :pswitch_data_12d6

    .line 1201
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1202
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1203
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1204
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    const-string v4, "MAIN"

    const-string v5, "\u041c\u0430\u0441\u0430\u0436"

    const-string v6, "Massage"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1206
    iget-object v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x8

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x2

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1212
    :goto_95
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->fixDurations(Ljava/util/List;I)V

    .line 1213
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v2

    if-eqz v2, :cond_1256

    .line 1214
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a4
    :goto_a4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1256

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1215
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 1216
    const/16 v5, 0x78

    iput v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    goto :goto_a4

    .line 754
    :cond_bb
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 755
    :sswitch_be
    const-string v6, "general"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x0

    goto/16 :goto_18

    :sswitch_c9
    const-string v6, "glutes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x1

    goto/16 :goto_18

    :sswitch_d4
    const-string v6, "mass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x2

    goto/16 :goto_18

    :sswitch_df
    const-string v6, "upper"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x3

    goto/16 :goto_18

    :sswitch_ea
    const-string v6, "core"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x4

    goto/16 :goto_18

    :sswitch_f5
    const-string v6, "power"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x5

    goto/16 :goto_18

    :sswitch_100
    const-string v6, "cardio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x6

    goto/16 :goto_18

    :sswitch_10b
    const-string v6, "back_active"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x7

    goto/16 :goto_18

    :sswitch_116
    const-string v6, "senior"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x8

    goto/16 :goto_18

    :sswitch_122
    const-string v6, "general_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x9

    goto/16 :goto_18

    :sswitch_12e
    const-string v6, "upper_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xa

    goto/16 :goto_18

    :sswitch_13a
    const-string v6, "core_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xb

    goto/16 :goto_18

    :sswitch_146
    const-string v6, "glutes_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xc

    goto/16 :goto_18

    :sswitch_152
    const-string v6, "mass_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xd

    goto/16 :goto_18

    :sswitch_15e
    const-string v6, "power_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xe

    goto/16 :goto_18

    :sswitch_16a
    const-string v6, "senior_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xf

    goto/16 :goto_18

    :sswitch_176
    const-string v6, "cellulite"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x10

    goto/16 :goto_18

    :sswitch_182
    const-string v6, "drain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x11

    goto/16 :goto_18

    :sswitch_18e
    const-string v6, "passive_metabolic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x12

    goto/16 :goto_18

    :sswitch_19a
    const-string v6, "back_pain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x13

    goto/16 :goto_18

    :sswitch_1a6
    const-string v6, "postpartum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x14

    goto/16 :goto_18

    :sswitch_1b2
    const-string v6, "face"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x15

    goto/16 :goto_18

    :sswitch_1be
    const-string v6, "face_tone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x16

    goto/16 :goto_18

    :sswitch_1ca
    const-string v6, "face_oval"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x17

    goto/16 :goto_18

    :sswitch_1d6
    const-string v6, "face_drain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x18

    goto/16 :goto_18

    :sswitch_1e2
    const-string v6, "face_relax"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x19

    goto/16 :goto_18

    :sswitch_1ee
    const-string v6, "face_calm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x1a

    goto/16 :goto_18

    :sswitch_1fa
    const-string v6, "face_jaw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x1b

    goto/16 :goto_18

    :sswitch_206
    const-string v6, "face_chin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x1c

    goto/16 :goto_18

    :sswitch_212
    const-string v6, "antiage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x1d

    goto/16 :goto_18

    :sswitch_21e
    const-string v6, "antiage_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x1e

    goto/16 :goto_18

    .line 761
    :pswitch_22a
    const-string v4, "glutes"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24e

    const-string v4, "mass"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24e

    const-string v4, "upper"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_346

    .line 762
    :cond_24e
    const/4 v4, 0x5

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v4

    move-object v14, v4

    .line 765
    :goto_257
    const-string v4, "mass"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_351

    .line 766
    const-string v5, "\u041a\u043b\u0435\u043a, \u043b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435, \u043f\u0440\u0435\u0441\u0430 \u2014 \u0431\u0430\u0432\u043d\u043e \u0438 \u0442\u0435\u0436\u043a\u043e"

    .line 767
    const-string v4, "Squat, push-ups, rows, press \u2014 slow and heavy"

    move-object v15, v4

    move-object/from16 v16, v5

    .line 781
    :goto_26a
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    if-eqz v2, :cond_399

    const-wide v7, 0x3fb999999999999aL    # 0.1

    :goto_277
    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 782
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 783
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 784
    const-string v5, "\u041a\u043b\u0435\u043a, \u0445\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 785
    const-string v5, "Squat, marching"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 786
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    if-eqz v2, :cond_3a0

    const-wide v7, 0x3fdccccccccccccdL    # 0.45

    :goto_2b5
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v5

    .line 788
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 789
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 790
    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 791
    iput-object v15, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 792
    const/16 v4, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 793
    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v2, :cond_2eb

    const/4 v6, 0x6

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v4, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    :cond_2eb
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    if-eqz v2, :cond_339

    .line 795
    const-string v4, "METABOLIC"

    const-string v5, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Burn"

    const-wide v7, 0x3fd6666666666666L    # 0.35

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 796
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 797
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435, \u0441\u0442\u0435\u043f, \u043b\u0435\u043a\u0438 \u043a\u043b\u0435\u043a\u043e\u0432\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 798
    const-string v4, "Walking, step, light squats"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 799
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_339
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 762
    :cond_346
    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v4

    move-object v14, v4

    goto/16 :goto_257

    .line 768
    :cond_351
    const-string v4, "upper"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_366

    .line 769
    const-string v5, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435, \u043f\u0440\u0435\u0441\u0430, \u0431\u0438\u0446\u0435\u043f\u0441, \u0442\u0440\u0438\u0446\u0435\u043f\u0441"

    .line 770
    const-string v4, "Push-ups, rows, press, biceps, triceps"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_26a

    .line 771
    :cond_366
    const-string v4, "glutes"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37b

    .line 772
    const-string v5, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0433\u043b\u0443\u0442\u0435\u0443\u0441 \u043c\u043e\u0441\u0442, \u0430\u0431\u0434\u0443\u043a\u0446\u0438\u044f"

    .line 773
    const-string v4, "Squat, lunge, glute bridge, abduction"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_26a

    .line 774
    :cond_37b
    const-string v4, "core"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_390

    .line 775
    const-string v5, "\u041f\u043b\u0430\u043d\u043a, \u043a\u0440\u044a\u043d\u0447, \u0440\u043e\u0442\u0430\u0446\u0438\u0438, \u201e\u043c\u044a\u0440\u0442\u0432\u0430 \u0431\u0443\u0431\u043e\u043b\u0435\u0447\u043a\u0430\u201c"

    .line 776
    const-string v4, "Plank, crunch, rotations, dead bug"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_26a

    .line 778
    :cond_390
    const-string v5, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u043b\u0438\u0446\u0435\u0432\u0438 \u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435, \u0433\u0440\u0435\u0431\u0430\u043d\u0435"

    .line 779
    const-string v4, "Squat, lunge, knee push-ups, rows"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_26a

    .line 781
    :cond_399
    const-wide v7, 0x3fc3333333333333L    # 0.15

    goto/16 :goto_277

    .line 787
    :cond_3a0
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    goto/16 :goto_2b5

    .line 806
    :pswitch_3a4
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 807
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 808
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 809
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    const-string v4, "MAIN"

    const-string v5, "\u0412\u0437\u0440\u0438\u0432\u043d\u0430 \u0441\u0438\u043b\u0430"

    const-string v6, "Explosive power"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 811
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 812
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 813
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onMinus:I

    .line 814
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onPlus:I

    .line 815
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 816
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x3

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offPlus:I

    .line 817
    const-string v4, "\u0412\u0437\u0440\u0438\u0432\u0435\u043d \u043a\u043b\u0435\u043a / \u0441\u043a\u043e\u043a / \u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435 \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 818
    const-string v4, "Explosive squat / jump / throw at your own pace"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 819
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x64

    const/16 v5, 0x12c

    const/4 v6, 0x3

    const/16 v7, 0x9

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 824
    :pswitch_436
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 825
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 826
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 827
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    const-string v4, "METABOLIC"

    const-string v5, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Burn"

    const-wide v7, 0x3fe999999999999aL    # 0.8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 829
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 830
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 831
    const-string v4, "\u0421\u0442\u0435\u043f, \u0445\u043e\u0434\u0435\u043d\u0435, \u043a\u043b\u0435\u043a \u2014 \u0431\u0435\u0437 \u0441\u043f\u0438\u0440\u0430\u043d\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 832
    const-string v4, "Step, walking, squats \u2014 keep moving"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 833
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 839
    :pswitch_4ca
    const/4 v2, 0x6

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v2

    .line 840
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 841
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 842
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 843
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e\u0441\u0442"

    const-string v6, "Stability"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 845
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 846
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 847
    const-string v5, "\u041f\u0442\u0438\u0446\u0430-\u043a\u0443\u0447\u0435, \u043c\u043e\u0441\u0442, \u043f\u043b\u0430\u043d\u043a, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0443\u0441\u0443\u043a\u0432\u0430\u043d\u0435 \u043f\u043e\u0434 \u0442\u043e\u0432\u0430\u0440"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 848
    const-string v5, "Bird-dog, bridge, plank, rows \u2014 no loaded twisting"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 849
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

    .line 850
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x4

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 866
    :pswitch_556
    const/4 v2, 0x4

    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v2

    .line 867
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v4, v5, :cond_56c

    .line 868
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1318

    .line 870
    :cond_56c
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fbeb851eb851eb8L    # 0.12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 871
    const-string v5, "\u0425\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e, \u043a\u0440\u044a\u0433\u043e\u0432\u0435 \u0441 \u0440\u0430\u043c\u0435\u043d\u0435\u0442\u0435"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 872
    const-string v5, "Marching, shoulder circles"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 873
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    const-string v4, "MAIN"

    const-string v5, "\u041c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v6, "Muscle"

    const-wide v7, 0x3fd851eb851eb852L    # 0.38

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 875
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 876
    const-string v5, "\u0421\u0442\u0430\u0432\u0430\u043d\u0435 \u043e\u0442 \u0441\u0442\u043e\u043b, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u0441 \u043b\u0430\u0441\u0442\u0438\u043a, \u043c\u043e\u0441\u0442 \u2014 \u0431\u0430\u0432\u043d\u043e \u0438 \u043a\u043e\u043d\u0442\u0440\u043e\u043b\u0438\u0440\u0430\u043d\u043e"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 877
    const-string v5, "Sit-to-stand, band rows, bridge \u2014 slow and controlled"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 878
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

    .line 879
    const-string v4, "SPEED"

    const-string v5, "\u0411\u044a\u0440\u0437\u0438\u043d\u0430"

    const-string v6, "Speed"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 880
    const-string v4, "\u0421 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u2014 \u0431\u044a\u0440\u0437\u043e \u0441\u0442\u0430\u0432\u0430\u043d\u0435 \u043e\u0442 \u0441\u0442\u043e\u043b \u0438\u043b\u0438 \u0431\u044a\u0440\u0437\u0430 \u043a\u0440\u0430\u0447\u043a\u0430, \u043f\u043e\u0441\u043b\u0435 \u0431\u0430\u0432\u043d\u043e \u043d\u0430\u0434\u043e\u043b\u0443"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 881
    const-string v4, "With the impulse \u2014 a quick sit-to-stand or a quick step, then slowly down"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 882
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x46

    const/16 v5, 0x12c

    const/4 v6, 0x2

    const/4 v7, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    const-string v4, "BONE"

    const-string v5, "\u041a\u043e\u0441\u0442\u0438"

    const-string v6, "Bone"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 884
    const-string v4, "\u0421 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u2014 \u043d\u0430 \u043f\u0440\u044a\u0441\u0442\u0438 \u0438 \u043f\u0443\u0441\u043d\u0438 \u043f\u0435\u0442\u0438\u0442\u0435 \u043d\u0430 \u043f\u043e\u0434\u0430; \u043f\u0440\u0438 \u043e\u0441\u0442\u0435\u043e\u043f\u043e\u0440\u043e\u0437\u0430 \u2014 \u0431\u0435\u0437 \u0443\u0434\u0430\u0440"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 885
    const-string v4, "With the impulse \u2014 up on the toes and drop the heels; with osteoporosis \u2014 no impact"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 886
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    const-string v4, "SUGAR"

    const-string v5, "\u0417\u0430\u0445\u0430\u0440"

    const-string v6, "Blood sugar"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 888
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e \u2014 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 889
    const-string v4, "Marching \u2014 the legs keep working"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 890
    const/16 v4, 0xf

    const/16 v5, 0x12c

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 891
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoCatalog;->LOWER:[I

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 892
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 902
    :pswitch_66a
    const-string v2, "core_passive"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 903
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 904
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    const-string v4, "MAIN"

    if-eqz v14, :cond_714

    const-string v5, "\u041e\u043f\u043e\u0440\u0430"

    :goto_6a0
    if-eqz v14, :cond_717

    const-string v6, "Support"

    :goto_6a4
    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 906
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v2

    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 907
    if-eqz v14, :cond_71a

    const-string v2, "\u041b\u0435\u0433\u043d\u0438 \u043f\u043e \u0433\u0440\u044a\u0431, \u043a\u043e\u043b\u0435\u043d\u0435\u0442\u0435 \u0441\u0432\u0438\u0442\u0438 \u2014 \u0441\u0430\u043c\u043e \u0434\u0438\u0448\u0430\u0439 \u0441 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    .line 908
    :goto_6bd
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 909
    if-eqz v14, :cond_71d

    const-string v2, "Lie on your back, knees bent \u2014 just breathe with the impulse"

    .line 910
    :goto_6c3
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 911
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x50

    if-eqz v14, :cond_720

    const/16 v2, 0x12c

    :goto_6cd
    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v5, v2, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    const/4 v5, 0x6

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-static {v2, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    const-string v4, "FLOW"

    const-string v5, "\u041a\u0440\u044a\u0432\u043e\u0442\u043e\u043a"

    const-string v6, "Blood flow"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 913
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 905
    :cond_714
    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    goto :goto_6a0

    :cond_717
    const-string v6, "Tone"

    goto :goto_6a4

    .line 908
    :cond_71a
    const-string v2, "\u041b\u0435\u0433\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0441\u0430\u043c\u0438, \u043d\u0435 \u0441\u0435 \u0441\u044a\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u044f\u0432\u0430\u0439"

    goto :goto_6bd

    .line 910
    :cond_71d
    const-string v2, "Lie comfortably \u2014 the muscles work by themselves, do not resist"

    goto :goto_6c3

    .line 911
    :cond_720
    const/16 v2, 0x15e

    goto :goto_6cd

    .line 919
    :pswitch_723
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 920
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    const-string v4, "MAIN"

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    const-string v6, "Tone"

    const-wide v7, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 922
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 923
    const-string v4, "\u041b\u0435\u0433\u043d\u0438 \u043f\u043e \u043a\u043e\u0440\u0435\u043c \u2014 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0438 \u0431\u0435\u0434\u0440\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0441\u0430\u043c\u0438"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 924
    const-string v4, "Lie face down \u2014 the glutes and thighs work by themselves"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 925
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x50

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    const/4 v5, 0x6

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    const-string v4, "WAVE"

    const-string v5, "\u0414\u0440\u0435\u043d\u0430\u0436\u043d\u0430 \u0432\u044a\u043b\u043d\u0430"

    const-string v6, "Drainage wave"

    const-wide v7, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 927
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 928
    const/16 v4, 0x23

    const/16 v5, 0x12c

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 929
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 935
    :pswitch_7b2
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 936
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    const-string v4, "MAIN"

    const-string v5, "\u0414\u044a\u043b\u0433\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f"

    const-string v6, "Long holds"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 938
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 939
    const-string v4, "\u041b\u0435\u0433\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e \u2014 \u0441\u0438\u043b\u043d\u043e, \u0434\u044a\u043b\u0431\u043e\u043a\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435; \u0434\u0438\u0448\u0430\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 940
    const-string v4, "Lie comfortably \u2014 a strong, deep hold; breathe calmly"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 941
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x4b

    const/16 v5, 0x190

    const/4 v6, 0x4

    const/16 v7, 0xa

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    const-string v4, "FLOW"

    const-string v5, "\u041a\u0440\u044a\u0432\u043e\u0442\u043e\u043a"

    const-string v6, "Blood flow"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 943
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 949
    :pswitch_83b
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 950
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    const-string v4, "MAIN"

    const-string v5, "\u0412\u0437\u0440\u0438\u0432\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v6, "Explosive bursts"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 952
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 953
    const-string v4, "\u041b\u0435\u0433\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e \u2014 \u043a\u0440\u0430\u0442\u044a\u043a \u0441\u0438\u043b\u0435\u043d \u0443\u0434\u0430\u0440, \u0434\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 954
    const-string v4, "Lie comfortably \u2014 a short strong burst, a long rest"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 955
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x64

    const/16 v5, 0x12c

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    const-string v4, "FLOW"

    const-string v5, "\u041a\u0440\u044a\u0432\u043e\u0442\u043e\u043a"

    const-string v6, "Blood flow"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 957
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 966
    :pswitch_8c7
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fbeb851eb851eb8L    # 0.12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 967
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0438\u043b\u0430 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430"

    const-string v6, "Leg strength"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 969
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 970
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e, \u0441\u0442\u044a\u043f\u0430\u043b\u0430\u0442\u0430 \u043d\u0430 \u043f\u043e\u0434\u0430 \u2014 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0441\u0430\u043c\u0438"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 971
    const-string v4, "Sit comfortably, feet on the floor \u2014 the legs work by themselves"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 972
    const/16 v4, 0x32

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 973
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoCatalog;->LOWER:[I

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 974
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    const-string v4, "POSTURE"

    const-string v5, "\u0421\u0442\u043e\u0439\u043a\u0430"

    const-string v6, "Posture"

    const-wide v7, 0x3fcd70a3d70a3d71L    # 0.23

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 976
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d \u2014 \u0433\u044a\u0440\u0431\u044a\u0442 \u0438 \u0440\u0430\u043c\u0435\u043d\u0435\u0442\u0435 \u0440\u0430\u0431\u043e\u0442\u044f\u0442"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 977
    const-string v4, "Sit up \u2014 the back and shoulders work"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 978
    const/16 v4, 0x32

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 979
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoCatalog;->POSTURE:[I

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 980
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    const-string v4, "SUGAR"

    const-string v5, "\u0417\u0430\u0445\u0430\u0440"

    const-string v6, "Blood sugar"

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 982
    const-string v4, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u0441\u0435 \u2014 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u043f\u043e\u0442\u0440\u0435\u043f\u0432\u0430\u0442 \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u043e; \u043d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 30\u201360 \u043c\u0438\u043d \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 983
    const-string v4, "Relax \u2014 the legs twitch in a rhythm; best 30\u201360 min after a meal"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 984
    const/4 v4, 0x5

    const/16 v5, 0x12c

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 985
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_1320

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 986
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 987
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 991
    :pswitch_9a1
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 992
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    const-string v4, "MAIN"

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    const-string v6, "Tone"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 994
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 995
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

    .line 996
    const-string v4, "WAVE"

    const-string v5, "\u0414\u0440\u0435\u043d\u0430\u0436\u043d\u0430 \u0432\u044a\u043b\u043d\u0430"

    const-string v6, "Drainage wave"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 997
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 998
    const/16 v4, 0x23

    const/16 v5, 0x12c

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 999
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1003
    :pswitch_a37
    move-object/from16 v0, p2

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b5f

    const/16 v2, 0x8

    .line 1004
    :goto_a40
    const-string v4, "OPEN"

    const-string v5, "\u041e\u0442\u0432\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Opening"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1005
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1006
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_132c

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
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

    fill-array-data v8, :array_1334

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    const-string v4, "LEGS"

    const-string v5, "\u041a\u0440\u0430\u043a\u0430"

    const-string v6, "Legs"

    const-wide v7, 0x3fe199999999999aL    # 0.55

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1010
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1011
    const/16 v5, 0x12c

    invoke-static {v4, v2, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 1012
    const-string v4, "ARMS"

    const-string v5, "\u0420\u044a\u0446\u0435 \u0438 \u0433\u0440\u044a\u0431"

    const-string v6, "Arms and back"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1013
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1014
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

    .line 1015
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_133c

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

    .line 1016
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

    fill-array-data v8, :array_1344

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1019
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

    .line 1003
    :cond_b5f
    const/16 v2, 0x23

    goto/16 :goto_a40

    .line 1023
    :pswitch_b63
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb47ae147ae147bL    # 0.08

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1024
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
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

    .line 1026
    const/4 v2, 0x4

    new-array v15, v2, [D

    fill-array-data v15, :array_134c

    .line 1027
    const/4 v2, 0x0

    :goto_bad
    array-length v4, v14

    if-ge v2, v4, :cond_c1d

    .line 1028
    const-string v4, "TONE"

    aget-object v5, v14, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1029
    if-nez v2, :cond_be8

    const-string v4, "MAIN"

    .line 1030
    :goto_bbc
    if-eqz v16, :cond_bfe

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    :goto_bc0
    if-eqz v16, :cond_c01

    const-string v6, "Tone"

    :goto_bc4
    aget-wide v7, v15, v2

    .line 1031
    if-eqz v16, :cond_c04

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    :goto_bca
    if-eqz v16, :cond_c0a

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    :goto_bce
    move/from16 v9, p3

    .line 1029
    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1032
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v16, :cond_c10

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    :goto_be2
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    add-int/lit8 v2, v2, 0x1

    goto :goto_bad

    .line 1029
    :cond_be8
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

    goto :goto_bbc

    .line 1030
    :cond_bfe
    const-string v5, "6 Hz"

    goto :goto_bc0

    :cond_c01
    const-string v6, "6 Hz"

    goto :goto_bc4

    .line 1031
    :cond_c04
    const-wide v10, 0x3fe6666666666666L    # 0.7

    goto :goto_bca

    :cond_c0a
    const-wide v12, 0x3fe6666666666666L    # 0.7

    goto :goto_bce

    .line 1032
    :cond_c10
    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    goto :goto_be2

    .line 1034
    :cond_c1d
    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1038
    :pswitch_c2a
    const-string v4, "RELAX"

    const-string v5, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v6, "Relax"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1039
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x4

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v6, "Stabilise"

    const-wide v7, 0x3fe199999999999aL    # 0.55

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1041
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 1042
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x0

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 1043
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x50

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    const-string v4, "RELIEF"

    const-string v5, "\u041e\u0431\u0435\u0437\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Relief"

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1045
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x2

    const/16 v5, 0xc8

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x2

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1050
    :pswitch_cc2
    move-object/from16 v0, p2

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_d60

    const/16 v2, 0x32

    .line 1051
    :goto_ccb
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

    .line 1052
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1053
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    const-string v4, "MAIN"

    const-string v5, "\u0422\u0430\u0437\u043e\u0432\u043e \u0434\u044a\u043d\u043e"

    const-string v6, "Pelvic floor"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide v10, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    move-wide v12, v14

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1055
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1056
    iput-wide v14, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1057
    const-string v5, "\u0421\u0442\u044f\u0433\u0430\u0439 \u0442\u0430\u0437\u043e\u0432\u043e\u0442\u043e \u0434\u044a\u043d\u043e \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1058
    const-string v5, "Lift the pelvic floor at your own pace"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1059
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

    .line 1060
    const-wide v4, 0x3fc3333333333333L    # 0.15

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1050
    :cond_d60
    const/16 v2, 0x28

    goto/16 :goto_ccb

    .line 1066
    :pswitch_d64
    const-string v2, "face"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1067
    if-eqz v14, :cond_df4

    const/16 v2, 0x46

    .line 1068
    :goto_d72
    const-string v4, "WARMUP"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v6, "Wake-up"

    const-wide v7, 0x3fbc28f5c28f5c29L    # 0.11

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1069
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1070
    const-wide v6, 0x3fe999999999999aL    # 0.8

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1071
    const-string v5, "\u0421\u0435\u0434\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e, \u043b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u044a\u0433\u043b\u0438\u0442\u0435 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430\u0442 \u043b\u0435\u043a\u043e \u043d\u0430\u0433\u043e\u0440\u0435"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1072
    const-string v5, "Sit comfortably, face relaxed \u2014 the mouth corners start to lift"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1073
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    const/16 v6, 0x8

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    const-string v4, "MAIN"

    if-eqz v14, :cond_df8

    const-string v5, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433"

    :goto_db5
    if-eqz v14, :cond_dfb

    const-string v6, "Lift"

    :goto_db9
    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    .line 1075
    if-eqz v14, :cond_dfe

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    :goto_dc5
    if-eqz v14, :cond_e04

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    :goto_dcc
    move/from16 v9, p3

    .line 1074
    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1076
    if-eqz v14, :cond_e0a

    const-string v2, "\u041b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u0431\u0443\u0437\u0438\u0442\u0435 \u0441\u0435 \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u0442 \u0441\u0430\u043c\u0438; \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430, \u0431\u0435\u0437 \u043c\u0438\u0433\u0430\u043d\u0435"

    .line 1077
    :goto_dd6
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1078
    if-eqz v14, :cond_e0d

    const-string v2, "Face relaxed \u2014 the cheeks lift by themselves; no pain, no blinking"

    .line 1079
    :goto_ddc
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1080
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v14, :cond_e10

    const/16 v2, 0x46

    const/4 v5, 0x3

    const/4 v6, 0x6

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    :goto_dea
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 1067
    :cond_df4
    const/16 v2, 0x23

    goto/16 :goto_d72

    .line 1074
    :cond_df8
    const-string v5, "\u0422\u043e\u043d\u0443\u0441 \u0438 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e\u0441\u0442"

    goto :goto_db5

    :cond_dfb
    const-string v6, "Tone & firmness"

    goto :goto_db9

    .line 1075
    :cond_dfe
    const-wide v10, 0x3fe999999999999aL    # 0.8

    goto :goto_dc5

    :cond_e04
    const-wide v12, 0x3fe999999999999aL    # 0.8

    goto :goto_dcc

    .line 1077
    :cond_e0a
    const-string v2, "\u041c\u0435\u043a\u043e, \u0440\u0430\u0432\u043d\u043e\u043c\u0435\u0440\u043d\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u2014 \u0443\u0441\u0435\u0449\u0430 \u0441\u0435, \u043d\u0435 \u0431\u043e\u043b\u0438"

    goto :goto_dd6

    .line 1079
    :cond_e0d
    const-string v2, "A soft, even hold \u2014 felt, never painful"

    goto :goto_ddc

    .line 1080
    :cond_e10
    const/16 v2, 0x23

    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    goto :goto_dea

    .line 1086
    :pswitch_e19
    const-string v4, "WARMUP"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v6, "Wake-up"

    const-wide v7, 0x3fbc28f5c28f5c29L    # 0.11

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1087
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1088
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1089
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d, \u043b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1090
    const-string v4, "Sit up, face relaxed"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1091
    iget-object v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x46

    const/16 v5, 0x64

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/16 v8, 0x1f4

    sget-object v9, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x32

    const/16 v5, 0x64

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/16 v8, 0x1f4

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0x9

    aput v11, v9, v10

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    const-string v4, "MAIN"

    const-string v5, "\u0421\u043a\u0443\u043b\u0438 \u0438 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430"

    const-string v6, "Cheekbones and chin"

    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1094
    const-string v4, "\u0411\u0443\u0437\u0438\u0442\u0435, \u043f\u043e\u0441\u043b\u0435 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u2014 \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430, \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1095
    const-string v4, "The cheeks, then the chin \u2014 no food or drink, no pain"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1096
    iget-object v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x46

    const/16 v5, 0x64

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/16 v8, 0x1f4

    sget-object v9, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x32

    const/16 v5, 0x64

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/16 v8, 0x1f4

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0x9

    aput v11, v9, v10

    invoke-static {v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 1103
    :pswitch_edc
    const-string v4, "OPEN"

    const-string v5, "\u041e\u0442\u0432\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Opening"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1104
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1105
    const-string v4, "\u0413\u043b\u0430\u0432\u0430\u0442\u0430 \u043b\u0435\u043a\u043e \u043d\u0430\u0437\u0430\u0434 \u2014 \u043f\u044a\u0440\u0432\u043e \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u043f\u044a\u0442\u044f\u0442 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1106
    const-string v4, "Head slightly back \u2014 first the way under the chin opens"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1107
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput v7, v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    const-string v4, "WAVE"

    const-string v5, "\u041b\u0438\u043c\u0444\u043d\u0430 \u0432\u044a\u043b\u043d\u0430"

    const-string v6, "Lymph wave"

    const-wide v7, 0x3feb333333333333L    # 0.85

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1110
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1111
    const-string v4, "\u0412\u044a\u043b\u043d\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 \u043d\u043e\u0441\u0430 \u043a\u044a\u043c \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430 \u0438 \u0443\u0445\u043e\u0442\u043e \u2014 \u0441\u0430\u043c\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043d\u0438"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1112
    const-string v4, "The wave runs from the nose to the jaw and the ear \u2014 just relax"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1113
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1360

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1368

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1370

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1378

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1380

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput v7, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1388

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 1122
    :pswitch_fa6
    const-string v5, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u043d\u0430 \u043c\u0438\u043c\u0438\u043a\u0430\u0442\u0430"

    const-string v6, "Expression relax"

    const-string v7, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u043e\u0447\u0438 \u0438 \u043e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u043e\u0442\u043e"

    const-string v8, "Close the eyes, let the forehead go \u2014 the current works on the nerves"

    const/4 v2, 0x1

    new-array v9, v2, [Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v2, 0x0

    const/16 v4, 0x64

    const/16 v10, 0x32

    const/4 v11, 0x4

    const/4 v12, 0x4

    const/16 v13, 0x3e8

    .line 1125
    invoke-static {v4, v10, v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    aput-object v4, v9, v2

    move/from16 v4, p3

    .line 1122
    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    goto/16 :goto_95

    .line 1128
    :pswitch_fc7
    const-string v5, "\u0421\u0432\u0435\u0436\u043e \u043b\u0438\u0446\u0435"

    const-string v6, "Fresh face"

    const-string v7, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430, \u0437\u044a\u0431\u0438\u0442\u0435 \u0434\u0430 \u043d\u0435 \u0441\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442"

    const-string v8, "Let the forehead and the jaw go, teeth apart"

    const/4 v2, 0x2

    new-array v9, v2, [Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v2, 0x0

    const/16 v4, 0x64

    const/16 v10, 0x32

    const/4 v11, 0x4

    const/4 v12, 0x4

    const/16 v13, 0x3e8

    .line 1131
    invoke-static {v4, v10, v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x1

    const/16 v4, 0x50

    const/16 v10, 0x32

    const/4 v11, 0x4

    const/4 v12, 0x4

    const/16 v13, 0x3e8

    invoke-static {v4, v10, v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    aput-object v4, v9, v2

    move/from16 v4, p3

    .line 1128
    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    goto/16 :goto_95

    .line 1135
    :pswitch_ff7
    const/4 v4, 0x2

    const/16 v5, 0x96

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    .line 1136
    const-string v5, "\u0420\u0435\u043b\u0430\u043a\u0441\u0430\u0446\u0438\u044f \u043d\u0430 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430"

    const-string v6, "Jaw relaxation"

    const-string v7, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430, \u0437\u044a\u0431\u0438\u0442\u0435 \u0434\u0430 \u043d\u0435 \u0441\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442"

    const-string v8, "Let the jaw hang, teeth apart"

    const/4 v4, 0x1

    new-array v9, v4, [Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v4, 0x0

    aput-object v2, v9, v4

    move/from16 v4, p3

    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    goto/16 :goto_95

    .line 1141
    :pswitch_1018
    const-string v4, "WARMUP"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v6, "Wake-up"

    const-wide v7, 0x3fbc28f5c28f5c29L    # 0.11

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1142
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1143
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1144
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d, \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1145
    const-string v4, "Sit up, no food or drink"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1146
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x1e

    const/16 v5, 0x96

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/16 v8, 0x1f4

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043f\u0440\u043e\u0444\u0438\u043b"

    const-string v6, "Firm profile"

    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1148
    const-string v4, "\u041f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430 \u2014 \u043d\u0435 \u043f\u0440\u0435\u0433\u043b\u044a\u0449\u0430\u0439 \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0442\u044f\u0433\u0430\u043d\u0435\u0442\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1149
    const-string v4, "It tightens under the chin \u2014 do not swallow during the hold"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1150
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x1e

    const/16 v5, 0x96

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/16 v8, 0x1f4

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    const/16 v2, 0x96

    move/from16 v0, p3

    invoke-static {v3, v0, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;II)V

    goto/16 :goto_95

    .line 1160
    :pswitch_1098
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1161
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1162
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1163
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e, \u043b\u0435\u043a\u0438 \u043a\u043b\u0435\u043a\u043e\u0432\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1164
    const-string v4, "Marching, light squats"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1165
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    const-string v4, "MAIN"

    const-string v5, "\u041c\u0438\u043e\u043a\u0438\u043d\u0438"

    const-string v6, "Myokines"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1167
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1168
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 1169
    const-string v4, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0440\u0430\u0437\u0442\u0432\u0430\u0440\u044f\u043d\u0435, \u0441\u0433\u044a\u0432\u0430\u043d\u0435 \u2014 \u0441\u044a\u0441 \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u043e \u0442\u0435\u0433\u043b\u043e, \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1170
    const-string v4, "Squat, lunge, raises, curls \u2014 body weight, at your own pace"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1171
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x1e

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    const-string v4, "BRAIN"

    const-string v5, "\u041c\u043e\u0437\u044a\u043a"

    const-string v6, "Brain"

    const-wide v7, 0x3fd3333333333333L    # 0.3

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1173
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1174
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e, \u0441\u0442\u0435\u043f \u2014 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0446\u0435\u043b\u0438\u0442\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1175
    const-string v4, "Marching, step \u2014 the whole legs work"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1176
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x14

    const/16 v5, 0x12c

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1177
    const-string v4, "INTERVAL"

    const-string v5, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u0438"

    const-string v6, "Intervals"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1178
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1179
    const-string v4, "4 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u0441 \u0432\u0441\u0438\u0447\u043a\u0430 \u0441\u0438\u043b\u0430, \u043f\u043e\u0441\u043b\u0435 \u043b\u0435\u043a\u043e \u2014 \u043a\u043b\u0435\u043a, \u043c\u043e\u0441\u0442, \u043b\u0438\u0446\u0435\u0432\u0438 \u043d\u0430 \u043f\u0435\u0439\u043a\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1180
    const-string v4, "4 seconds all out, then easy \u2014 squat, bridge, incline push-ups"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1181
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x46

    const/16 v6, 0x12c

    const/4 v7, 0x4

    const/4 v8, 0x2

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1183
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x4

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1189
    :pswitch_11a0
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1190
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    const-string v4, "MAIN"

    const-string v5, "\u0417\u0430\u0445\u0430\u0440"

    const-string v6, "Blood sugar"

    const-wide v7, 0x3fd6666666666666L    # 0.35

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1192
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0x12c

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    const-string v4, "BRAIN"

    const-string v5, "\u041c\u043e\u0437\u044a\u043a"

    const-string v6, "Brain"

    const-wide v7, 0x3fd6666666666666L    # 0.35

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1194
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x14

    const/16 v5, 0x12c

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    const-string v4, "VESSELS"

    const-string v5, "\u0421\u044a\u0434\u043e\u0432\u0435"

    const-string v6, "Vessels"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1196
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x4

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1220
    :cond_1256
    return-object v3

    .line 755
    nop

    :sswitch_data_1258
    .sparse-switch
        -0x6f0d1d95 -> :sswitch_1a6
        -0x6ef04930 -> :sswitch_122
        -0x699e30ff -> :sswitch_1ee
        -0x699e1714 -> :sswitch_206
        -0x69986f0c -> :sswitch_1ca
        -0x699641ec -> :sswitch_1be
        -0x626b8aa2 -> :sswitch_10b
        -0x558a3613 -> :sswitch_15e
        -0x5183fbca -> :sswitch_100
        -0x4a13fe0e -> :sswitch_c9
        -0x35ffd1d0 -> :sswitch_116
        -0x327a9da3 -> :sswitch_212
        -0x2b99fa26 -> :sswitch_146
        -0x1ac634bb -> :sswitch_21e
        -0x4c6f718 -> :sswitch_be
        0x2eaf9f -> :sswitch_ea
        0x2fd65d -> :sswitch_1b2
        0x3306f4 -> :sswitch_d4
        0x5b679f8 -> :sswitch_182
        0x65e8905 -> :sswitch_f5
        0x6a558a2 -> :sswitch_df
        0x1c4fe11c -> :sswitch_18e
        0x1da0293e -> :sswitch_1fa
        0x2deab687 -> :sswitch_13a
        0x35edb996 -> :sswitch_1d6
        0x36ad422e -> :sswitch_1e2
        0x40211418 -> :sswitch_16a
        0x4875ac8a -> :sswitch_12e
        0x4f930f2e -> :sswitch_19a
        0x625d7281 -> :sswitch_176
        0x6660e8dc -> :sswitch_152
    .end sparse-switch

    :pswitch_data_12d6
    .packed-switch 0x0
        :pswitch_22a
        :pswitch_22a
        :pswitch_22a
        :pswitch_22a
        :pswitch_22a
        :pswitch_3a4
        :pswitch_436
        :pswitch_4ca
        :pswitch_556
        :pswitch_66a
        :pswitch_66a
        :pswitch_66a
        :pswitch_723
        :pswitch_7b2
        :pswitch_83b
        :pswitch_8c7
        :pswitch_9a1
        :pswitch_a37
        :pswitch_b63
        :pswitch_c2a
        :pswitch_cc2
        :pswitch_d64
        :pswitch_d64
        :pswitch_e19
        :pswitch_edc
        :pswitch_fa6
        :pswitch_fc7
        :pswitch_ff7
        :pswitch_1018
        :pswitch_1098
        :pswitch_11a0
    .end packed-switch

    .line 868
    :array_1318
    .array-data 4
        0x4
        0x4
    .end array-data

    .line 985
    :array_1320
    .array-data 4
        0x3
        0x2
        0x9
        0x8
    .end array-data

    .line 1006
    :array_132c
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 1007
    :array_1334
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 1015
    :array_133c
    .array-data 4
        0x0
        0x6
    .end array-data

    .line 1016
    :array_1344
    .array-data 4
        0x0
        0x6
    .end array-data

    .line 1026
    :array_134c
    .array-data 8
        0x3fd3333333333333L    # 0.3
        0x3fbeb851eb851eb8L    # 0.12
        0x3fd3333333333333L    # 0.3
        0x3fbeb851eb851eb8L    # 0.12
    .end array-data

    .line 1113
    :array_1360
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 1114
    :array_1368
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_1370
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 1115
    :array_1378
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1380
    .array-data 4
        0x4
        0x5
    .end array-data

    .line 1116
    :array_1388
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 603
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    .line 604
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p0, v0, :cond_1d

    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1d

    .line 605
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_1a

    const-string v0, "senior"

    :goto_15
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 616
    :goto_19
    return-object v0

    .line 605
    :cond_1a
    const-string v0, "senior_passive"

    goto :goto_15

    .line 607
    :cond_1d
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_3c

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-lez v0, :cond_3c

    const-string v0, "postpartum"

    .line 608
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 609
    const-string v0, "postpartum"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    goto :goto_19

    .line 611
    :cond_3c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 612
    invoke-static {v0, p0, p2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_40

    goto :goto_19

    .line 616
    :cond_53
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    goto :goto_19
.end method

.method public static recoveryS(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)I
    .registers 2

    .prologue
    .line 433
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x78

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x258

    goto :goto_8
.end method

.method private static rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1326
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v1, 0x3

    const/16 v2, 0xfa

    add-int/lit8 v3, p0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 1327
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 1328
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 1329
    return-object v0
.end method

.method private static varargs sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Lcom/isaigu/gymapp/ai/AutoModel$Step;",
            ")V"
        }
    .end annotation

    .prologue
    .line 494
    const-string v4, "WARMUP"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v6, "Wake-up"

    const-wide v7, 0x3fb47ae147ae147bL    # 0.08

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move-object v3, p0

    move v9, p1

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 495
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 496
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 497
    const-string v3, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u043e\u0447\u0438 \u2014 \u0441\u0430\u043c\u043e \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435, \u043d\u0438\u0449\u043e \u043d\u0435 \u043c\u044a\u0440\u0434\u0430"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 498
    const-string v3, "Close the eyes \u2014 only a tingle, nothing moves"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 499
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v3, 0x0

    aget-object v3, p6, v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    const-string v4, "MAIN"

    const-wide v7, 0x3fed70a3d70a3d71L    # 0.92

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v9, p1

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v3

    .line 501
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 502
    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 503
    move-object/from16 v0, p6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_5e
    if-ge v2, v4, :cond_6e

    aget-object v5, p6, v2

    .line 504
    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 506
    :cond_6e
    const-string v4, "COOLDOWN"

    const-string v5, "\u0417\u0430\u0442\u0438\u0445\u0432\u0430\u043d\u0435"

    const-string v6, "Fade out"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    move-object v3, p0

    move v9, p1

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 507
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 508
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 509
    const-string v3, "\u041e\u0441\u0442\u0430\u043d\u0438 \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442 \u043e\u0449\u0435 \u043c\u0430\u043b\u043a\u043e"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 510
    const-string v3, "Stay relaxed a little longer"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 511
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v3, 0x0

    aget-object v3, p6, v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    return-void
.end method

.method static varargs sites([I)[I
    .registers 6

    .prologue
    .line 105
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 106
    array-length v2, p0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_11

    aget v3, p0, v0

    .line 107
    const/16 v4, 0x64

    aput v4, v1, v3

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 109
    :cond_11
    return-object v1
.end method

.method static tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    .line 1283
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 1284
    const/16 v1, 0x190

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 1285
    const/16 v1, 0x12c

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 1286
    return-object v0
.end method

.method public static times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I
    .registers 14

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 412
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phases(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Ljava/util/List;

    move-result-object v7

    .line 417
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v3, v4

    move v5, v4

    move v6, v4

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 418
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 419
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v3, v0

    move v0, v1

    :goto_29
    move v1, v0

    .line 427
    goto :goto_13

    .line 420
    :cond_2b
    if-eqz v1, :cond_37

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_37

    .line 421
    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    move v0, v4

    .line 422
    goto :goto_29

    .line 424
    :cond_37
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v5, v0

    move v0, v4

    .line 425
    goto :goto_29

    .line 428
    :cond_3c
    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v6, v0, v4

    aput v5, v0, v2

    aput v3, v0, v10

    return-object v0
.end method

.method static twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 8

    .prologue
    const/16 v1, 0xc8

    .line 1293
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 1294
    iput-wide p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 1295
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 1296
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 1297
    return-object v0
.end method

.method private static uniform(I)[I
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 1337
    new-array v1, v2, [I

    .line 1338
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_c

    .line 1339
    aput p0, v1, v0

    .line 1338
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1341
    :cond_c
    return-object v1
.end method

.method private static waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 1308
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 1309
    const/16 v1, 0x3e8

    iput v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 1310
    const/16 v1, 0x1f4

    iput v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 1311
    const/16 v1, 0xa

    new-array v3, v1, [I

    .line 1312
    if-eqz p3, :cond_23

    .line 1313
    array-length v4, p3

    move v1, v0

    :goto_18
    if-ge v1, v4, :cond_23

    aget v5, p3, v1

    .line 1314
    const/16 v6, 0x32

    aput v6, v3, v5

    .line 1313
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1317
    :cond_23
    array-length v1, p2

    :goto_24
    if-ge v0, v1, :cond_2f

    aget v4, p2, v0

    .line 1318
    const/16 v5, 0x64

    aput v5, v3, v4

    .line 1317
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1320
    :cond_2f
    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 1321
    return-object v2
.end method
