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

.field static final CHEEKS:[I

.field public static final CORE:Ljava/lang/String; = "core"

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

.field public static final GLUTES_LEGS:Ljava/lang/String; = "glutes"

.field public static final MASS:Ljava/lang/String; = "mass"

.field public static final PASSIVE_METABOLIC:Ljava/lang/String; = "passive_metabolic"

.field public static final POSTPARTUM:Ljava/lang/String; = "postpartum"

.field public static final POWER:Ljava/lang/String; = "power"

.field public static final RECOVERY:Ljava/lang/String; = "recovery"

.field public static final SENIOR:Ljava/lang/String; = "senior"

.field public static final UPPER:Ljava/lang/String; = "upper"

.field static final WARMUP_HZ:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .prologue
    .line 88
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

    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_624

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    .line 170
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

    .line 172
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

    .line 170
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 173
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

    .line 175
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

    .line 177
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

    .line 175
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 178
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

    .line 180
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

    .line 182
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

    .line 180
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 183
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

    .line 185
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

    .line 187
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

    .line 185
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 188
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

    .line 190
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

    .line 192
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

    .line 190
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 193
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

    .line 195
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

    .line 197
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

    .line 195
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 198
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

    .line 200
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

    .line 202
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

    .line 200
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 203
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

    .line 205
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

    .line 207
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

    .line 205
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 208
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

    .line 210
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

    .line 212
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

    .line 210
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 213
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

    .line 215
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

    .line 217
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

    .line 215
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 218
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

    .line 220
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

    .line 222
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

    .line 220
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 223
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

    .line 225
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

    .line 227
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

    .line 225
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 228
    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 229
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u0435\u043d (35 Hz)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d (8 Hz)"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    .line 230
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Standard (35 Hz)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Sensitive (8 Hz)"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsEn:[Ljava/lang/String;

    .line 232
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
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe3333333333333L    # 0.6

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 237
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
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    .line 242
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
    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 247
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u041b\u0438\u0444\u0442\u0438\u043d\u0433 3D"

    const-string v3, "Face \u00b7 Lift 3D"

    const-string v4, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433 3D \u00b7 \u041e\u0432\u0430\u043b \u00b7 \u0414\u0435\u0442\u043e\u043a\u0441 \u00b7 \u0411\u043e\u0442\u043e\u043a\u0441 \u0435\u0444\u0435\u043a\u0442 \u00b7 \u0421\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u043b\u0438\u0446\u0435 \u2014 \u0438\u0437\u0431\u043e\u0440 \u0432 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0437\u0430 \u043b\u0438\u0446\u0435"

    const-string v5, "Lift 3D \u00b7 Oval \u00b7 Depuff \u00b7 Botox effect \u00b7 Calm face \u2014 chosen in the face studio"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 250
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 247
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 251
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 252
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_tone"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043e\u0432\u0430\u043b"

    const-string v3, "Face \u00b7 Firm contour"

    const-string v4, "\u0415\u043b\u0430\u0441\u0442\u0438\u0447\u043d\u043e\u0441\u0442, \u043a\u043e\u044f\u0442\u043e \u043f\u0430\u0437\u0438 \u043b\u0438\u0444\u0442\u0438\u043d\u0433\u0430"

    const-string v5, "Elasticity that keeps the lift"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 253
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 252
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 254
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 255
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_oval"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u041b\u0438\u0444\u0442\u0438\u043d\u0433 \u043d\u0430 \u043e\u0432\u0430\u043b\u0430"

    const-string v3, "Face \u00b7 Oval lift"

    const-string v4, "\u0421\u043a\u0443\u043b\u0438 \u0438 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430 \u0432 \u0435\u0434\u043d\u0430 \u0441\u0435\u0441\u0438\u044f"

    const-string v5, "Cheekbones and chin in one session"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x7

    new-array v7, v7, [I

    fill-array-data v7, :array_634

    .line 257
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 255
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 258
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 259
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_drain"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u041b\u0438\u043c\u0444\u043e\u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v3, "Face \u00b7 Lymph wave"

    const-string v4, "\u041f\u043e-\u043c\u0430\u043b\u043a\u043e \u043f\u043e\u0434\u043f\u0443\u0445\u0432\u0430\u043d\u0435, \u043f\u043e-\u044f\u0441\u043d\u0438 \u0447\u0435\u0440\u0442\u0438"

    const-string v5, "Less puffiness, clearer features"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x7

    new-array v7, v7, [I

    fill-array-data v7, :array_646

    .line 261
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 259
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 262
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 263
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

    .line 265
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 263
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 266
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 267
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_calm"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0421\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u043b\u0438\u0446\u0435"

    const-string v3, "Face \u00b7 Calm face"

    const-string v4, "\u0411\u0435\u0437 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u0432 \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430"

    const-string v5, "No tension in the forehead and jaw"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_658

    .line 269
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 267
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 270
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 271
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_jaw"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u041e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u0447\u0435\u043b\u044e\u0441\u0442"

    const-string v3, "Face \u00b7 Relaxed jaw"

    const-string v4, "\u041f\u043e-\u043c\u0435\u043a \u0434\u043e\u043b\u0435\u043d \u043e\u0432\u0430\u043b, \u0431\u0435\u0437 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435"

    const-string v5, "A softer jawline, no tension"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_662

    .line 272
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 271
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 273
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 274
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_chin"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0421\u0442\u0435\u0433\u043d\u0430\u0442\u0430 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430"

    const-string v3, "Face \u00b7 Firm chin"

    const-string v4, "\u041f\u043e-\u0441\u0442\u0435\u0433\u043d\u0430\u0442 \u043f\u0440\u043e\u0444\u0438\u043b \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    const-string v5, "A firmer profile under the chin"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0x9

    aput v9, v7, v8

    .line 275
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 274
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 276
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 280
    const/4 v0, 0x6

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

    array-length v2, v1

    const/4 v0, 0x0

    :goto_5f2
    if-ge v0, v2, :cond_600

    aget-object v3, v1, v0

    .line 281
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f2

    .line 283
    :cond_600
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

    :goto_614
    if-ge v0, v2, :cond_622

    aget-object v3, v1, v0

    .line 284
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    const/4 v4, 0x3

    iput v4, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_614

    .line 286
    :cond_622
    return-void

    .line 104
    nop

    :array_624
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 255
    :array_634
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x9
    .end array-data

    .line 259
    :array_646
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x0
        0x1
        0x9
    .end array-data

    .line 267
    :array_658
    .array-data 4
        0x8
        0x6
        0x7
    .end array-data

    .line 271
    :array_662
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
    .registers 2

    .prologue
    .line 407
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
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
    .line 412
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    return-object v0
.end method

.method public static baseSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I
    .registers 12

    .prologue
    const/16 v5, 0x438

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x5dc

    const/16 v4, 0x4b0

    .line 552
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p1, v0, :cond_1d

    move v0, v1

    .line 553
    :goto_d
    iget-object v7, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_f4

    :cond_17
    move v2, v6

    :goto_18
    packed-switch v2, :pswitch_data_13a

    move v3, v4

    .line 581
    :goto_1c
    :pswitch_1c
    return v3

    :cond_1d
    move v0, v2

    .line 552
    goto :goto_d

    .line 553
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
    const-string v1, "face"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0x9

    goto :goto_18

    :sswitch_84
    const-string v1, "face_oval"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xa

    goto :goto_18

    :sswitch_8f
    const-string v1, "face_tone"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xb

    goto/16 :goto_18

    :sswitch_9b
    const-string v1, "face_drain"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xc

    goto/16 :goto_18

    :sswitch_a7
    const-string v1, "face_chin"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xd

    goto/16 :goto_18

    :sswitch_b3
    const-string v1, "face_jaw"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xe

    goto/16 :goto_18

    :sswitch_bf
    const-string v1, "face_relax"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0xf

    goto/16 :goto_18

    :sswitch_cb
    const-string v1, "face_calm"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v2, 0x10

    goto/16 :goto_18

    .line 559
    :pswitch_d7
    if-eqz v0, :cond_dd

    move v0, v3

    :goto_da
    move v3, v0

    goto/16 :goto_1c

    :cond_dd
    move v0, v4

    goto :goto_da

    :pswitch_df
    move v3, v5

    .line 561
    goto/16 :goto_1c

    :pswitch_e2
    move v3, v5

    .line 569
    goto/16 :goto_1c

    .line 571
    :pswitch_e5
    const/16 v3, 0x30c

    goto/16 :goto_1c

    .line 574
    :pswitch_e9
    const/16 v3, 0x2d0

    goto/16 :goto_1c

    .line 576
    :pswitch_ed
    const/16 v3, 0x384

    goto/16 :goto_1c

    :pswitch_f1
    move v3, v4

    .line 579
    goto/16 :goto_1c

    .line 553
    :sswitch_data_f4
    .sparse-switch
        -0x699e30ff -> :sswitch_cb
        -0x699e1714 -> :sswitch_a7
        -0x69986f0c -> :sswitch_84
        -0x699641ec -> :sswitch_8f
        -0x5183fbca -> :sswitch_5a
        -0x4a13fe0e -> :sswitch_28
        -0x4c6f718 -> :sswitch_1f
        0x2eaf9f -> :sswitch_32
        0x2fd65d -> :sswitch_79
        0x3306f4 -> :sswitch_3c
        0x65e8905 -> :sswitch_50
        0x6a558a2 -> :sswitch_46
        0x1c4fe11c -> :sswitch_6e
        0x1da0293e -> :sswitch_b3
        0x35edb996 -> :sswitch_9b
        0x36ad422e -> :sswitch_bf
        0x625d7281 -> :sswitch_64
    .end sparse-switch

    :pswitch_data_13a
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_d7
        :pswitch_d7
        :pswitch_d7
        :pswitch_d7
        :pswitch_df
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_e2
        :pswitch_e2
        :pswitch_e5
        :pswitch_e9
        :pswitch_e9
        :pswitch_ed
        :pswitch_f1
        :pswitch_f1
    .end packed-switch
.end method

.method public static blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 491
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

    .line 499
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v2, :cond_16

    .line 500
    const-string v0, "\u0421\u0430\u043c\u043e \u0437\u0430 \u0436\u0435\u043d\u0438"

    const-string v1, "Women only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_15
    return-object v0

    .line 502
    :cond_16
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->maleOnly:Z

    if-eqz v0, :cond_29

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_29

    .line 503
    const-string v0, "\u041c\u044a\u0436\u043a\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v1, "Men\'s program"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 505
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

    .line 506
    const-string v0, "\u041f\u043e\u0434 24 \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u2014 \u0441\u0430\u043c\u043e \u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v1, "Under 24 h since the last active one \u2014 passive only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 509
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

    .line 510
    const-string v0, "\u0418\u0422\u041c \u043f\u043e\u0434 18.5 \u2014 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435\u0442\u043e \u043d\u0435 \u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u043e"

    const-string v1, "BMI under 18.5 \u2014 weight loss is not suitable"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 513
    :cond_68
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x46

    if-lt v0, v2, :cond_81

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-eq p1, v0, :cond_81

    .line 514
    const-string v0, "\u0421\u043b\u0435\u0434 70 \u0433. \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u0437\u0430 \u0437\u0434\u0440\u0430\u0432\u0435"

    const-string v1, "After 70 \u2014 the health programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 516
    :cond_81
    const-string v0, "power"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 517
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_9a

    .line 518
    const-string v0, "\u0421\u043b\u0435\u0434 4 \u0441\u0435\u0441\u0438\u0438 (\u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f)"

    const-string v1, "After 4 sessions (adaptation)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 520
    :cond_9a
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_aa

    .line 521
    const-string v0, "\u0414\u043e 60 \u0433."

    const-string v1, "Under 60"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 523
    :cond_aa
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v2, :cond_ba

    .line 524
    const-string v0, "\u041d\u0443\u0436\u043d\u0430 \u0435 \u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "Needs medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 527
    :cond_ba
    if-nez p3, :cond_bf

    move-object v0, v1

    .line 528
    goto/16 :goto_15

    .line 530
    :cond_bf
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksFace:Z

    if-eqz v0, :cond_d3

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->injectable:Z

    if-eqz v0, :cond_d3

    .line 531
    const-string v0, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u0434\u043e 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u2014 \u0434\u043d\u0435\u0441 \u0431\u0435\u0437 \u043b\u0438\u0446\u0435"

    const-string v1, "Botox or filler within 2 weeks \u2014 no face today"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 534
    :cond_d3
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    if-eqz v0, :cond_e9

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->anyBackRedFlag()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 535
    const-string v0, "\u0421\u0438\u0433\u043d\u0430\u043b \u0437\u0430 \u0442\u0440\u0435\u0432\u043e\u0433\u0430 \u0437\u0430 \u0433\u044a\u0440\u0431\u0430 \u2014 \u043f\u044a\u0440\u0432\u043e \u043b\u0435\u043a\u0430\u0440"

    const-string v1, "Back red flag \u2014 see a doctor first"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 538
    :cond_e9
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksPostpartum:Z

    if-eqz v0, :cond_135

    .line 539
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    if-eqz v0, :cond_133

    const/16 v0, 0xc

    .line 540
    :goto_f5
    iget-object v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-ge v2, v0, :cond_135

    .line 541
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

    .line 539
    :cond_133
    const/4 v0, 0x6

    goto :goto_f5

    :cond_135
    move-object v0, v1

    .line 545
    goto/16 :goto_15
.end method

.method private static varargs ch([I)[I
    .registers 1

    .prologue
    .line 1011
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
    .line 926
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

    .line 927
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 928
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 929
    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v1, 0xfa

    const/16 v2, 0xa

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    return-object v6
.end method

.method static corridor(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)[D
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 1035
    const-string v0, "passive_metabolic"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1036
    new-array v0, v2, [D

    fill-array-data v0, :array_18

    .line 1038
    :goto_10
    return-object v0

    :cond_11
    new-array v0, v2, [D

    fill-array-data v0, :array_24

    goto :goto_10

    .line 1036
    nop

    :array_18
    .array-data 8
        0x3fd0000000000000L    # 0.25
        0x3fdccccccccccccdL    # 0.45
    .end array-data

    .line 1038
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

    .line 398
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    .line 399
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    .line 400
    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 401
    const-string v0, "gentle"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 402
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksFace:Z

    .line 403
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 404
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
    .line 361
    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;II)V

    .line 362
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

    .line 365
    const-string v2, "COOLDOWN"

    const-string v3, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v4, "Let go"

    const-wide v5, 0x3fb999999999999aL    # 0.1

    move-object v1, p0

    move v7, p1

    move-wide v10, v8

    invoke-static/range {v1 .. v11}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 366
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 367
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 368
    const-string v1, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u043b\u0438\u0446\u0435\u0442\u043e \u2014 \u0441\u0430\u043c\u043e \u043c\u0435\u043a\u0438 \u043a\u0440\u0430\u0442\u043a\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 369
    const-string v1, "Let the face go \u2014 only soft short holds"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 370
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v1, 0x1e

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/16 v4, 0x1f4

    invoke-static {v1, p2, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method private static faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 353
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/16 v1, 0x1e

    const/16 v2, 0x64

    add-int/lit8 v3, p0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 354
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 355
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 356
    return-object v0
.end method

.method private static faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 5

    .prologue
    .line 320
    const/16 v0, 0x64

    const/16 v1, 0x1f4

    invoke-static {p0, v0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    return-object v0
.end method

.method private static faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    .line 324
    const/16 v0, 0x14

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 325
    iput p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 326
    iput p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 327
    return-object v0
.end method

.method private static faceStep(IIIII[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 7

    .prologue
    .line 332
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 333
    iput-object p5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 334
    return-object v0
.end method

.method private static faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 10

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 339
    const/16 v3, 0xa

    new-array v5, v3, [I

    .line 340
    if-eqz p1, :cond_17

    .line 341
    array-length v4, p1

    move v3, v0

    :goto_c
    if-ge v3, v4, :cond_17

    aget v6, p1, v3

    .line 342
    const/16 v7, 0x32

    aput v7, v5, v6

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 345
    :cond_17
    array-length v3, p0

    :goto_18
    if-ge v0, v3, :cond_21

    aget v4, p0, v0

    .line 346
    aput v1, v5, v4

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 348
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

    .line 938
    .line 939
    const/4 v1, 0x0

    .line 940
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

    .line 941
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-nez v5, :cond_62

    .line 942
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v1, v2

    move v2, v1

    :goto_1d
    move-object v1, v0

    .line 945
    goto :goto_7

    .line 947
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

    .line 948
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 949
    const/16 v5, 0x258

    iput v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    move v0, v4

    :goto_3b
    move v4, v0

    .line 954
    goto :goto_24

    .line 951
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

    .line 952
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v0, v4

    goto :goto_3b

    :cond_51
    move v5, v3

    .line 951
    goto :goto_4b

    .line 955
    :cond_53
    if-eqz v1, :cond_61

    .line 956
    const/16 v0, 0x1e

    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 958
    :cond_61
    return-void

    :cond_62
    move-object v0, v1

    goto :goto_1d
.end method

.method public static get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 4

    .prologue
    .line 416
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

    .line 417
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 421
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static goalOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;
    .registers 3

    .prologue
    .line 471
    if-nez p0, :cond_5

    .line 472
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 478
    :goto_4
    return-object v0

    .line 474
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 478
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 475
    :pswitch_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 477
    :pswitch_16
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 474
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
    .line 1024
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

    .line 1025
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    .line 1030
    :goto_16
    return-object v0

    .line 1027
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

    .line 1028
    :cond_39
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    goto :goto_16

    .line 1030
    :cond_3c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CAP:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    goto :goto_16
.end method

.method public static isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z
    .registers 3

    .prologue
    .line 92
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
    .line 483
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

    .line 903
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v4, [I

    aput v6, v1, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 904
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

    .line 905
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

    .line 906
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

    .line 907
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    return-void

    .line 904
    nop

    :array_72
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 905
    :array_7a
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 906
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

    .line 427
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_a6

    .line 439
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_91

    .line 440
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "back_active"

    aput-object v2, v0, v1

    const-string v2, "senior"

    aput-object v2, v0, v3

    .line 444
    :goto_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 445
    array-length v3, v0

    :goto_24
    if-ge v1, v3, :cond_a5

    aget-object v4, v0, v1

    .line 446
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 429
    :pswitch_32
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_53

    .line 430
    const/4 v0, 0x6

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

    goto :goto_1e

    .line 431
    :cond_53
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "cellulite"

    aput-object v2, v0, v1

    const-string v2, "postpartum"

    aput-object v2, v0, v3

    const-string v2, "passive_metabolic"

    aput-object v2, v0, v4

    const-string v2, "face"

    aput-object v2, v0, v5

    goto :goto_1e

    .line 434
    :pswitch_66
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_82

    .line 435
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

    .line 436
    :cond_82
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "cellulite"

    aput-object v2, v0, v1

    const-string v2, "drain"

    aput-object v2, v0, v3

    const-string v2, "passive_metabolic"

    aput-object v2, v0, v4

    goto :goto_1e

    .line 441
    :cond_91
    new-array v0, v6, [Ljava/lang/String;

    const-string v2, "back_pain"

    aput-object v2, v0, v1

    const-string v2, "drain"

    aput-object v2, v0, v3

    const-string v2, "postpartum"

    aput-object v2, v0, v4

    const-string v2, "recovery"

    aput-object v2, v0, v5

    goto/16 :goto_1e

    .line 448
    :cond_a5
    return-object v2

    .line 427
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_32
        :pswitch_66
    .end packed-switch
.end method

.method static onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I
    .registers 6

    .prologue
    const/4 v2, 0x2

    .line 587
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_d

    .line 588
    new-array v0, v2, [I

    fill-array-data v0, :array_22

    .line 593
    :goto_c
    return-object v0

    .line 590
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_19

    .line 591
    new-array v0, v2, [I

    fill-array-data v0, :array_2a

    goto :goto_c

    .line 593
    :cond_19
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    goto :goto_c

    .line 588
    :array_22
    .array-data 4
        0x4
        0x6
    .end array-data

    .line 591
    :array_2a
    .array-data 4
        0x6
        0x4
    .end array-data
.end method

.method static pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 4

    .prologue
    .line 979
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 980
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 981
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
    .line 912
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;-><init>()V

    .line 913
    iput-object p1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    .line 914
    iput-object p2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    .line 915
    iput-object p3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    .line 916
    int-to-double v2, p6

    mul-double/2addr v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 917
    iput-wide p7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 918
    iput-wide p9, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 919
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 920
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 921
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
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
    .line 597
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 598
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_bb

    const/4 v2, 0x1

    .line 599
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_c70

    :cond_18
    :goto_18
    packed-switch v4, :pswitch_data_cca

    .line 879
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 880
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 881
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 882
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    const-string v4, "MAIN"

    const-string v5, "\u041c\u0430\u0441\u0430\u0436"

    const-string v6, "Massage"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 884
    iget-object v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x8

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x2

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 890
    :goto_95
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->fixDurations(Ljava/util/List;I)V

    .line 891
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v2

    if-eqz v2, :cond_c6e

    .line 892
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a4
    :goto_a4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 893
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 894
    const/16 v5, 0x78

    iput v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    goto :goto_a4

    .line 598
    :cond_bb
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 599
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
    const-string v6, "cellulite"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x9

    goto/16 :goto_18

    :sswitch_12e
    const-string v6, "drain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xa

    goto/16 :goto_18

    :sswitch_13a
    const-string v6, "passive_metabolic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xb

    goto/16 :goto_18

    :sswitch_146
    const-string v6, "back_pain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xc

    goto/16 :goto_18

    :sswitch_152
    const-string v6, "postpartum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xd

    goto/16 :goto_18

    :sswitch_15e
    const-string v6, "face"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xe

    goto/16 :goto_18

    :sswitch_16a
    const-string v6, "face_tone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xf

    goto/16 :goto_18

    :sswitch_176
    const-string v6, "face_oval"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x10

    goto/16 :goto_18

    :sswitch_182
    const-string v6, "face_drain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x11

    goto/16 :goto_18

    :sswitch_18e
    const-string v6, "face_relax"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x12

    goto/16 :goto_18

    :sswitch_19a
    const-string v6, "face_calm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x13

    goto/16 :goto_18

    :sswitch_1a6
    const-string v6, "face_jaw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x14

    goto/16 :goto_18

    :sswitch_1b2
    const-string v6, "face_chin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x15

    goto/16 :goto_18

    .line 605
    :pswitch_1be
    const-string v4, "glutes"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e2

    const-string v4, "mass"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e2

    const-string v4, "upper"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2da

    .line 606
    :cond_1e2
    const/4 v4, 0x5

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v4

    move-object v14, v4

    .line 609
    :goto_1eb
    const-string v4, "mass"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e5

    .line 610
    const-string v5, "\u041a\u043b\u0435\u043a, \u043b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435, \u043f\u0440\u0435\u0441\u0430 \u2014 \u0431\u0430\u0432\u043d\u043e \u0438 \u0442\u0435\u0436\u043a\u043e"

    .line 611
    const-string v4, "Squat, push-ups, rows, press \u2014 slow and heavy"

    move-object v15, v4

    move-object/from16 v16, v5

    .line 625
    :goto_1fe
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    if-eqz v2, :cond_32d

    const-wide v7, 0x3fb999999999999aL    # 0.1

    :goto_20b
    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 626
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 627
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 628
    const-string v5, "\u041a\u043b\u0435\u043a, \u0445\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 629
    const-string v5, "Squat, marching"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 630
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    if-eqz v2, :cond_334

    const-wide v7, 0x3fdccccccccccccdL    # 0.45

    :goto_249
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v5

    .line 632
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 633
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 634
    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 635
    iput-object v15, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 636
    const/16 v4, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 637
    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v2, :cond_27f

    const/4 v6, 0x6

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v4, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    :cond_27f
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    if-eqz v2, :cond_2cd

    .line 639
    const-string v4, "METABOLIC"

    const-string v5, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Burn"

    const-wide v7, 0x3fd6666666666666L    # 0.35

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 640
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 641
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435, \u0441\u0442\u0435\u043f, \u043b\u0435\u043a\u0438 \u043a\u043b\u0435\u043a\u043e\u0432\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 642
    const-string v4, "Walking, step, light squats"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 643
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_2cd
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 606
    :cond_2da
    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v4

    move-object v14, v4

    goto/16 :goto_1eb

    .line 612
    :cond_2e5
    const-string v4, "upper"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2fa

    .line 613
    const-string v5, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435, \u043f\u0440\u0435\u0441\u0430, \u0431\u0438\u0446\u0435\u043f\u0441, \u0442\u0440\u0438\u0446\u0435\u043f\u0441"

    .line 614
    const-string v4, "Push-ups, rows, press, biceps, triceps"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_1fe

    .line 615
    :cond_2fa
    const-string v4, "glutes"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30f

    .line 616
    const-string v5, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0433\u043b\u0443\u0442\u0435\u0443\u0441 \u043c\u043e\u0441\u0442, \u0430\u0431\u0434\u0443\u043a\u0446\u0438\u044f"

    .line 617
    const-string v4, "Squat, lunge, glute bridge, abduction"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_1fe

    .line 618
    :cond_30f
    const-string v4, "core"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_324

    .line 619
    const-string v5, "\u041f\u043b\u0430\u043d\u043a, \u043a\u0440\u044a\u043d\u0447, \u0440\u043e\u0442\u0430\u0446\u0438\u0438, \u201e\u043c\u044a\u0440\u0442\u0432\u0430 \u0431\u0443\u0431\u043e\u043b\u0435\u0447\u043a\u0430\u201c"

    .line 620
    const-string v4, "Plank, crunch, rotations, dead bug"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_1fe

    .line 622
    :cond_324
    const-string v5, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u043b\u0438\u0446\u0435\u0432\u0438 \u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435, \u0433\u0440\u0435\u0431\u0430\u043d\u0435"

    .line 623
    const-string v4, "Squat, lunge, knee push-ups, rows"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_1fe

    .line 625
    :cond_32d
    const-wide v7, 0x3fc3333333333333L    # 0.15

    goto/16 :goto_20b

    .line 631
    :cond_334
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    goto/16 :goto_249

    .line 650
    :pswitch_338
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 651
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 652
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 653
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    const-string v4, "MAIN"

    const-string v5, "\u0412\u0437\u0440\u0438\u0432\u043d\u0430 \u0441\u0438\u043b\u0430"

    const-string v6, "Explosive power"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 655
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 656
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 657
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onMinus:I

    .line 658
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onPlus:I

    .line 659
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 660
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x3

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offPlus:I

    .line 661
    const-string v4, "\u0412\u0437\u0440\u0438\u0432\u0435\u043d \u043a\u043b\u0435\u043a / \u0441\u043a\u043e\u043a / \u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435 \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 662
    const-string v4, "Explosive squat / jump / throw at your own pace"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 663
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x64

    const/16 v5, 0x12c

    const/4 v6, 0x3

    const/16 v7, 0x9

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 668
    :pswitch_3ca
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 669
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 670
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 671
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const-string v4, "METABOLIC"

    const-string v5, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Burn"

    const-wide v7, 0x3fe999999999999aL    # 0.8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 673
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 674
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 675
    const-string v4, "\u0421\u0442\u0435\u043f, \u0445\u043e\u0434\u0435\u043d\u0435, \u043a\u043b\u0435\u043a \u2014 \u0431\u0435\u0437 \u0441\u043f\u0438\u0440\u0430\u043d\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 676
    const-string v4, "Step, walking, squats \u2014 keep moving"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 677
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 683
    :pswitch_45e
    const/4 v2, 0x6

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v2

    .line 684
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 685
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 686
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 687
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e\u0441\u0442"

    const-string v6, "Stability"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 689
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 690
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 691
    const-string v5, "\u041f\u0442\u0438\u0446\u0430-\u043a\u0443\u0447\u0435, \u043c\u043e\u0441\u0442, \u043f\u043b\u0430\u043d\u043a, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0443\u0441\u0443\u043a\u0432\u0430\u043d\u0435 \u043f\u043e\u0434 \u0442\u043e\u0432\u0430\u0440"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 692
    const-string v5, "Bird-dog, bridge, plank, rows \u2014 no loaded twisting"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 693
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

    .line 694
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x4

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 698
    :pswitch_4ea
    const/4 v2, 0x4

    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v2

    .line 699
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v4, v5, :cond_500

    .line 700
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_cfa

    .line 702
    :cond_500
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 703
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 704
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 705
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 707
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 708
    const-string v5, "\u0421\u0442\u0430\u0432\u0430\u043d\u0435 \u043e\u0442 \u0441\u0442\u043e\u043b, \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u043d\u0435 \u043d\u0430 \u043f\u0440\u044a\u0441\u0442\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u0441 \u043b\u0430\u0441\u0442\u0438\u043a"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 709
    const-string v5, "Sit-to-stand, calf raises, band rows"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 710
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

    .line 711
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 715
    :pswitch_577
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 716
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    const-string v4, "MAIN"

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    const-string v6, "Tone"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 718
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 719
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

    .line 720
    const-string v4, "WAVE"

    const-string v5, "\u0414\u0440\u0435\u043d\u0430\u0436\u043d\u0430 \u0432\u044a\u043b\u043d\u0430"

    const-string v6, "Drainage wave"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 721
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 722
    const/16 v4, 0x23

    const/16 v5, 0x12c

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 723
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 727
    :pswitch_60d
    move-object/from16 v0, p2

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_735

    const/16 v2, 0x8

    .line 728
    :goto_616
    const-string v4, "OPEN"

    const-string v5, "\u041e\u0442\u0432\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Opening"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 729
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 730
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_d02

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
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

    fill-array-data v8, :array_d0a

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    const-string v4, "LEGS"

    const-string v5, "\u041a\u0440\u0430\u043a\u0430"

    const-string v6, "Legs"

    const-wide v7, 0x3fe199999999999aL    # 0.55

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 734
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 735
    const/16 v5, 0x12c

    invoke-static {v4, v2, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 736
    const-string v4, "ARMS"

    const-string v5, "\u0420\u044a\u0446\u0435 \u0438 \u0433\u0440\u044a\u0431"

    const-string v6, "Arms and back"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 737
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 738
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

    .line 739
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_d12

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

    .line 740
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

    fill-array-data v8, :array_d1a

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 743
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

    .line 727
    :cond_735
    const/16 v2, 0x23

    goto/16 :goto_616

    .line 747
    :pswitch_739
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb47ae147ae147bL    # 0.08

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 748
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
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

    .line 750
    const/4 v2, 0x4

    new-array v15, v2, [D

    fill-array-data v15, :array_d22

    .line 751
    const/4 v2, 0x0

    :goto_783
    array-length v4, v14

    if-ge v2, v4, :cond_7f3

    .line 752
    const-string v4, "TONE"

    aget-object v5, v14, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 753
    if-nez v2, :cond_7be

    const-string v4, "MAIN"

    .line 754
    :goto_792
    if-eqz v16, :cond_7d4

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    :goto_796
    if-eqz v16, :cond_7d7

    const-string v6, "Tone"

    :goto_79a
    aget-wide v7, v15, v2

    .line 755
    if-eqz v16, :cond_7da

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    :goto_7a0
    if-eqz v16, :cond_7e0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    :goto_7a4
    move/from16 v9, p3

    .line 753
    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 756
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v16, :cond_7e6

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    :goto_7b8
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    add-int/lit8 v2, v2, 0x1

    goto :goto_783

    .line 753
    :cond_7be
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

    goto :goto_792

    .line 754
    :cond_7d4
    const-string v5, "6 Hz"

    goto :goto_796

    :cond_7d7
    const-string v6, "6 Hz"

    goto :goto_79a

    .line 755
    :cond_7da
    const-wide v10, 0x3fe6666666666666L    # 0.7

    goto :goto_7a0

    :cond_7e0
    const-wide v12, 0x3fe6666666666666L    # 0.7

    goto :goto_7a4

    .line 756
    :cond_7e6
    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    goto :goto_7b8

    .line 758
    :cond_7f3
    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 762
    :pswitch_800
    const-string v4, "RELAX"

    const-string v5, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v6, "Relax"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 763
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x4

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v6, "Stabilise"

    const-wide v7, 0x3fe199999999999aL    # 0.55

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 765
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 766
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x0

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 767
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x50

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    const-string v4, "RELIEF"

    const-string v5, "\u041e\u0431\u0435\u0437\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Relief"

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 769
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x2

    const/16 v5, 0xc8

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x2

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 774
    :pswitch_898
    move-object/from16 v0, p2

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_936

    const/16 v2, 0x32

    .line 775
    :goto_8a1
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

    .line 776
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 777
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    const-string v4, "MAIN"

    const-string v5, "\u0422\u0430\u0437\u043e\u0432\u043e \u0434\u044a\u043d\u043e"

    const-string v6, "Pelvic floor"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide v10, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    move-wide v12, v14

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 779
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 780
    iput-wide v14, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 781
    const-string v5, "\u0421\u0442\u044f\u0433\u0430\u0439 \u0442\u0430\u0437\u043e\u0432\u043e\u0442\u043e \u0434\u044a\u043d\u043e \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 782
    const-string v5, "Lift the pelvic floor at your own pace"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 783
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

    .line 784
    const-wide v4, 0x3fc3333333333333L    # 0.15

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 774
    :cond_936
    const/16 v2, 0x28

    goto/16 :goto_8a1

    .line 790
    :pswitch_93a
    const-string v2, "face"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 791
    if-eqz v14, :cond_9ca

    const/16 v2, 0x46

    .line 792
    :goto_948
    const-string v4, "WARMUP"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v6, "Wake-up"

    const-wide v7, 0x3fbc28f5c28f5c29L    # 0.11

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 793
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 794
    const-wide v6, 0x3fe999999999999aL    # 0.8

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 795
    const-string v5, "\u0421\u0435\u0434\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e, \u043b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u044a\u0433\u043b\u0438\u0442\u0435 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430\u0442 \u043b\u0435\u043a\u043e \u043d\u0430\u0433\u043e\u0440\u0435"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 796
    const-string v5, "Sit comfortably, face relaxed \u2014 the mouth corners start to lift"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 797
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    const/16 v6, 0x8

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 798
    const-string v4, "MAIN"

    if-eqz v14, :cond_9ce

    const-string v5, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433"

    :goto_98b
    if-eqz v14, :cond_9d1

    const-string v6, "Lift"

    :goto_98f
    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    .line 799
    if-eqz v14, :cond_9d4

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    :goto_99b
    if-eqz v14, :cond_9da

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    :goto_9a2
    move/from16 v9, p3

    .line 798
    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 800
    if-eqz v14, :cond_9e0

    const-string v2, "\u041b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u0431\u0443\u0437\u0438\u0442\u0435 \u0441\u0435 \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u0442 \u0441\u0430\u043c\u0438; \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430, \u0431\u0435\u0437 \u043c\u0438\u0433\u0430\u043d\u0435"

    .line 801
    :goto_9ac
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 802
    if-eqz v14, :cond_9e3

    const-string v2, "Face relaxed \u2014 the cheeks lift by themselves; no pain, no blinking"

    .line 803
    :goto_9b2
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 804
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v14, :cond_9e6

    const/16 v2, 0x46

    const/4 v5, 0x3

    const/4 v6, 0x6

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    :goto_9c0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 791
    :cond_9ca
    const/16 v2, 0x23

    goto/16 :goto_948

    .line 798
    :cond_9ce
    const-string v5, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043e\u0432\u0430\u043b"

    goto :goto_98b

    :cond_9d1
    const-string v6, "Firm contour"

    goto :goto_98f

    .line 799
    :cond_9d4
    const-wide v10, 0x3fe999999999999aL    # 0.8

    goto :goto_99b

    :cond_9da
    const-wide v12, 0x3fe999999999999aL    # 0.8

    goto :goto_9a2

    .line 801
    :cond_9e0
    const-string v2, "\u041c\u0435\u043a\u043e, \u0440\u0430\u0432\u043d\u043e\u043c\u0435\u0440\u043d\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u2014 \u0443\u0441\u0435\u0449\u0430 \u0441\u0435, \u043d\u0435 \u0431\u043e\u043b\u0438"

    goto :goto_9ac

    .line 803
    :cond_9e3
    const-string v2, "A soft, even hold \u2014 felt, never painful"

    goto :goto_9b2

    .line 804
    :cond_9e6
    const/16 v2, 0x23

    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    goto :goto_9c0

    .line 810
    :pswitch_9ef
    const-string v4, "WARMUP"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v6, "Wake-up"

    const-wide v7, 0x3fbc28f5c28f5c29L    # 0.11

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 811
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 812
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 813
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d, \u043b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 814
    const-string v4, "Sit up, face relaxed"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 815
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

    .line 816
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

    .line 817
    const-string v4, "MAIN"

    const-string v5, "\u0421\u043a\u0443\u043b\u0438 \u0438 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430"

    const-string v6, "Cheekbones and chin"

    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 818
    const-string v4, "\u0411\u0443\u0437\u0438\u0442\u0435, \u043f\u043e\u0441\u043b\u0435 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u2014 \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430, \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 819
    const-string v4, "The cheeks, then the chin \u2014 no food or drink, no pain"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 820
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

    .line 821
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

    .line 822
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 827
    :pswitch_ab2
    const-string v4, "OPEN"

    const-string v5, "\u041e\u0442\u0432\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Opening"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 828
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 829
    const-string v4, "\u0413\u043b\u0430\u0432\u0430\u0442\u0430 \u043b\u0435\u043a\u043e \u043d\u0430\u0437\u0430\u0434 \u2014 \u043f\u044a\u0440\u0432\u043e \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u043f\u044a\u0442\u044f\u0442 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 830
    const-string v4, "Head slightly back \u2014 first the way under the chin opens"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 831
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

    .line 832
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    const-string v4, "WAVE"

    const-string v5, "\u041b\u0438\u043c\u0444\u043d\u0430 \u0432\u044a\u043b\u043d\u0430"

    const-string v6, "Lymph wave"

    const-wide v7, 0x3feb333333333333L    # 0.85

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 834
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 835
    const-string v4, "\u0412\u044a\u043b\u043d\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 \u043d\u043e\u0441\u0430 \u043a\u044a\u043c \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430 \u0438 \u0443\u0445\u043e\u0442\u043e \u2014 \u0441\u0430\u043c\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043d\u0438"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 836
    const-string v4, "The wave runs from the nose to the jaw and the ear \u2014 just relax"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 837
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_d36

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_d3e

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_d46

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_d4e

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_d56

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput v7, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_d5e

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 846
    :pswitch_b7c
    const-string v5, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u043d\u0430 \u043c\u0438\u043c\u0438\u043a\u0430\u0442\u0430"

    const-string v6, "Expression relax"

    const-string v7, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u043e\u0447\u0438, \u043e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u043e\u0442\u043e \u2014 \u0442\u043e\u043a\u044a\u0442 \u0440\u0430\u0431\u043e\u0442\u0438 \u043f\u043e \u043d\u0435\u0440\u0432\u0438\u0442\u0435"

    const-string v8, "Close the eyes, let the forehead go \u2014 the current works on the nerves"

    const/4 v2, 0x1

    new-array v9, v2, [Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v2, 0x0

    const/16 v4, 0x64

    const/16 v10, 0x32

    const/4 v11, 0x4

    const/4 v12, 0x4

    const/16 v13, 0x3e8

    .line 849
    invoke-static {v4, v10, v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    aput-object v4, v9, v2

    move/from16 v4, p3

    .line 846
    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    goto/16 :goto_95

    .line 852
    :pswitch_b9d
    const-string v5, "\u0421\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u043b\u0438\u0446\u0435"

    const-string v6, "Calm face"

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

    .line 855
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

    .line 852
    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    goto/16 :goto_95

    .line 859
    :pswitch_bcd
    const/4 v4, 0x2

    const/16 v5, 0x96

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    .line 860
    const-string v5, "\u041e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0430 \u0447\u0435\u043b\u044e\u0441\u0442"

    const-string v6, "Relaxed jaw"

    const-string v7, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430, \u0437\u044a\u0431\u0438\u0442\u0435 \u0434\u0430 \u043d\u0435 \u0441\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442"

    const-string v8, "Let the jaw hang, teeth apart"

    const/4 v4, 0x1

    new-array v9, v4, [Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v4, 0x0

    aput-object v2, v9, v4

    move/from16 v4, p3

    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    goto/16 :goto_95

    .line 865
    :pswitch_bee
    const-string v4, "WARMUP"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v6, "Wake-up"

    const-wide v7, 0x3fbc28f5c28f5c29L    # 0.11

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 866
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 867
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 868
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d, \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 869
    const-string v4, "Sit up, no food or drink"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 870
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x1e

    const/16 v5, 0x96

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/16 v8, 0x1f4

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u0430 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430"

    const-string v6, "Firm chin"

    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 872
    const-string v4, "\u041f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430 \u2014 \u043d\u0435 \u043f\u0440\u0435\u0433\u043b\u044a\u0449\u0430\u0439 \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0442\u044f\u0433\u0430\u043d\u0435\u0442\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 873
    const-string v4, "It tightens under the chin \u2014 do not swallow during the hold"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 874
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x1e

    const/16 v5, 0x96

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/16 v8, 0x1f4

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    const/16 v2, 0x96

    move/from16 v0, p3

    invoke-static {v3, v0, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;II)V

    goto/16 :goto_95

    .line 898
    :cond_c6e
    return-object v3

    .line 599
    nop

    :sswitch_data_c70
    .sparse-switch
        -0x6f0d1d95 -> :sswitch_152
        -0x699e30ff -> :sswitch_19a
        -0x699e1714 -> :sswitch_1b2
        -0x69986f0c -> :sswitch_176
        -0x699641ec -> :sswitch_16a
        -0x626b8aa2 -> :sswitch_10b
        -0x5183fbca -> :sswitch_100
        -0x4a13fe0e -> :sswitch_c9
        -0x35ffd1d0 -> :sswitch_116
        -0x4c6f718 -> :sswitch_be
        0x2eaf9f -> :sswitch_ea
        0x2fd65d -> :sswitch_15e
        0x3306f4 -> :sswitch_d4
        0x5b679f8 -> :sswitch_12e
        0x65e8905 -> :sswitch_f5
        0x6a558a2 -> :sswitch_df
        0x1c4fe11c -> :sswitch_13a
        0x1da0293e -> :sswitch_1a6
        0x35edb996 -> :sswitch_182
        0x36ad422e -> :sswitch_18e
        0x4f930f2e -> :sswitch_146
        0x625d7281 -> :sswitch_122
    .end sparse-switch

    :pswitch_data_cca
    .packed-switch 0x0
        :pswitch_1be
        :pswitch_1be
        :pswitch_1be
        :pswitch_1be
        :pswitch_1be
        :pswitch_338
        :pswitch_3ca
        :pswitch_45e
        :pswitch_4ea
        :pswitch_577
        :pswitch_60d
        :pswitch_739
        :pswitch_800
        :pswitch_898
        :pswitch_93a
        :pswitch_93a
        :pswitch_9ef
        :pswitch_ab2
        :pswitch_b7c
        :pswitch_b9d
        :pswitch_bcd
        :pswitch_bee
    .end packed-switch

    .line 700
    :array_cfa
    .array-data 4
        0x4
        0x4
    .end array-data

    .line 730
    :array_d02
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 731
    :array_d0a
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 739
    :array_d12
    .array-data 4
        0x0
        0x6
    .end array-data

    .line 740
    :array_d1a
    .array-data 4
        0x0
        0x6
    .end array-data

    .line 750
    :array_d22
    .array-data 8
        0x3fd3333333333333L    # 0.3
        0x3fbeb851eb851eb8L    # 0.12
        0x3fd3333333333333L    # 0.3
        0x3fbeb851eb851eb8L    # 0.12
    .end array-data

    .line 837
    :array_d36
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 838
    :array_d3e
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_d46
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 839
    :array_d4e
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_d56
    .array-data 4
        0x4
        0x5
    .end array-data

    .line 840
    :array_d5e
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 453
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    .line 454
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p0, v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_1a

    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1a

    .line 455
    const-string v0, "senior"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 466
    :goto_19
    return-object v0

    .line 457
    :cond_1a
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_39

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-lez v0, :cond_39

    const-string v0, "postpartum"

    .line 458
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 459
    const-string v0, "postpartum"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    goto :goto_19

    .line 461
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

    .line 462
    invoke-static {v0, p0, p2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3d

    goto :goto_19

    .line 466
    :cond_50
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    goto :goto_19
.end method

.method public static recoveryS(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)I
    .registers 2

    .prologue
    .line 315
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

    .line 1004
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v1, 0x3

    const/16 v2, 0xfa

    add-int/lit8 v3, p0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 1005
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 1006
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 1007
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
    .line 376
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

    .line 377
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 378
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 379
    const-string v3, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u043e\u0447\u0438 \u2014 \u0441\u0430\u043c\u043e \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435, \u043d\u0438\u0449\u043e \u043d\u0435 \u043c\u044a\u0440\u0434\u0430"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 380
    const-string v3, "Close the eyes \u2014 only a tingle, nothing moves"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 381
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v3, 0x0

    aget-object v3, p6, v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
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

    .line 383
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 384
    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 385
    move-object/from16 v0, p6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_5e
    if-ge v2, v4, :cond_6e

    aget-object v5, p6, v2

    .line 386
    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 388
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

    .line 389
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 390
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 391
    const-string v3, "\u041e\u0441\u0442\u0430\u043d\u0438 \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442 \u043e\u0449\u0435 \u043c\u0430\u043b\u043a\u043e"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 392
    const-string v3, "Stay relaxed a little longer"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 393
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v3, 0x0

    aget-object v3, p6, v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method static varargs sites([I)[I
    .registers 6

    .prologue
    .line 97
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 98
    array-length v2, p0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_11

    aget v3, p0, v0

    .line 99
    const/16 v4, 0x64

    aput v4, v1, v3

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 101
    :cond_11
    return-object v1
.end method

.method static tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    .line 961
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 962
    const/16 v1, 0x190

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 963
    const/16 v1, 0x12c

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 964
    return-object v0
.end method

.method public static times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I
    .registers 14

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 294
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phases(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Ljava/util/List;

    move-result-object v7

    .line 299
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

    .line 300
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 301
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v3, v0

    move v0, v1

    :goto_29
    move v1, v0

    .line 309
    goto :goto_13

    .line 302
    :cond_2b
    if-eqz v1, :cond_37

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_37

    .line 303
    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    move v0, v4

    .line 304
    goto :goto_29

    .line 306
    :cond_37
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v5, v0

    move v0, v4

    .line 307
    goto :goto_29

    .line 310
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

    .line 971
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 972
    iput-wide p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 973
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 974
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 975
    return-object v0
.end method

.method private static uniform(I)[I
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 1015
    new-array v1, v2, [I

    .line 1016
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_c

    .line 1017
    aput p0, v1, v0

    .line 1016
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1019
    :cond_c
    return-object v1
.end method

.method private static waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 986
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 987
    const/16 v1, 0x3e8

    iput v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 988
    const/16 v1, 0x1f4

    iput v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 989
    const/16 v1, 0xa

    new-array v3, v1, [I

    .line 990
    if-eqz p3, :cond_23

    .line 991
    array-length v4, p3

    move v1, v0

    :goto_18
    if-ge v1, v4, :cond_23

    aget v5, p3, v1

    .line 992
    const/16 v6, 0x32

    aput v6, v3, v5

    .line 991
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 995
    :cond_23
    array-length v1, p2

    :goto_24
    if-ge v0, v1, :cond_2f

    aget v4, p2, v0

    .line 996
    const/16 v5, 0x64

    aput v5, v3, v4

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 998
    :cond_2f
    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 999
    return-object v2
.end method
