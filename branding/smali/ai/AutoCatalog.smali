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

.field public static final FACE_CHIN_PW:I = 0xc8

.field public static final FACE_DRAIN:Ljava/lang/String; = "face_drain"

.field public static final FACE_HZ_MIN:I = 0x14

.field public static final FACE_IDS:[Ljava/lang/String;

.field public static final FACE_JAW:Ljava/lang/String; = "face_jaw"

.field public static final FACE_JAW_PW:I = 0xfa

.field public static final FACE_OVAL:Ljava/lang/String; = "face_oval"

.field public static final FACE_PW:I = 0x64

.field public static final FACE_RECOVERY_S:I = 0x78

.field public static final FACE_RELAX:Ljava/lang/String; = "face_relax"

.field public static final FACE_RELAX_PW:I = 0xfa

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
    .line 80
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

    .line 96
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_624

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    .line 162
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

    .line 167
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

    .line 169
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

    .line 167
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 170
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

    .line 172
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

    .line 174
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

    .line 172
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 175
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

    .line 177
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

    .line 179
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

    .line 177
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 180
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

    .line 182
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

    .line 184
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

    .line 182
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 185
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

    .line 187
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

    .line 189
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

    .line 187
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 190
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

    .line 192
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

    .line 194
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

    .line 192
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 195
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

    .line 197
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

    .line 199
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

    .line 197
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 200
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

    .line 202
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

    .line 204
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

    .line 202
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 205
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

    .line 207
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

    .line 209
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

    .line 207
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 210
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

    .line 212
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

    .line 214
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

    .line 212
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 215
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

    .line 217
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

    .line 219
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

    .line 217
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 220
    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 221
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442\u0435\u043d (35 Hz)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d (8 Hz)"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsBg:[Ljava/lang/String;

    .line 222
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Standard (35 Hz)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Sensitive (8 Hz)"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->variantsEn:[Ljava/lang/String;

    .line 224
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

    .line 226
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

    .line 224
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 227
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe3333333333333L    # 0.6

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 229
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

    .line 231
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

    .line 229
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 232
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    .line 234
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

    .line 236
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

    .line 234
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 237
    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 239
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u041b\u0438\u0444\u0442\u0438\u043d\u0433 3D"

    const-string v3, "Face \u00b7 Lift 3D"

    const-string v4, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433 3D \u00b7 \u041e\u0432\u0430\u043b \u00b7 \u0414\u0435\u0442\u043e\u043a\u0441 \u00b7 \u0411\u043e\u0442\u043e\u043a\u0441 \u0435\u0444\u0435\u043a\u0442 \u00b7 \u0421\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u043b\u0438\u0446\u0435 \u2014 \u0438\u0437\u0431\u043e\u0440 \u0432 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0437\u0430 \u043b\u0438\u0446\u0435"

    const-string v5, "Lift 3D \u00b7 Oval \u00b7 Depuff \u00b7 Botox effect \u00b7 Calm face \u2014 chosen in the face studio"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 242
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 239
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 243
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 244
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_tone"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043e\u0432\u0430\u043b"

    const-string v3, "Face \u00b7 Firm contour"

    const-string v4, "\u0415\u043b\u0430\u0441\u0442\u0438\u0447\u043d\u043e\u0441\u0442, \u043a\u043e\u044f\u0442\u043e \u043f\u0430\u0437\u0438 \u043b\u0438\u0444\u0442\u0438\u043d\u0433\u0430"

    const-string v5, "Elasticity that keeps the lift"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 245
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 244
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 246
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 247
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

    .line 249
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 247
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 250
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 251
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

    .line 253
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 251
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 254
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 255
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

    .line 257
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 255
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 258
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 259
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

    .line 261
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 259
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 262
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 263
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

    .line 264
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 263
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 265
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 266
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

    .line 267
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 266
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 268
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 272
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

    .line 273
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f2

    .line 275
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

    .line 276
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    const/4 v4, 0x3

    iput v4, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_614

    .line 278
    :cond_622
    return-void

    .line 96
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

    .line 247
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

    .line 251
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

    .line 259
    :array_658
    .array-data 4
        0x8
        0x6
        0x7
    .end array-data

    .line 263
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
    .line 399
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
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
    .line 404
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

    .line 544
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p1, v0, :cond_1d

    move v0, v1

    .line 545
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

    .line 573
    :goto_1c
    :pswitch_1c
    return v3

    :cond_1d
    move v0, v2

    .line 544
    goto :goto_d

    .line 545
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

    .line 551
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

    .line 553
    goto/16 :goto_1c

    :pswitch_e2
    move v3, v5

    .line 561
    goto/16 :goto_1c

    .line 563
    :pswitch_e5
    const/16 v3, 0x30c

    goto/16 :goto_1c

    .line 566
    :pswitch_e9
    const/16 v3, 0x2d0

    goto/16 :goto_1c

    .line 568
    :pswitch_ed
    const/16 v3, 0x384

    goto/16 :goto_1c

    :pswitch_f1
    move v3, v4

    .line 571
    goto/16 :goto_1c

    .line 545
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
    .line 483
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

    .line 491
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v2, :cond_16

    .line 492
    const-string v0, "\u0421\u0430\u043c\u043e \u0437\u0430 \u0436\u0435\u043d\u0438"

    const-string v1, "Women only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    :goto_15
    return-object v0

    .line 494
    :cond_16
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->maleOnly:Z

    if-eqz v0, :cond_29

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_29

    .line 495
    const-string v0, "\u041c\u044a\u0436\u043a\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v1, "Men\'s program"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 497
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

    .line 498
    const-string v0, "\u041f\u043e\u0434 24 \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u2014 \u0441\u0430\u043c\u043e \u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v1, "Under 24 h since the last active one \u2014 passive only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 501
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

    .line 502
    const-string v0, "\u0418\u0422\u041c \u043f\u043e\u0434 18.5 \u2014 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435\u0442\u043e \u043d\u0435 \u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u043e"

    const-string v1, "BMI under 18.5 \u2014 weight loss is not suitable"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 505
    :cond_68
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x46

    if-lt v0, v2, :cond_81

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-eq p1, v0, :cond_81

    .line 506
    const-string v0, "\u0421\u043b\u0435\u0434 70 \u0433. \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u0437\u0430 \u0437\u0434\u0440\u0430\u0432\u0435"

    const-string v1, "After 70 \u2014 the health programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 508
    :cond_81
    const-string v0, "power"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 509
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_9a

    .line 510
    const-string v0, "\u0421\u043b\u0435\u0434 4 \u0441\u0435\u0441\u0438\u0438 (\u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f)"

    const-string v1, "After 4 sessions (adaptation)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 512
    :cond_9a
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_aa

    .line 513
    const-string v0, "\u0414\u043e 60 \u0433."

    const-string v1, "Under 60"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 515
    :cond_aa
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v2, :cond_ba

    .line 516
    const-string v0, "\u041d\u0443\u0436\u043d\u0430 \u0435 \u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "Needs medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 519
    :cond_ba
    if-nez p3, :cond_bf

    move-object v0, v1

    .line 520
    goto/16 :goto_15

    .line 522
    :cond_bf
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksFace:Z

    if-eqz v0, :cond_d3

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->injectable:Z

    if-eqz v0, :cond_d3

    .line 523
    const-string v0, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u0434\u043e 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u2014 \u0434\u043d\u0435\u0441 \u0431\u0435\u0437 \u043b\u0438\u0446\u0435"

    const-string v1, "Botox or filler within 2 weeks \u2014 no face today"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 526
    :cond_d3
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    if-eqz v0, :cond_e9

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->anyBackRedFlag()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 527
    const-string v0, "\u0421\u0438\u0433\u043d\u0430\u043b \u0437\u0430 \u0442\u0440\u0435\u0432\u043e\u0433\u0430 \u0437\u0430 \u0433\u044a\u0440\u0431\u0430 \u2014 \u043f\u044a\u0440\u0432\u043e \u043b\u0435\u043a\u0430\u0440"

    const-string v1, "Back red flag \u2014 see a doctor first"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 530
    :cond_e9
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksPostpartum:Z

    if-eqz v0, :cond_135

    .line 531
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    if-eqz v0, :cond_133

    const/16 v0, 0xc

    .line 532
    :goto_f5
    iget-object v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-ge v2, v0, :cond_135

    .line 533
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

    .line 531
    :cond_133
    const/4 v0, 0x6

    goto :goto_f5

    :cond_135
    move-object v0, v1

    .line 537
    goto/16 :goto_15
.end method

.method private static varargs ch([I)[I
    .registers 1

    .prologue
    .line 1003
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
    .line 918
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

    .line 919
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 920
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 921
    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v1, 0xfa

    const/16 v2, 0xa

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    return-object v6
.end method

.method static corridor(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)[D
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 1027
    const-string v0, "passive_metabolic"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1028
    new-array v0, v2, [D

    fill-array-data v0, :array_18

    .line 1030
    :goto_10
    return-object v0

    :cond_11
    new-array v0, v2, [D

    fill-array-data v0, :array_24

    goto :goto_10

    .line 1028
    nop

    :array_18
    .array-data 8
        0x3fd0000000000000L    # 0.25
        0x3fdccccccccccccdL    # 0.45
    .end array-data

    .line 1030
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

    .line 390
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    .line 391
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    .line 392
    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 393
    const-string v0, "gentle"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 394
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksFace:Z

    .line 395
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 396
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
    .line 353
    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;II)V

    .line 354
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

    .line 357
    const-string v2, "COOLDOWN"

    const-string v3, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v4, "Let go"

    const-wide v5, 0x3fb999999999999aL    # 0.1

    move-object v1, p0

    move v7, p1

    move-wide v10, v8

    invoke-static/range {v1 .. v11}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 358
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 359
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 360
    const-string v1, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u043b\u0438\u0446\u0435\u0442\u043e \u2014 \u0441\u0430\u043c\u043e \u043c\u0435\u043a\u0438 \u043a\u0440\u0430\u0442\u043a\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 361
    const-string v1, "Let the face go \u2014 only soft short holds"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 362
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v1, 0x1e

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/16 v4, 0x1f4

    invoke-static {v1, p2, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method private static faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 345
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/16 v1, 0x1e

    const/16 v2, 0x64

    add-int/lit8 v3, p0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 346
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 347
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 348
    return-object v0
.end method

.method private static faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 5

    .prologue
    .line 312
    const/16 v0, 0x64

    const/16 v1, 0x1f4

    invoke-static {p0, v0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    return-object v0
.end method

.method private static faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    .line 316
    const/16 v0, 0x14

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 317
    iput p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 318
    iput p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 319
    return-object v0
.end method

.method private static faceStep(IIIII[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 7

    .prologue
    .line 324
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 325
    iput-object p5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 326
    return-object v0
.end method

.method private static faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 10

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 331
    const/16 v3, 0xa

    new-array v5, v3, [I

    .line 332
    if-eqz p1, :cond_17

    .line 333
    array-length v4, p1

    move v3, v0

    :goto_c
    if-ge v3, v4, :cond_17

    aget v6, p1, v3

    .line 334
    const/16 v7, 0x32

    aput v7, v5, v6

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 337
    :cond_17
    array-length v3, p0

    :goto_18
    if-ge v0, v3, :cond_21

    aget v4, p0, v0

    .line 338
    aput v1, v5, v4

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 340
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

    .line 930
    .line 931
    const/4 v1, 0x0

    .line 932
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

    .line 933
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-nez v5, :cond_62

    .line 934
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v1, v2

    move v2, v1

    :goto_1d
    move-object v1, v0

    .line 937
    goto :goto_7

    .line 939
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

    .line 940
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 941
    const/16 v5, 0x258

    iput v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    move v0, v4

    :goto_3b
    move v4, v0

    .line 946
    goto :goto_24

    .line 943
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

    .line 944
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v0, v4

    goto :goto_3b

    :cond_51
    move v5, v3

    .line 943
    goto :goto_4b

    .line 947
    :cond_53
    if-eqz v1, :cond_61

    .line 948
    const/16 v0, 0x1e

    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 950
    :cond_61
    return-void

    :cond_62
    move-object v0, v1

    goto :goto_1d
.end method

.method public static get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 4

    .prologue
    .line 408
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

    .line 409
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 413
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static goalOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;
    .registers 3

    .prologue
    .line 463
    if-nez p0, :cond_5

    .line 464
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 470
    :goto_4
    return-object v0

    .line 466
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 470
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 467
    :pswitch_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 469
    :pswitch_16
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 466
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
    .line 1016
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

    .line 1017
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    .line 1022
    :goto_16
    return-object v0

    .line 1019
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

    .line 1020
    :cond_39
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    goto :goto_16

    .line 1022
    :cond_3c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CAP:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    goto :goto_16
.end method

.method public static isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z
    .registers 3

    .prologue
    .line 84
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
    .line 475
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

    .line 895
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v4, [I

    aput v6, v1, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
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

    .line 897
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

    .line 898
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

    .line 899
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    return-void

    .line 896
    nop

    :array_72
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 897
    :array_7a
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 898
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

    .line 419
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_a6

    .line 431
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_91

    .line 432
    new-array v0, v4, [Ljava/lang/String;

    const-string v2, "back_active"

    aput-object v2, v0, v1

    const-string v2, "senior"

    aput-object v2, v0, v3

    .line 436
    :goto_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    array-length v3, v0

    :goto_24
    if-ge v1, v3, :cond_a5

    aget-object v4, v0, v1

    .line 438
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 421
    :pswitch_32
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_53

    .line 422
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

    .line 423
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

    .line 426
    :pswitch_66
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_82

    .line 427
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

    .line 428
    :cond_82
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "cellulite"

    aput-object v2, v0, v1

    const-string v2, "drain"

    aput-object v2, v0, v3

    const-string v2, "passive_metabolic"

    aput-object v2, v0, v4

    goto :goto_1e

    .line 433
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

    .line 440
    :cond_a5
    return-object v2

    .line 419
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

    .line 579
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_d

    .line 580
    new-array v0, v2, [I

    fill-array-data v0, :array_22

    .line 585
    :goto_c
    return-object v0

    .line 582
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_19

    .line 583
    new-array v0, v2, [I

    fill-array-data v0, :array_2a

    goto :goto_c

    .line 585
    :cond_19
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    goto :goto_c

    .line 580
    :array_22
    .array-data 4
        0x4
        0x6
    .end array-data

    .line 583
    :array_2a
    .array-data 4
        0x6
        0x4
    .end array-data
.end method

.method static pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 4

    .prologue
    .line 971
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 972
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 973
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
    .line 904
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;-><init>()V

    .line 905
    iput-object p1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    .line 906
    iput-object p2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    .line 907
    iput-object p3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    .line 908
    int-to-double v2, p6

    mul-double/2addr v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 909
    iput-wide p7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 910
    iput-wide p9, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 911
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 912
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 913
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
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
    .line 589
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 590
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_bb

    const/4 v2, 0x1

    .line 591
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

    .line 871
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 872
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 873
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 874
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    const-string v4, "MAIN"

    const-string v5, "\u041c\u0430\u0441\u0430\u0436"

    const-string v6, "Massage"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 876
    iget-object v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x8

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x2

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 882
    :goto_95
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->fixDurations(Ljava/util/List;I)V

    .line 883
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v2

    if-eqz v2, :cond_c6e

    .line 884
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

    .line 885
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 886
    const/16 v5, 0x78

    iput v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    goto :goto_a4

    .line 590
    :cond_bb
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 591
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

    .line 597
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

    .line 598
    :cond_1e2
    const/4 v4, 0x5

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v4

    move-object v14, v4

    .line 601
    :goto_1eb
    const-string v4, "mass"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e5

    .line 602
    const-string v5, "\u041a\u043b\u0435\u043a, \u043b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435, \u043f\u0440\u0435\u0441\u0430 \u2014 \u0431\u0430\u0432\u043d\u043e \u0438 \u0442\u0435\u0436\u043a\u043e"

    .line 603
    const-string v4, "Squat, push-ups, rows, press \u2014 slow and heavy"

    move-object v15, v4

    move-object/from16 v16, v5

    .line 617
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

    .line 618
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 619
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 620
    const-string v5, "\u041a\u043b\u0435\u043a, \u0445\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 621
    const-string v5, "Squat, marching"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 622
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
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

    .line 624
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 625
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 626
    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 627
    iput-object v15, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 628
    const/16 v4, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 629
    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v2, :cond_27f

    const/4 v6, 0x6

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v4, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    :cond_27f
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    if-eqz v2, :cond_2cd

    .line 631
    const-string v4, "METABOLIC"

    const-string v5, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Burn"

    const-wide v7, 0x3fd6666666666666L    # 0.35

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 632
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 633
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435, \u0441\u0442\u0435\u043f, \u043b\u0435\u043a\u0438 \u043a\u043b\u0435\u043a\u043e\u0432\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 634
    const-string v4, "Walking, step, light squats"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 635
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    :cond_2cd
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 598
    :cond_2da
    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v4

    move-object v14, v4

    goto/16 :goto_1eb

    .line 604
    :cond_2e5
    const-string v4, "upper"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2fa

    .line 605
    const-string v5, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435, \u043f\u0440\u0435\u0441\u0430, \u0431\u0438\u0446\u0435\u043f\u0441, \u0442\u0440\u0438\u0446\u0435\u043f\u0441"

    .line 606
    const-string v4, "Push-ups, rows, press, biceps, triceps"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_1fe

    .line 607
    :cond_2fa
    const-string v4, "glutes"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30f

    .line 608
    const-string v5, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0433\u043b\u0443\u0442\u0435\u0443\u0441 \u043c\u043e\u0441\u0442, \u0430\u0431\u0434\u0443\u043a\u0446\u0438\u044f"

    .line 609
    const-string v4, "Squat, lunge, glute bridge, abduction"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_1fe

    .line 610
    :cond_30f
    const-string v4, "core"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_324

    .line 611
    const-string v5, "\u041f\u043b\u0430\u043d\u043a, \u043a\u0440\u044a\u043d\u0447, \u0440\u043e\u0442\u0430\u0446\u0438\u0438, \u201e\u043c\u044a\u0440\u0442\u0432\u0430 \u0431\u0443\u0431\u043e\u043b\u0435\u0447\u043a\u0430\u201c"

    .line 612
    const-string v4, "Plank, crunch, rotations, dead bug"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_1fe

    .line 614
    :cond_324
    const-string v5, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u043b\u0438\u0446\u0435\u0432\u0438 \u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435, \u0433\u0440\u0435\u0431\u0430\u043d\u0435"

    .line 615
    const-string v4, "Squat, lunge, knee push-ups, rows"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_1fe

    .line 617
    :cond_32d
    const-wide v7, 0x3fc3333333333333L    # 0.15

    goto/16 :goto_20b

    .line 623
    :cond_334
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    goto/16 :goto_249

    .line 642
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

    .line 643
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 644
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 645
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    const-string v4, "MAIN"

    const-string v5, "\u0412\u0437\u0440\u0438\u0432\u043d\u0430 \u0441\u0438\u043b\u0430"

    const-string v6, "Explosive power"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 647
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 648
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 649
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onMinus:I

    .line 650
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onPlus:I

    .line 651
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 652
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x3

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offPlus:I

    .line 653
    const-string v4, "\u0412\u0437\u0440\u0438\u0432\u0435\u043d \u043a\u043b\u0435\u043a / \u0441\u043a\u043e\u043a / \u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435 \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 654
    const-string v4, "Explosive squat / jump / throw at your own pace"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 655
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x64

    const/16 v5, 0x12c

    const/4 v6, 0x3

    const/16 v7, 0x9

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 660
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

    .line 661
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 662
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 663
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    const-string v4, "METABOLIC"

    const-string v5, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Burn"

    const-wide v7, 0x3fe999999999999aL    # 0.8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 665
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 666
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 667
    const-string v4, "\u0421\u0442\u0435\u043f, \u0445\u043e\u0434\u0435\u043d\u0435, \u043a\u043b\u0435\u043a \u2014 \u0431\u0435\u0437 \u0441\u043f\u0438\u0440\u0430\u043d\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 668
    const-string v4, "Step, walking, squats \u2014 keep moving"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 669
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 675
    :pswitch_45e
    const/4 v2, 0x6

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v2

    .line 676
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u043a\u0430"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 677
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 678
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 679
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e\u0441\u0442"

    const-string v6, "Stability"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 681
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 682
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 683
    const-string v5, "\u041f\u0442\u0438\u0446\u0430-\u043a\u0443\u0447\u0435, \u043c\u043e\u0441\u0442, \u043f\u043b\u0430\u043d\u043a, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0443\u0441\u0443\u043a\u0432\u0430\u043d\u0435 \u043f\u043e\u0434 \u0442\u043e\u0432\u0430\u0440"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 684
    const-string v5, "Bird-dog, bridge, plank, rows \u2014 no loaded twisting"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 685
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

    .line 686
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x4

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 690
    :pswitch_4ea
    const/4 v2, 0x4

    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v2

    .line 691
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v4, v5, :cond_500

    .line 692
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_cfa

    .line 694
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

    .line 695
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 696
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 697
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 699
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 700
    const-string v5, "\u0421\u0442\u0430\u0432\u0430\u043d\u0435 \u043e\u0442 \u0441\u0442\u043e\u043b, \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u043d\u0435 \u043d\u0430 \u043f\u0440\u044a\u0441\u0442\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u0441 \u043b\u0430\u0441\u0442\u0438\u043a"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 701
    const-string v5, "Sit-to-stand, calf raises, band rows"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 702
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

    .line 703
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 707
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

    .line 708
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    const-string v4, "MAIN"

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    const-string v6, "Tone"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 710
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 711
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

    .line 712
    const-string v4, "WAVE"

    const-string v5, "\u0414\u0440\u0435\u043d\u0430\u0436\u043d\u0430 \u0432\u044a\u043b\u043d\u0430"

    const-string v6, "Drainage wave"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 713
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 714
    const/16 v4, 0x23

    const/16 v5, 0x12c

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 715
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 719
    :pswitch_60d
    move-object/from16 v0, p2

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->variant:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_735

    const/16 v2, 0x8

    .line 720
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

    .line 721
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 722
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

    .line 723
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

    .line 724
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    const-string v4, "LEGS"

    const-string v5, "\u041a\u0440\u0430\u043a\u0430"

    const-string v6, "Legs"

    const-wide v7, 0x3fe199999999999aL    # 0.55

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 726
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 727
    const/16 v5, 0x12c

    invoke-static {v4, v2, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 728
    const-string v4, "ARMS"

    const-string v5, "\u0420\u044a\u0446\u0435 \u0438 \u0433\u0440\u044a\u0431"

    const-string v6, "Arms and back"

    const-wide v7, 0x3fc999999999999aL    # 0.2

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

    .line 731
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

    .line 732
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

    .line 733
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 735
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

    .line 719
    :cond_735
    const/16 v2, 0x23

    goto/16 :goto_616

    .line 739
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

    .line 740
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
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

    .line 742
    const/4 v2, 0x4

    new-array v15, v2, [D

    fill-array-data v15, :array_d22

    .line 743
    const/4 v2, 0x0

    :goto_783
    array-length v4, v14

    if-ge v2, v4, :cond_7f3

    .line 744
    const-string v4, "TONE"

    aget-object v5, v14, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 745
    if-nez v2, :cond_7be

    const-string v4, "MAIN"

    .line 746
    :goto_792
    if-eqz v16, :cond_7d4

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    :goto_796
    if-eqz v16, :cond_7d7

    const-string v6, "Tone"

    :goto_79a
    aget-wide v7, v15, v2

    .line 747
    if-eqz v16, :cond_7da

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    :goto_7a0
    if-eqz v16, :cond_7e0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    :goto_7a4
    move/from16 v9, p3

    .line 745
    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 748
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

    .line 743
    add-int/lit8 v2, v2, 0x1

    goto :goto_783

    .line 745
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

    .line 746
    :cond_7d4
    const-string v5, "6 Hz"

    goto :goto_796

    :cond_7d7
    const-string v6, "6 Hz"

    goto :goto_79a

    .line 747
    :cond_7da
    const-wide v10, 0x3fe6666666666666L    # 0.7

    goto :goto_7a0

    :cond_7e0
    const-wide v12, 0x3fe6666666666666L    # 0.7

    goto :goto_7a4

    .line 748
    :cond_7e6
    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    goto :goto_7b8

    .line 750
    :cond_7f3
    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 754
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

    .line 755
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x4

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v6, "Stabilise"

    const-wide v7, 0x3fe199999999999aL    # 0.55

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 757
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 758
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x0

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 759
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x50

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    const-string v4, "RELIEF"

    const-string v5, "\u041e\u0431\u0435\u0437\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Relief"

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 761
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x2

    const/16 v5, 0xc8

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x2

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 766
    :pswitch_898
    move-object/from16 v0, p2

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_936

    const/16 v2, 0x32

    .line 767
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

    .line 768
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 769
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    const-string v4, "MAIN"

    const-string v5, "\u0422\u0430\u0437\u043e\u0432\u043e \u0434\u044a\u043d\u043e"

    const-string v6, "Pelvic floor"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide v10, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    move-wide v12, v14

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 771
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 772
    iput-wide v14, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 773
    const-string v5, "\u0421\u0442\u044f\u0433\u0430\u0439 \u0442\u0430\u0437\u043e\u0432\u043e\u0442\u043e \u0434\u044a\u043d\u043e \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 774
    const-string v5, "Lift the pelvic floor at your own pace"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 775
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

    .line 776
    const-wide v4, 0x3fc3333333333333L    # 0.15

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 766
    :cond_936
    const/16 v2, 0x28

    goto/16 :goto_8a1

    .line 782
    :pswitch_93a
    const-string v2, "face"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 783
    if-eqz v14, :cond_9ca

    const/16 v2, 0x46

    .line 784
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

    .line 785
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 786
    const-wide v6, 0x3fe999999999999aL    # 0.8

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 787
    const-string v5, "\u0421\u0435\u0434\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e, \u043b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u044a\u0433\u043b\u0438\u0442\u0435 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430\u0442 \u043b\u0435\u043a\u043e \u043d\u0430\u0433\u043e\u0440\u0435"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 788
    const-string v5, "Sit comfortably, face relaxed \u2014 the mouth corners start to lift"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 789
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    const/16 v6, 0x8

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    const-string v4, "MAIN"

    if-eqz v14, :cond_9ce

    const-string v5, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433"

    :goto_98b
    if-eqz v14, :cond_9d1

    const-string v6, "Lift"

    :goto_98f
    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    .line 791
    if-eqz v14, :cond_9d4

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    :goto_99b
    if-eqz v14, :cond_9da

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    :goto_9a2
    move/from16 v9, p3

    .line 790
    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 792
    if-eqz v14, :cond_9e0

    const-string v2, "\u041b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u0431\u0443\u0437\u0438\u0442\u0435 \u0441\u0435 \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u0442 \u0441\u0430\u043c\u0438; \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430, \u0431\u0435\u0437 \u043c\u0438\u0433\u0430\u043d\u0435"

    .line 793
    :goto_9ac
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 794
    if-eqz v14, :cond_9e3

    const-string v2, "Face relaxed \u2014 the cheeks lift by themselves; no pain, no blinking"

    .line 795
    :goto_9b2
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 796
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v14, :cond_9e6

    const/16 v2, 0x46

    const/4 v5, 0x3

    const/4 v6, 0x6

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    :goto_9c0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 783
    :cond_9ca
    const/16 v2, 0x23

    goto/16 :goto_948

    .line 790
    :cond_9ce
    const-string v5, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043e\u0432\u0430\u043b"

    goto :goto_98b

    :cond_9d1
    const-string v6, "Firm contour"

    goto :goto_98f

    .line 791
    :cond_9d4
    const-wide v10, 0x3fe999999999999aL    # 0.8

    goto :goto_99b

    :cond_9da
    const-wide v12, 0x3fe999999999999aL    # 0.8

    goto :goto_9a2

    .line 793
    :cond_9e0
    const-string v2, "\u041c\u0435\u043a\u043e, \u0440\u0430\u0432\u043d\u043e\u043c\u0435\u0440\u043d\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u2014 \u0443\u0441\u0435\u0449\u0430 \u0441\u0435, \u043d\u0435 \u0431\u043e\u043b\u0438"

    goto :goto_9ac

    .line 795
    :cond_9e3
    const-string v2, "A soft, even hold \u2014 felt, never painful"

    goto :goto_9b2

    .line 796
    :cond_9e6
    const/16 v2, 0x23

    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    goto :goto_9c0

    .line 802
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

    .line 803
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 804
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 805
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d, \u043b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 806
    const-string v4, "Sit up, face relaxed"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 807
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

    .line 808
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

    .line 809
    const-string v4, "MAIN"

    const-string v5, "\u0421\u043a\u0443\u043b\u0438 \u0438 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430"

    const-string v6, "Cheekbones and chin"

    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 810
    const-string v4, "\u0411\u0443\u0437\u0438\u0442\u0435, \u043f\u043e\u0441\u043b\u0435 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u2014 \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430, \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 811
    const-string v4, "The cheeks, then the chin \u2014 no food or drink, no pain"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 812
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

    .line 813
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

    .line 814
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 819
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

    .line 820
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 821
    const-string v4, "\u0413\u043b\u0430\u0432\u0430\u0442\u0430 \u043b\u0435\u043a\u043e \u043d\u0430\u0437\u0430\u0434 \u2014 \u043f\u044a\u0440\u0432\u043e \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u043f\u044a\u0442\u044f\u0442 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 822
    const-string v4, "Head slightly back \u2014 first the way under the chin opens"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 823
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

    .line 824
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    const-string v4, "WAVE"

    const-string v5, "\u041b\u0438\u043c\u0444\u043d\u0430 \u0432\u044a\u043b\u043d\u0430"

    const-string v6, "Lymph wave"

    const-wide v7, 0x3feb333333333333L    # 0.85

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 826
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 827
    const-string v4, "\u0412\u044a\u043b\u043d\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 \u043d\u043e\u0441\u0430 \u043a\u044a\u043c \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430 \u0438 \u0443\u0445\u043e\u0442\u043e \u2014 \u0441\u0430\u043c\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043d\u0438"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 828
    const-string v4, "The wave runs from the nose to the jaw and the ear \u2014 just relax"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 829
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_d36

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
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

    .line 831
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

    .line 832
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

    .line 833
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 838
    :pswitch_b7c
    const-string v5, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435 \u043d\u0430 \u043c\u0438\u043c\u0438\u043a\u0430\u0442\u0430"

    const-string v6, "Expression relax"

    const-string v7, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u043e\u0447\u0438, \u043e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u043e\u0442\u043e \u2014 \u0442\u043e\u043a\u044a\u0442 \u0440\u0430\u0431\u043e\u0442\u0438 \u043f\u043e \u043d\u0435\u0440\u0432\u0438\u0442\u0435"

    const-string v8, "Close the eyes, let the forehead go \u2014 the current works on the nerves"

    const/4 v2, 0x1

    new-array v9, v2, [Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v2, 0x0

    const/16 v4, 0x3c

    const/16 v10, 0xfa

    const/4 v11, 0x4

    const/4 v12, 0x4

    const/16 v13, 0x3e8

    .line 841
    invoke-static {v4, v10, v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    aput-object v4, v9, v2

    move/from16 v4, p3

    .line 838
    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    goto/16 :goto_95

    .line 844
    :pswitch_b9d
    const-string v5, "\u0421\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u043b\u0438\u0446\u0435"

    const-string v6, "Calm face"

    const-string v7, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430, \u0437\u044a\u0431\u0438\u0442\u0435 \u0434\u0430 \u043d\u0435 \u0441\u0435 \u0434\u043e\u043f\u0438\u0440\u0430\u0442"

    const-string v8, "Let the forehead and the jaw go, teeth apart"

    const/4 v2, 0x2

    new-array v9, v2, [Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v2, 0x0

    const/16 v4, 0x3c

    const/16 v10, 0xfa

    const/4 v11, 0x4

    const/4 v12, 0x4

    const/16 v13, 0x3e8

    .line 847
    invoke-static {v4, v10, v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x1

    const/16 v4, 0x50

    const/16 v10, 0xfa

    const/4 v11, 0x4

    const/4 v12, 0x4

    const/16 v13, 0x3e8

    invoke-static {v4, v10, v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    aput-object v4, v9, v2

    move/from16 v4, p3

    .line 844
    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    goto/16 :goto_95

    .line 851
    :pswitch_bcd
    const/4 v4, 0x2

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    .line 852
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

    .line 857
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

    .line 858
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 859
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 860
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d, \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 861
    const-string v4, "Sit up, no food or drink"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 862
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x1e

    const/16 v5, 0xc8

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/16 v8, 0x1f4

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u0430 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430"

    const-string v6, "Firm chin"

    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 864
    const-string v4, "\u041f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430 \u2014 \u043d\u0435 \u043f\u0440\u0435\u0433\u043b\u044a\u0449\u0430\u0439 \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0442\u044f\u0433\u0430\u043d\u0435\u0442\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 865
    const-string v4, "It tightens under the chin \u2014 do not swallow during the hold"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 866
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x1e

    const/16 v5, 0xc8

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/16 v8, 0x1f4

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    const/16 v2, 0xc8

    move/from16 v0, p3

    invoke-static {v3, v0, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;II)V

    goto/16 :goto_95

    .line 890
    :cond_c6e
    return-object v3

    .line 591
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

    .line 692
    :array_cfa
    .array-data 4
        0x4
        0x4
    .end array-data

    .line 722
    :array_d02
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 723
    :array_d0a
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 731
    :array_d12
    .array-data 4
        0x0
        0x6
    .end array-data

    .line 732
    :array_d1a
    .array-data 4
        0x0
        0x6
    .end array-data

    .line 742
    :array_d22
    .array-data 8
        0x3fd3333333333333L    # 0.3
        0x3fbeb851eb851eb8L    # 0.12
        0x3fd3333333333333L    # 0.3
        0x3fbeb851eb851eb8L    # 0.12
    .end array-data

    .line 829
    :array_d36
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 830
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

    .line 831
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

    .line 832
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

    .line 445
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    .line 446
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p0, v0, :cond_1a

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_1a

    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1a

    .line 447
    const-string v0, "senior"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 458
    :goto_19
    return-object v0

    .line 449
    :cond_1a
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_39

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-lez v0, :cond_39

    const-string v0, "postpartum"

    .line 450
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 451
    const-string v0, "postpartum"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    goto :goto_19

    .line 453
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

    .line 454
    invoke-static {v0, p0, p2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3d

    goto :goto_19

    .line 458
    :cond_50
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    goto :goto_19
.end method

.method public static recoveryS(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)I
    .registers 2

    .prologue
    .line 307
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

    .line 996
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v1, 0x3

    const/16 v2, 0xfa

    add-int/lit8 v3, p0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 997
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 998
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 999
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
    .line 368
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

    .line 369
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 370
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 371
    const-string v3, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u043e\u0447\u0438 \u2014 \u0441\u0430\u043c\u043e \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435, \u043d\u0438\u0449\u043e \u043d\u0435 \u043c\u044a\u0440\u0434\u0430"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 372
    const-string v3, "Close the eyes \u2014 only a tingle, nothing moves"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 373
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v3, 0x0

    aget-object v3, p6, v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
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

    .line 375
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 376
    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 377
    move-object/from16 v0, p6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_5e
    if-ge v2, v4, :cond_6e

    aget-object v5, p6, v2

    .line 378
    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 380
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

    .line 381
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 382
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 383
    const-string v3, "\u041e\u0441\u0442\u0430\u043d\u0438 \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442 \u043e\u0449\u0435 \u043c\u0430\u043b\u043a\u043e"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 384
    const-string v3, "Stay relaxed a little longer"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 385
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v3, 0x0

    aget-object v3, p6, v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method static varargs sites([I)[I
    .registers 6

    .prologue
    .line 89
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 90
    array-length v2, p0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_11

    aget v3, p0, v0

    .line 91
    const/16 v4, 0x64

    aput v4, v1, v3

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 93
    :cond_11
    return-object v1
.end method

.method static tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    .line 953
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 954
    const/16 v1, 0x190

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 955
    const/16 v1, 0x12c

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 956
    return-object v0
.end method

.method public static times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I
    .registers 14

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 286
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phases(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Ljava/util/List;

    move-result-object v7

    .line 291
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

    .line 292
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 293
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v3, v0

    move v0, v1

    :goto_29
    move v1, v0

    .line 301
    goto :goto_13

    .line 294
    :cond_2b
    if-eqz v1, :cond_37

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_37

    .line 295
    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    move v0, v4

    .line 296
    goto :goto_29

    .line 298
    :cond_37
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v5, v0

    move v0, v4

    .line 299
    goto :goto_29

    .line 302
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

    .line 963
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 964
    iput-wide p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 965
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 966
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 967
    return-object v0
.end method

.method private static uniform(I)[I
    .registers 4

    .prologue
    const/16 v2, 0xa

    .line 1007
    new-array v1, v2, [I

    .line 1008
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_c

    .line 1009
    aput p0, v1, v0

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1011
    :cond_c
    return-object v1
.end method

.method private static waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 978
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 979
    const/16 v1, 0x3e8

    iput v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 980
    const/16 v1, 0x1f4

    iput v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 981
    const/16 v1, 0xa

    new-array v3, v1, [I

    .line 982
    if-eqz p3, :cond_23

    .line 983
    array-length v4, p3

    move v1, v0

    :goto_18
    if-ge v1, v4, :cond_23

    aget v5, p3, v1

    .line 984
    const/16 v6, 0x32

    aput v6, v3, v5

    .line 983
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 987
    :cond_23
    array-length v1, p2

    :goto_24
    if-ge v0, v1, :cond_2f

    aget v4, p2, v0

    .line 988
    const/16 v5, 0x64

    aput v5, v3, v4

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 990
    :cond_2f
    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 991
    return-object v2
.end method
