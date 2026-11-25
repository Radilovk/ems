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

.field static final CALF_PUMP_HZ:I = 0x8

.field public static final CARDIO:Ljava/lang/String; = "cardio"

.field public static final CELLULITE:Ljava/lang/String; = "cellulite"

.field static final CHEEKS:[I

.field public static final CORE:Ljava/lang/String; = "core"

.field public static final CORE_P:Ljava/lang/String; = "core_passive"

.field public static final DRAIN:Ljava/lang/String; = "drain"

.field public static final DRAIN_RECOVERY_S:I = 0xf0

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

    fill-array-data v0, :array_6f0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 153
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_700

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->LOWER:[I

    .line 155
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_710

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->UPPER_BODY:[I

    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_720

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->TRUNK:[I

    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_72c

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->POSTURE:[I

    .line 170
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_738

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    .line 232
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "general"

    const-string v2, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435 \u043d\u0430 \u0446\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e"

    const-string v3, "Full-body toning"

    const-string v4, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442\u043e \u0442\u044f\u043b\u043e \u0438 \u043f\u043e-\u0441\u0438\u043b\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u2014 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v5, "A firmer body and stronger muscles \u2014 with exercises"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 235
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 232
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 236
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

    .line 238
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "glutes"

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435 \u0438 \u0431\u0435\u0434\u0440\u0430"

    const-string v3, "Glutes & thighs"

    const-string v4, "\u041e\u0444\u043e\u0440\u043c\u0435\u043d\u043e \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435 \u0438 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u0438 \u0431\u0435\u0434\u0440\u0430"

    const-string v5, "Shaped glutes and firm thighs"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->LOWER:[I

    .line 241
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 238
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 242
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

    .line 244
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "mass"

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 \u0438 \u0441\u0438\u043b\u0430"

    const-string v3, "Muscle mass & strength"

    const-string v4, "\u041f\u043e\u0432\u0435\u0447\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0438 \u0441\u0438\u043b\u0430 \u2014 \u0431\u0430\u0432\u043d\u0438, \u0442\u0435\u0436\u043a\u0438 \u043f\u043e\u0432\u0442\u043e\u0440\u0435\u043d\u0438\u044f"

    const-string v5, "More muscle and strength \u2014 slow, heavy reps"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 247
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 244
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 248
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

    .line 250
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "upper"

    const-string v2, "\u0413\u043e\u0440\u043d\u0430 \u0447\u0430\u0441\u0442 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e"

    const-string v3, "Upper body"

    const-string v4, "\u0413\u044a\u0440\u0434\u0438, \u0433\u0440\u044a\u0431, \u0440\u0430\u043c\u0435\u043d\u0435 \u0438 \u0440\u044a\u0446\u0435 \u2014 \u0441\u0438\u043b\u0430 \u0438 \u0440\u0435\u043b\u0435\u0444"

    const-string v5, "Chest, back, shoulders and arms \u2014 strength and definition"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->UPPER_BODY:[I

    .line 253
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 250
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 254
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

    .line 256
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "core"

    const-string v2, "\u0422\u0430\u043b\u0438\u044f \u0438 \u043a\u043e\u0440\u0435\u043c"

    const-string v3, "Waist & core"

    const-string v4, "\u041f\u043e-\u0442\u044a\u043d\u043a\u0430 \u0442\u0430\u043b\u0438\u044f \u0438 \u0441\u0438\u043b\u0435\u043d \u043a\u043e\u0440\u0435\u043c, \u0437\u0430\u0449\u0438\u0442\u0435\u043d \u0433\u0440\u044a\u0431"

    const-string v5, "A slimmer waist and strong core, a protected back"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->TRUNK:[I

    .line 259
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 256
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 260
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

    .line 262
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "power"

    const-string v2, "\u0421\u0438\u043b\u0430 \u0438 \u0435\u043a\u0441\u043f\u043b\u043e\u0437\u0438\u0432\u043d\u043e\u0441\u0442"

    const-string v3, "Power & explosiveness"

    const-string v4, "\u0415\u043a\u0441\u043f\u043b\u043e\u0437\u0438\u0432\u043d\u0430 \u0441\u0438\u043b\u0430 \u0438 \u0431\u044a\u0440\u0437\u0438\u043d\u0430 \u043d\u0430 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u044f\u0442\u0430"

    const-string v5, "Explosive strength and fast movement"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 265
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 262
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 266
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

    .line 268
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "cardio"

    const-string v2, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435 \u043d\u0430 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v3, "Fat burning"

    const-string v4, "\u0423\u0441\u043a\u043e\u0440\u0435\u043d\u043e \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435 \u043d\u0430 \u043c\u0430\u0437\u043d\u0438\u043d\u0438, \u043f\u0443\u043b\u0441\u044a\u0442 \u0432 \u043e\u043f\u0442\u0438\u043c\u0430\u043b\u043d\u0430\u0442\u0430 \u0437\u043e\u043d\u0430"

    const-string v5, "Faster fat burning, heart rate in the optimal zone"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 271
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 268
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 272
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

    .line 274
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "back_active"

    const-string v2, "\u0417\u0434\u0440\u0430\u0432 \u0433\u0440\u044a\u0431 \u0438 \u043f\u0440\u0430\u0432\u0438\u043b\u043d\u0430 \u0441\u0442\u043e\u0439\u043a\u0430"

    const-string v3, "Healthy back & good posture"

    const-string v4, "\u0421\u0438\u043b\u043d\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u043d\u0430 \u0433\u044a\u0440\u0431\u0430 \u2014 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d\u0430 \u0441\u0442\u043e\u0439\u043a\u0430, \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435"

    const-string v5, "Strong back muscles \u2014 upright posture, less strain"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x5

    new-array v7, v7, [I

    fill-array-data v7, :array_750

    .line 277
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 274
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 278
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

    .line 282
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "senior"

    const-string v2, "50+ \u00b7 \u0421\u0438\u043b\u0430, \u0431\u0430\u043b\u0430\u043d\u0441, \u0437\u0434\u0440\u0430\u0432\u0438 \u043a\u043e\u0441\u0442\u0438"

    const-string v3, "50+ \u00b7 Strength, balance, strong bones"

    const-string v4, "\u0421\u0438\u043b\u0430 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430, \u0431\u0430\u043b\u0430\u043d\u0441 \u0438 \u0441\u0442\u0430\u0431\u0438\u043b\u043d\u043e\u0441\u0442, \u0437\u0434\u0440\u0430\u0432\u0438 \u043a\u043e\u0441\u0442\u0438, \u043d\u043e\u0440\u043c\u0430\u043b\u043d\u0430 \u043a\u0440\u044a\u0432\u043d\u0430 \u0437\u0430\u0445\u0430\u0440"

    const-string v5, "Leg strength, balance and stability, strong bones, healthy blood sugar"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 285
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 282
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 286
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

    .line 288
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "cellulite"

    const-string v12, "\u0410\u043d\u0442\u0438\u0446\u0435\u043b\u0443\u043b\u0438\u0442\u043d\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v13, "Anti-cellulite treatment"

    const-string v14, "\u041f\u043e-\u0433\u043b\u0430\u0434\u043a\u0430 \u043a\u043e\u0436\u0430 \u0438 \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442"

    const-string v15, "Smoother skin and less fluid retention"

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

    .line 291
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

    .line 288
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 292
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

    .line 294
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "postpartum"

    const-string v2, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u0441\u043b\u0435\u0434 \u0440\u0430\u0436\u0434\u0430\u043d\u0435"

    const-string v3, "Postnatal recovery"

    const-string v4, "\u0422\u0430\u0437\u043e\u0432\u043e \u0434\u044a\u043d\u043e, \u043a\u043e\u0440\u0435\u043c \u0438 \u043a\u0440\u044a\u0441\u0442 \u2014 \u0432\u043d\u0438\u043c\u0430\u0442\u0435\u043b\u043d\u043e \u0438 \u043f\u043e\u0441\u0442\u0435\u043f\u0435\u043d\u043d\u043e"

    const-string v5, "Pelvic floor, abs and lower back \u2014 gently, step by step"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_75e

    .line 297
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 294
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 298
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

    .line 300
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "drain"

    const-string v12, "\u041b\u0438\u043c\u0444\u0435\u043d \u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v13, "Lymphatic drainage"

    const-string v14, "\u041f\u043e-\u043c\u0430\u043b\u043a\u043e \u043e\u0442\u043e\u0446\u0438 \u0438 \u0437\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442, \u043b\u0435\u043a\u0438 \u043a\u0440\u0430\u043a\u0430"

    const-string v15, "Less swelling and fluid retention, light legs"

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

    .line 303
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

    .line 300
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 304
    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 307
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "passive_metabolic"

    const-string v2, "\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u043c\u0435\u0442\u0430\u0431\u043e\u043b\u0438\u0437\u043c\u0430"

    const-string v3, "Metabolism boost"

    const-string v4, "\u0418\u0437\u0440\u0430\u0437\u0445\u043e\u0434\u0432\u0430\u043d\u0435 \u043d\u0430 \u0435\u043d\u0435\u0440\u0433\u0438\u044f \u0432 \u043f\u043e\u043a\u043e\u0439, \u0431\u0435\u0437 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435"

    const-string v5, "Energy use at rest, without strain"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x7

    new-array v7, v7, [I

    fill-array-data v7, :array_76a

    .line 310
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 307
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 311
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe3333333333333L    # 0.6

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 313
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "back_pain"

    const-string v2, "\u041e\u0431\u043b\u0435\u043a\u0447\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u0431\u043e\u043b\u043a\u0438 \u0432 \u0433\u044a\u0440\u0431\u0430"

    const-string v3, "Back pain relief"

    const-string v4, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435\u0442\u043e, \u0443\u043a\u0440\u0435\u043f\u0432\u0430 \u0434\u044a\u043b\u0431\u043e\u043a\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438, \u043e\u0431\u043b\u0435\u043a\u0447\u0430\u0432\u0430 \u0431\u043e\u043b\u043a\u0430\u0442\u0430"

    const-string v5, "Eases tension, strengthens the deep muscles, relieves pain"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x6

    new-array v7, v7, [I

    fill-array-data v7, :array_77c

    .line 316
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 313
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 317
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    .line 319
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "recovery"

    const-string v2, "\u0412\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u0438 \u0440\u0435\u043b\u0430\u043a\u0441"

    const-string v3, "Recovery & relaxation"

    const-string v4, "\u041f\u043e-\u0431\u044a\u0440\u0437\u043e \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435 \u0441\u043b\u0435\u0434 \u043d\u0430\u0442\u043e\u0432\u0430\u0440\u0432\u0430\u043d\u0435, \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v5, "Faster recovery after training, relaxed muscles"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 322
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 319
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 323
    const/4 v1, 0x3

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 327
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "antiage"

    const-string v12, "\u0410\u043d\u0442\u0438\u0435\u0439\u0434\u0436\u0438\u043d\u0433 \u0438 \u0434\u044a\u043b\u0433\u043e\u043b\u0435\u0442\u0438\u0435"

    const-string v13, "Anti-ageing & longevity"

    const-string v14, "\u041f\u043e-\u043c\u0430\u043b\u043a\u043e \u0432\u044a\u0437\u043f\u0430\u043b\u0435\u043d\u0438\u0435, \u0434\u043e\u0431\u0440\u0430 \u043a\u0440\u044a\u0432\u043d\u0430 \u0437\u0430\u0445\u0430\u0440, \u0437\u0434\u0440\u0430\u0432\u0438 \u0441\u044a\u0434\u043e\u0432\u0435 \u0438 \u043c\u043e\u0437\u044a\u043a"

    const-string v15, "Less inflammation, healthy blood sugar, healthy vessels and brain"

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

    .line 330
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

    .line 327
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 331
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

    .line 333
    new-instance v10, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v11, "antiage_passive"

    const-string v12, "\u0410\u043d\u0442\u0438\u0435\u0439\u0434\u0436\u0438\u043d\u0433 \u0438 \u0434\u044a\u043b\u0433\u043e\u043b\u0435\u0442\u0438\u0435 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v13, "Anti-ageing & longevity \u00b7 treatment"

    const-string v14, "\u041a\u0440\u044a\u0432\u043d\u0430 \u0437\u0430\u0445\u0430\u0440, \u043c\u043e\u0437\u044a\u043a \u0438 \u0441\u044a\u0434\u043e\u0432\u0435 \u2014 \u0432 \u043f\u043e\u043a\u043e\u0439, \u043d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435"

    const-string v15, "Blood sugar, brain and vessels \u2014 at rest, best after a meal"

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

    .line 336
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

    .line 333
    invoke-static {v10}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 337
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->envMax:D

    .line 340
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "general_passive"

    const-string v2, "\u0421\u0442\u044f\u0433\u0430\u043d\u0435 \u043d\u0430 \u0446\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Full-body toning \u00b7 treatment"

    const-string v4, "\u0426\u044f\u043b\u043e\u0442\u043e \u0442\u044f\u043b\u043e \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 \u0434\u044a\u043b\u0431\u043e\u043a\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u0431\u0435\u0437 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v5, "The whole body at rest \u2014 a deep hold, no exercises"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 343
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 340
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 344
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

    .line 346
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "glutes_passive"

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435 \u0438 \u0431\u0435\u0434\u0440\u0430 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Glutes & thighs \u00b7 treatment"

    const-string v4, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435 \u0438 \u0431\u0435\u0434\u0440\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439 + \u043b\u0438\u043c\u0444\u0435\u043d \u0434\u0440\u0435\u043d\u0430\u0436 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430"

    const-string v5, "Glutes and thighs at rest + leg lymphatic drainage"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->LOWER:[I

    .line 349
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 346
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 350
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

    .line 352
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "mass_passive"

    const-string v2, "\u041c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u043c\u0430\u0441\u0430 \u0438 \u0441\u0438\u043b\u0430 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Muscle mass & strength \u00b7 treatment"

    const-string v4, "\u0413\u043e\u043b\u0435\u043c\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u0438 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 \u0434\u044a\u043b\u0433\u0438, \u0441\u0438\u043b\u043d\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f"

    const-string v5, "The big muscles at rest \u2014 long, strong holds"

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

    const/4 v1, 0x7

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->maleOnly:Z

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 358
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "upper_passive"

    const-string v2, "\u0413\u043e\u0440\u043d\u0430 \u0447\u0430\u0441\u0442 \u043d\u0430 \u0442\u044f\u043b\u043e\u0442\u043e \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Upper body \u00b7 treatment"

    const-string v4, "\u0413\u044a\u0440\u0434\u0438, \u0433\u0440\u044a\u0431, \u0440\u0430\u043c\u0435\u043d\u0435 \u0438 \u0440\u044a\u0446\u0435 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v5, "Chest, back, shoulders and arms at rest"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->UPPER_BODY:[I

    .line 361
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 358
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 362
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

    .line 364
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "core_passive"

    const-string v2, "\u0422\u0430\u043b\u0438\u044f \u0438 \u043a\u043e\u0440\u0435\u043c \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Waist & core \u00b7 treatment"

    const-string v4, "\u041a\u043e\u0440\u0435\u043c, \u043a\u0440\u044a\u0441\u0442 \u0438 \u0433\u0440\u044a\u0431 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 \u043e\u043f\u043e\u0440\u0430 \u0437\u0430 \u0433\u0440\u044a\u0431\u043d\u0430\u043a\u0430"

    const-string v5, "Abs, lower back and back at rest \u2014 support for the spine"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->TRUNK:[I

    .line 367
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 364
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 368
    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-string v1, "strength"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 370
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "power_passive"

    const-string v2, "\u0421\u0438\u043b\u0430 \u0438 \u0435\u043a\u0441\u043f\u043b\u043e\u0437\u0438\u0432\u043d\u043e\u0441\u0442 \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Power & explosiveness \u00b7 treatment"

    const-string v4, "\u0411\u044a\u0440\u0437\u0438\u0442\u0435 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0438 \u0432\u043b\u0430\u043a\u043d\u0430 \u0432 \u043f\u043e\u043a\u043e\u0439 \u2014 \u043a\u0440\u0430\u0442\u043a\u0438 \u0441\u0438\u043b\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v5, "The fast muscle fibres at rest \u2014 short strong bursts"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL_ON:[I

    .line 373
    invoke-virtual {v7}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 370
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 374
    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x6

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide v2, 0x3fe199999999999aL    # 0.55

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-string v1, "power"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 376
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "senior_passive"

    const-string v2, "50+ \u00b7 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "50+ \u00b7 treatment"

    const-string v4, "\u0421\u0435\u0434\u043d\u0430\u043b: \u0441\u0438\u043b\u0430 \u0438 \u0441\u0442\u0430\u0431\u0438\u043b\u043d\u043e\u0441\u0442 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430, \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d\u0430 \u0441\u0442\u043e\u0439\u043a\u0430, \u043a\u0440\u044a\u0432\u043d\u0430 \u0437\u0430\u0445\u0430\u0440"

    const-string v5, "Seated: leg strength and stability, upright posture, blood sugar"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/16 v7, 0x8

    new-array v7, v7, [I

    fill-array-data v7, :array_78c

    .line 379
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 376
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 380
    const/4 v1, 0x4

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    const-string v1, "gentle"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 382
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u041b\u0438\u0444\u0442\u0438\u043d\u0433 \u043d\u0430 \u0441\u043a\u0443\u043b\u0438\u0442\u0435"

    const-string v3, "Face \u00b7 Cheekbone lift"

    const-string v4, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433 \u00b7 \u0421\u043a\u0443\u043b\u043f\u0442\u0443\u0440\u0438\u0440\u0430\u043d\u0435 \u00b7 \u041b\u0438\u043c\u0444\u043e\u0434\u0440\u0435\u043d\u0430\u0436 \u00b7 \u0411\u043e\u0442\u043e\u043a\u0441 \u0435\u0444\u0435\u043a\u0442 \u00b7 \u0421\u0432\u0435\u0436\u043e \u043b\u0438\u0446\u0435 \u2014 \u0438\u0437\u0431\u043e\u0440 \u0432 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0437\u0430 \u043b\u0438\u0446\u0435"

    const-string v5, "Lift \u00b7 Oval \u00b7 Facial lymphatic drainage \u00b7 Botox effect \u00b7 Fresh face \u2014 chosen in the face studio"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 385
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 382
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 386
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 387
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_tone"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0422\u043e\u043d\u0443\u0441 \u0438 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e\u0441\u0442"

    const-string v3, "Face \u00b7 Tone & firmness"

    const-string v4, "\u041f\u0430\u0437\u0438 \u043b\u0438\u0444\u0442\u0438\u043d\u0433\u0430 \u0441\u0442\u0435\u0433\u043d\u0430\u0442"

    const-string v5, "Keeps the lift firm"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v7, Lcom/isaigu/gymapp/ai/AutoCatalog;->CHEEKS:[I

    .line 388
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 387
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 389
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 390
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_oval"

    const-string v2, "\u0421\u043a\u0443\u043b\u043f\u0442\u0443\u0440\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u043b\u0438\u0446\u0435\u0442\u043e"

    const-string v3, "Face \u00b7 Sculpting"

    const-string v4, "\u0421\u043a\u0443\u043b\u0438 \u0438 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430 \u0432 \u0435\u0434\u043d\u0430 \u0441\u0435\u0441\u0438\u044f"

    const-string v5, "Cheekbones and chin in one session"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x7

    new-array v7, v7, [I

    fill-array-data v7, :array_7a0

    .line 392
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 390
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 393
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 394
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_drain"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u041b\u0438\u043c\u0444\u043e\u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v3, "Face \u00b7 Lymphatic drainage"

    const-string v4, "\u041f\u043e-\u043c\u0430\u043b\u043a\u043e \u043f\u043e\u0434\u043f\u0443\u0445\u0432\u0430\u043d\u0435, \u043f\u043e-\u0441\u0432\u0435\u0436\u0438 \u0447\u0435\u0440\u0442\u0438"

    const-string v5, "Less puffiness, fresher features"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x7

    new-array v7, v7, [I

    fill-array-data v7, :array_7b2

    .line 396
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 394
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 397
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 398
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

    .line 400
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 398
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 401
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 402
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_calm"

    const-string v2, "\u0421\u0432\u0435\u0436\u043e \u043b\u0438\u0446\u0435"

    const-string v3, "Fresh face"

    const-string v4, "\u0411\u0435\u0437 \u043d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u0432 \u0447\u0435\u043b\u043e\u0442\u043e \u0438 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430"

    const-string v5, "No tension in the forehead and jaw"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_7c4

    .line 404
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 402
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 405
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 406
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    const-string v1, "face_jaw"

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0420\u0435\u043b\u0430\u043a\u0441\u0430\u0446\u0438\u044f \u043d\u0430 \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430"

    const-string v3, "Face \u00b7 Jaw relaxation"

    const-string v4, "\u041f\u043e-\u043c\u0435\u043a \u0434\u043e\u043b\u0435\u043d \u043e\u0432\u0430\u043b"

    const-string v5, "A softer jawline"

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_7ce

    .line 407
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 406
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 408
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 409
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

    .line 410
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sites([I)[I

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/isaigu/gymapp/ai/AutoModel$Kind;[I)V

    .line 409
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->add(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 411
    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->face(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;II)V

    .line 415
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

    :goto_6bf
    if-ge v0, v2, :cond_6cd

    aget-object v3, v1, v0

    .line 417
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    const/4 v4, 0x1

    iput v4, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_6bf

    .line 419
    :cond_6cd
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

    :goto_6e1
    if-ge v0, v2, :cond_6ef

    aget-object v3, v1, v0

    .line 420
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v3

    const/4 v4, 0x3

    iput v4, v3, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_6e1

    .line 422
    :cond_6ef
    return-void

    .line 112
    :array_6f0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 153
    :array_700
    .array-data 4
        0x3
        0x2
        0x9
        0x8
        0x1
        0x7
    .end array-data

    .line 155
    :array_710
    .array-data 4
        0x1
        0x7
        0x6
        0x5
        0x0
        0x4
    .end array-data

    .line 157
    :array_720
    .array-data 4
        0x1
        0x7
        0x6
        0x8
    .end array-data

    .line 159
    :array_72c
    .array-data 4
        0x7
        0x6
        0x5
        0x8
    .end array-data

    .line 170
    :array_738
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

    .line 274
    :array_750
    .array-data 4
        0x1
        0x7
        0x6
        0x5
        0x8
    .end array-data

    .line 294
    :array_75e
    .array-data 4
        0x1
        0x7
        0x8
        0x6
    .end array-data

    .line 307
    :array_76a
    .array-data 4
        0x3
        0x2
        0x9
        0x8
        0x1
        0x7
        0x6
    .end array-data

    .line 313
    :array_77c
    .array-data 4
        0x9
        0x8
        0x1
        0x7
        0x6
        0x5
    .end array-data

    .line 376
    :array_78c
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

    .line 390
    :array_7a0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x9
    .end array-data

    .line 394
    :array_7b2
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x0
        0x1
        0x9
    .end array-data

    .line 402
    :array_7c4
    .array-data 4
        0x8
        0x6
        0x7
    .end array-data

    .line 406
    :array_7ce
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

    .line 543
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    const-string v2, "face"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    move v0, v1

    .line 545
    :goto_c
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->zones:[I

    array-length v2, v2

    if-ge v0, v2, :cond_22

    .line 546
    iget-object v3, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->zones:[I

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->zones:[I

    aget v2, v2, v0

    if-lez v2, :cond_20

    const/16 v2, 0x64

    :goto_1b
    aput v2, v3, v0

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_20
    move v2, v1

    .line 546
    goto :goto_1b

    .line 549
    :cond_22
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog;->ALL:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
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
    .line 554
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

    .line 720
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p1, v0, :cond_1d

    move v0, v1

    .line 721
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

    .line 755
    :cond_1c
    :goto_1c
    :pswitch_1c
    return v3

    :cond_1d
    move v0, v2

    .line 720
    goto :goto_d

    .line 721
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

    .line 727
    :pswitch_107
    if-eqz v0, :cond_10d

    move v0, v3

    :goto_10a
    move v3, v0

    goto/16 :goto_1c

    :cond_10d
    move v0, v4

    goto :goto_10a

    .line 729
    :pswitch_10f
    const/16 v3, 0x438

    goto/16 :goto_1c

    .line 738
    :pswitch_113
    if-nez v0, :cond_1c

    move v3, v4

    goto/16 :goto_1c

    :pswitch_118
    move v3, v5

    .line 740
    goto/16 :goto_1c

    .line 743
    :pswitch_11b
    const/16 v3, 0x438

    goto/16 :goto_1c

    .line 745
    :pswitch_11f
    const/16 v3, 0x30c

    goto/16 :goto_1c

    .line 748
    :pswitch_123
    const/16 v3, 0x2d0

    goto/16 :goto_1c

    :pswitch_127
    move v3, v5

    .line 750
    goto/16 :goto_1c

    :pswitch_12a
    move v3, v4

    .line 753
    goto/16 :goto_1c

    .line 721
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
    .line 659
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

    .line 667
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->femaleOnly:Z

    if-eqz v0, :cond_16

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eq v0, v2, :cond_16

    .line 668
    const-string v0, "\u0421\u0430\u043c\u043e \u0437\u0430 \u0436\u0435\u043d\u0438"

    const-string v1, "Women only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    :goto_15
    return-object v0

    .line 670
    :cond_16
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->maleOnly:Z

    if-eqz v0, :cond_29

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_29

    .line 671
    const-string v0, "\u041c\u044a\u0436\u043a\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v1, "Men\'s program"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 673
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

    .line 674
    const-string v0, "\u041f\u043e\u0434 24 \u0447 \u043e\u0442 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0430\u0442\u0430 \u0430\u043a\u0442\u0438\u0432\u043d\u0430 \u2014 \u0441\u0430\u043c\u043e \u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v1, "Under 24 h since the last active one \u2014 passive only"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 677
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

    .line 678
    const-string v0, "\u0418\u0422\u041c \u043f\u043e\u0434 18.5 \u2014 \u043e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435\u0442\u043e \u043d\u0435 \u0435 \u043f\u043e\u0434\u0445\u043e\u0434\u044f\u0449\u043e"

    const-string v1, "BMI under 18.5 \u2014 weight loss is not suitable"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 681
    :cond_68
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x46

    if-lt v0, v2, :cond_81

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-eq p1, v0, :cond_81

    .line 682
    const-string v0, "\u0421\u043b\u0435\u0434 70 \u0433. \u2014 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438\u0442\u0435 \u0437\u0430 \u0437\u0434\u0440\u0430\u0432\u0435"

    const-string v1, "After 70 \u2014 the health programs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 684
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

    .line 685
    :cond_95
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_a4

    .line 686
    const-string v0, "\u0421\u043b\u0435\u0434 4 \u0441\u0435\u0441\u0438\u0438 (\u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f)"

    const-string v1, "After 4 sessions (adaptation)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 688
    :cond_a4
    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_b4

    .line 689
    const-string v0, "\u0414\u043e 60 \u0433."

    const-string v1, "Under 60"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 691
    :cond_b4
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v2, :cond_ce

    const-string v0, "power"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 692
    const-string v0, "\u041d\u0443\u0436\u043d\u0430 \u0435 \u0441\u0440\u0435\u0434\u043d\u0430 \u043a\u043e\u043d\u0434\u0438\u0446\u0438\u044f"

    const-string v1, "Needs medium fitness"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 695
    :cond_ce
    if-nez p3, :cond_d3

    move-object v0, v1

    .line 696
    goto/16 :goto_15

    .line 698
    :cond_d3
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksFace:Z

    if-eqz v0, :cond_e7

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->injectable:Z

    if-eqz v0, :cond_e7

    .line 699
    const-string v0, "\u0411\u043e\u0442\u043e\u043a\u0441 \u0438\u043b\u0438 \u0444\u0438\u043b\u044a\u0440 \u0434\u043e 2 \u0441\u0435\u0434\u043c\u0438\u0446\u0438 \u2014 \u0434\u043d\u0435\u0441 \u0431\u0435\u0437 \u043b\u0438\u0446\u0435"

    const-string v1, "Botox or filler within 2 weeks \u2014 no face today"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 702
    :cond_e7
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksBack:Z

    if-eqz v0, :cond_fd

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->anyBackRedFlag()Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 703
    const-string v0, "\u0421\u0438\u0433\u043d\u0430\u043b \u0437\u0430 \u0442\u0440\u0435\u0432\u043e\u0433\u0430 \u0437\u0430 \u0433\u044a\u0440\u0431\u0430 \u2014 \u043f\u044a\u0440\u0432\u043e \u043b\u0435\u043a\u0430\u0440"

    const-string v1, "Back red flag \u2014 see a doctor first"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 706
    :cond_fd
    iget-boolean v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksPostpartum:Z

    if-eqz v0, :cond_149

    .line 707
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->cesarean:Z

    if-eqz v0, :cond_147

    const/16 v0, 0xc

    .line 708
    :goto_109
    iget-object v2, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-ge v2, v0, :cond_149

    .line 709
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

    .line 707
    :cond_147
    const/4 v0, 0x6

    goto :goto_109

    :cond_149
    move-object v0, v1

    .line 713
    goto/16 :goto_15
.end method

.method private static varargs ch([I)[I
    .registers 1

    .prologue
    .line 1371
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
    .line 1283
    const-string v2, "COOLDOWN"

    const-string v3, "\u0420\u0430\u0437\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v4, "Cool-down"

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    move-object v1, p0

    move-wide v5, p2

    move v7, p1

    invoke-static/range {v1 .. v11}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v6

    .line 1284
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1285
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1286
    iget-object v7, v6, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v1, 0xfa

    const/16 v2, 0xa

    const/4 v3, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p4

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    return-object v6
.end method

.method static corridor(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)[D
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 1387
    const-string v0, "passive_metabolic"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1388
    new-array v0, v2, [D

    fill-array-data v0, :array_18

    .line 1390
    :goto_10
    return-object v0

    :cond_11
    new-array v0, v2, [D

    fill-array-data v0, :array_24

    goto :goto_10

    .line 1388
    nop

    :array_18
    .array-data 8
        0x3fd0000000000000L    # 0.25
        0x3fdccccccccccccdL    # 0.45
    .end array-data

    .line 1390
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

    .line 534
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Lo:I

    .line 535
    iput p2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->cr10Hi:I

    .line 536
    const-wide v0, 0x3fdccccccccccccdL    # 0.45

    iput-wide v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->xCap:D

    .line 537
    const-string v0, "gentle"

    iput-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->impulse:Ljava/lang/String;

    .line 538
    iput-boolean v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->asksFace:Z

    .line 539
    iput v2, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 540
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
    .line 497
    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;II)V

    .line 498
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

    .line 501
    const-string v2, "COOLDOWN"

    const-string v3, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v4, "Let go"

    const-wide v5, 0x3fb999999999999aL    # 0.1

    move-object v1, p0

    move v7, p1

    move-wide v10, v8

    invoke-static/range {v1 .. v11}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v0

    .line 502
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 503
    iput-wide v8, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 504
    const-string v1, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u043b\u0438\u0446\u0435\u0442\u043e \u2014 \u0441\u0430\u043c\u043e \u043c\u0435\u043a\u0438 \u043a\u0440\u0430\u0442\u043a\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 505
    const-string v1, "Let the face go \u2014 only soft short holds"

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 506
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v1, 0x1e

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/16 v4, 0x1f4

    invoke-static {v1, p2, v2, v3, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method private static faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 489
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/16 v1, 0x1e

    const/16 v2, 0x64

    add-int/lit8 v3, p0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 490
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 491
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 492
    return-object v0
.end method

.method private static faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 5

    .prologue
    .line 456
    const/16 v0, 0x64

    const/16 v1, 0x1f4

    invoke-static {p0, v0, p1, p2, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    return-object v0
.end method

.method private static faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    .line 460
    const/16 v0, 0x14

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 461
    iput p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 462
    iput p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 463
    return-object v0
.end method

.method private static faceStep(IIIII[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 7

    .prologue
    .line 468
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v0

    .line 469
    iput-object p5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 470
    return-object v0
.end method

.method private static faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 475
    const/16 v3, 0xa

    new-array v5, v3, [I

    .line 476
    if-eqz p1, :cond_15

    .line 477
    array-length v4, p1

    move v3, v0

    :goto_c
    if-ge v3, v4, :cond_15

    aget v6, p1, v3

    .line 478
    aput v1, v5, v6

    .line 477
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 481
    :cond_15
    array-length v3, p0

    :goto_16
    if-ge v0, v3, :cond_1f

    aget v4, p0, v0

    .line 482
    aput v1, v5, v4

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 484
    :cond_1f
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

    .line 1295
    .line 1296
    const/4 v1, 0x0

    .line 1297
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

    .line 1298
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-nez v5, :cond_62

    .line 1299
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v1, v2

    move v2, v1

    :goto_1d
    move-object v1, v0

    .line 1302
    goto :goto_7

    .line 1304
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

    .line 1305
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1306
    const/16 v5, 0x258

    iput v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    move v0, v4

    :goto_3b
    move v4, v0

    .line 1311
    goto :goto_24

    .line 1308
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

    .line 1309
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v0, v4

    goto :goto_3b

    :cond_51
    move v5, v3

    .line 1308
    goto :goto_4b

    .line 1312
    :cond_53
    if-eqz v1, :cond_61

    .line 1313
    const/16 v0, 0x1e

    iget v2, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 1315
    :cond_61
    return-void

    :cond_62
    move-object v0, v1

    goto :goto_1d
.end method

.method public static get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 4

    .prologue
    .line 558
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

    .line 559
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 563
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static goalOf(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Lcom/isaigu/gymapp/ai/AutoModel$Goal;
    .registers 3

    .prologue
    .line 639
    if-nez p0, :cond_5

    .line 640
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    .line 646
    :goto_4
    return-object v0

    .line 642
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog$1;->$SwitchMap$com$isaigu$gymapp$ai$AiModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 646
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 643
    :pswitch_13
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 645
    :pswitch_16
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    goto :goto_4

    .line 642
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
    .line 1376
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

    .line 1377
    :cond_1e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    .line 1382
    :goto_20
    return-object v0

    .line 1379
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

    .line 1380
    :cond_43
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$HrUse;->CORRIDOR:Lcom/isaigu/gymapp/ai/AutoModel$HrUse;

    goto :goto_20

    .line 1382
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
    .line 651
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
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1254
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v4, [I

    const/4 v2, 0x3

    aput v2, v1, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    invoke-static {v6, p2, v1, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v5, [I

    fill-array-data v1, :array_6a

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    invoke-static {p1, p2, v1, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v4, [I

    aput v6, v1, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    new-array v2, v5, [I

    fill-array-data v2, :array_72

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    new-array v1, v5, [I

    fill-array-data v1, :array_7a

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v1

    new-array v2, v4, [I

    aput v6, v2, v3

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1258
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    return-void

    .line 1255
    nop

    :array_6a
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 1256
    :array_72
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 1257
    :array_7a
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

    .line 569
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoCatalog$1;->$SwitchMap$com$isaigu$gymapp$ai$AutoModel$Goal:[I

    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_100

    .line 584
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_e1

    .line 585
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "back_active"

    aput-object v2, v0, v1

    const-string v2, "senior"

    aput-object v2, v0, v3

    const-string v2, "antiage"

    aput-object v2, v0, v4

    .line 589
    :goto_22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 590
    array-length v3, v0

    :goto_28
    if-ge v1, v3, :cond_ff

    aget-object v4, v0, v1

    .line 591
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 572
    :pswitch_36
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_5c

    .line 573
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

    .line 574
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

    .line 578
    :pswitch_96
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_b8

    .line 579
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

    .line 580
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

    .line 586
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

    .line 593
    :cond_ff
    return-object v2

    .line 569
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
    .line 601
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    .line 602
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    .line 603
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 604
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

    .line 605
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->passiveOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_15

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 608
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 611
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

    .line 612
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 613
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 616
    :cond_5a
    return-object v2
.end method

.method static onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I
    .registers 6

    .prologue
    const/4 v2, 0x2

    .line 761
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->LOW:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_d

    .line 762
    new-array v0, v2, [I

    fill-array-data v0, :array_22

    .line 767
    :goto_c
    return-object v0

    .line 764
    :cond_d
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v0, v1, :cond_19

    .line 765
    new-array v0, v2, [I

    fill-array-data v0, :array_2a

    goto :goto_c

    .line 767
    :cond_19
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    goto :goto_c

    .line 762
    :array_22
    .array-data 4
        0x4
        0x6
    .end array-data

    .line 765
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
    .line 1336
    iput p1, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseHz:I

    .line 1337
    iput-wide p2, p0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pauseSigma:D

    .line 1338
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
    .line 1269
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;-><init>()V

    .line 1270
    iput-object p1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    .line 1271
    iput-object p2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    .line 1272
    iput-object p3, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    .line 1273
    int-to-double v2, p6

    mul-double/2addr v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    .line 1274
    iput-wide p7, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiStart:D

    .line 1275
    iput-wide p9, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->phiEnd:D

    .line 1276
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1277
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1278
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1279
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
    .line 771
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 772
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_c9

    const/4 v2, 0x1

    .line 773
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_12c8

    :cond_18
    :goto_18
    packed-switch v4, :pswitch_data_1346

    .line 1226
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1227
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1228
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1229
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    const-string v4, "MAIN"

    const-string v5, "\u041c\u0430\u0441\u0430\u0436"

    const-string v6, "Massage"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1231
    iget-object v10, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x8

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x2

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1237
    :goto_95
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->fixDurations(Ljava/util/List;I)V

    .line 1238
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v2

    if-nez v2, :cond_ac

    const-string v2, "drain"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12c7

    .line 1239
    :cond_ac
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b0
    :goto_b0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 1240
    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 1241
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->recoveryS(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)I

    move-result v5

    iput v5, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    goto :goto_b0

    .line 772
    :cond_c9
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 773
    :sswitch_cc
    const-string v6, "general"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x0

    goto/16 :goto_18

    :sswitch_d7
    const-string v6, "glutes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x1

    goto/16 :goto_18

    :sswitch_e2
    const-string v6, "mass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x2

    goto/16 :goto_18

    :sswitch_ed
    const-string v6, "upper"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x3

    goto/16 :goto_18

    :sswitch_f8
    const-string v6, "core"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x4

    goto/16 :goto_18

    :sswitch_103
    const-string v6, "power"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x5

    goto/16 :goto_18

    :sswitch_10e
    const-string v6, "cardio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x6

    goto/16 :goto_18

    :sswitch_119
    const-string v6, "back_active"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v4, 0x7

    goto/16 :goto_18

    :sswitch_124
    const-string v6, "senior"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x8

    goto/16 :goto_18

    :sswitch_130
    const-string v6, "general_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x9

    goto/16 :goto_18

    :sswitch_13c
    const-string v6, "upper_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xa

    goto/16 :goto_18

    :sswitch_148
    const-string v6, "core_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xb

    goto/16 :goto_18

    :sswitch_154
    const-string v6, "glutes_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xc

    goto/16 :goto_18

    :sswitch_160
    const-string v6, "mass_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xd

    goto/16 :goto_18

    :sswitch_16c
    const-string v6, "power_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xe

    goto/16 :goto_18

    :sswitch_178
    const-string v6, "senior_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0xf

    goto/16 :goto_18

    :sswitch_184
    const-string v6, "cellulite"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x10

    goto/16 :goto_18

    :sswitch_190
    const-string v6, "drain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x11

    goto/16 :goto_18

    :sswitch_19c
    const-string v6, "passive_metabolic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x12

    goto/16 :goto_18

    :sswitch_1a8
    const-string v6, "back_pain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x13

    goto/16 :goto_18

    :sswitch_1b4
    const-string v6, "postpartum"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x14

    goto/16 :goto_18

    :sswitch_1c0
    const-string v6, "face"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x15

    goto/16 :goto_18

    :sswitch_1cc
    const-string v6, "face_tone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x16

    goto/16 :goto_18

    :sswitch_1d8
    const-string v6, "face_oval"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x17

    goto/16 :goto_18

    :sswitch_1e4
    const-string v6, "face_drain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x18

    goto/16 :goto_18

    :sswitch_1f0
    const-string v6, "face_relax"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x19

    goto/16 :goto_18

    :sswitch_1fc
    const-string v6, "face_calm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x1a

    goto/16 :goto_18

    :sswitch_208
    const-string v6, "face_jaw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x1b

    goto/16 :goto_18

    :sswitch_214
    const-string v6, "face_chin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x1c

    goto/16 :goto_18

    :sswitch_220
    const-string v6, "antiage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x1d

    goto/16 :goto_18

    :sswitch_22c
    const-string v6, "antiage_passive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v4, 0x1e

    goto/16 :goto_18

    .line 779
    :pswitch_238
    const-string v4, "glutes"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25c

    const-string v4, "mass"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25c

    const-string v4, "upper"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_354

    .line 780
    :cond_25c
    const/4 v4, 0x5

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v4

    move-object v14, v4

    .line 783
    :goto_265
    const-string v4, "mass"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35f

    .line 784
    const-string v5, "\u041a\u043b\u0435\u043a, \u043b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435, \u043f\u0440\u0435\u0441\u0430 \u2014 \u0431\u0430\u0432\u043d\u043e \u0438 \u0442\u0435\u0436\u043a\u043e"

    .line 785
    const-string v4, "Squat, push-ups, rows, press \u2014 slow and heavy"

    move-object v15, v4

    move-object/from16 v16, v5

    .line 799
    :goto_278
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    if-eqz v2, :cond_3a7

    const-wide v7, 0x3fb999999999999aL    # 0.1

    :goto_285
    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 800
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 801
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 802
    const-string v5, "\u041a\u043b\u0435\u043a, \u0445\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 803
    const-string v5, "Squat, marching"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 804
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    if-eqz v2, :cond_3ae

    const-wide v7, 0x3fdccccccccccccdL    # 0.45

    :goto_2c3
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v5

    .line 806
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 807
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 808
    move-object/from16 v0, v16

    iput-object v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 809
    iput-object v15, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 810
    const/16 v4, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x0

    aget v7, v14, v7

    const/4 v8, 0x1

    aget v8, v14, v8

    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 811
    iget-object v5, v5, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v2, :cond_2f9

    const/4 v6, 0x6

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v4, v6, v8, v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    :cond_2f9
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    if-eqz v2, :cond_347

    .line 813
    const-string v4, "METABOLIC"

    const-string v5, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435 \u043d\u0430 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v6, "Fat burning"

    const-wide v7, 0x3fd6666666666666L    # 0.35

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 814
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 815
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435, \u0441\u0442\u0435\u043f, \u043b\u0435\u043a\u0438 \u043a\u043b\u0435\u043a\u043e\u0432\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 816
    const-string v4, "Walking, step, light squats"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 817
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_347
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 780
    :cond_354
    const/4 v4, 0x4

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v4

    move-object v14, v4

    goto/16 :goto_265

    .line 786
    :cond_35f
    const-string v4, "upper"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_374

    .line 787
    const-string v5, "\u041b\u0438\u0446\u0435\u0432\u0438 \u043e\u043f\u043e\u0440\u0438, \u0433\u0440\u0435\u0431\u0430\u043d\u0435, \u043f\u0440\u0435\u0441\u0430, \u0431\u0438\u0446\u0435\u043f\u0441, \u0442\u0440\u0438\u0446\u0435\u043f\u0441"

    .line 788
    const-string v4, "Push-ups, rows, press, biceps, triceps"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_278

    .line 789
    :cond_374
    const-string v4, "glutes"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_389

    .line 790
    const-string v5, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0433\u043b\u0443\u0442\u0435\u0443\u0441 \u043c\u043e\u0441\u0442, \u0430\u0431\u0434\u0443\u043a\u0446\u0438\u044f"

    .line 791
    const-string v4, "Squat, lunge, glute bridge, abduction"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_278

    .line 792
    :cond_389
    const-string v4, "core"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39e

    .line 793
    const-string v5, "\u041f\u043b\u0430\u043d\u043a, \u043a\u0440\u044a\u043d\u0447, \u0440\u043e\u0442\u0430\u0446\u0438\u0438, \u201e\u043c\u044a\u0440\u0442\u0432\u0430 \u0431\u0443\u0431\u043e\u043b\u0435\u0447\u043a\u0430\u201c"

    .line 794
    const-string v4, "Plank, crunch, rotations, dead bug"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_278

    .line 796
    :cond_39e
    const-string v5, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u043b\u0438\u0446\u0435\u0432\u0438 \u043e\u0442 \u043a\u043e\u043b\u0435\u043d\u0435, \u0433\u0440\u0435\u0431\u0430\u043d\u0435"

    .line 797
    const-string v4, "Squat, lunge, knee push-ups, rows"

    move-object v15, v4

    move-object/from16 v16, v5

    goto/16 :goto_278

    .line 799
    :cond_3a7
    const-wide v7, 0x3fc3333333333333L    # 0.15

    goto/16 :goto_285

    .line 805
    :cond_3ae
    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    goto/16 :goto_2c3

    .line 824
    :pswitch_3b2
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc999999999999aL    # 0.2

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
    const-string v4, "MAIN"

    const-string v5, "\u0412\u0437\u0440\u0438\u0432\u043d\u0430 \u0441\u0438\u043b\u0430"

    const-string v6, "Explosive power"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 829
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 830
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 831
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onMinus:I

    .line 832
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->onPlus:I

    .line 833
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x1

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 834
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x3

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offPlus:I

    .line 835
    const-string v4, "\u0412\u0437\u0440\u0438\u0432\u0435\u043d \u043a\u043b\u0435\u043a / \u0441\u043a\u043e\u043a / \u0445\u0432\u044a\u0440\u043b\u044f\u043d\u0435 \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 836
    const-string v4, "Explosive squat / jump / throw at your own pace"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 837
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x64

    const/16 v5, 0x12c

    const/4 v6, 0x3

    const/16 v7, 0x9

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 842
    :pswitch_444
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 843
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 844
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 845
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    const-string v4, "METABOLIC"

    const-string v5, "\u0418\u0437\u0433\u0430\u0440\u044f\u043d\u0435 \u043d\u0430 \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v6, "Fat burning"

    const-wide v7, 0x3fe999999999999aL    # 0.8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 847
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 848
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 849
    const-string v4, "\u0421\u0442\u0435\u043f, \u0445\u043e\u0434\u0435\u043d\u0435, \u043a\u043b\u0435\u043a\u043e\u0432\u0435 \u2014 \u0431\u0435\u0437 \u0441\u043f\u0438\u0440\u0430\u043d\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 850
    const-string v4, "Step, walking, squats \u2014 keep moving"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 851
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x55

    const/16 v6, 0x15e

    const/4 v7, 0x4

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 857
    :pswitch_4d8
    const/4 v2, 0x6

    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v2

    .line 858
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 859
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 860
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 861
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u043d\u043e\u0441\u0442"

    const-string v6, "Stability"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 863
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 864
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 865
    const-string v5, "\u041f\u0442\u0438\u0446\u0430-\u043a\u0443\u0447\u0435, \u043c\u043e\u0441\u0442, \u043f\u043b\u0430\u043d\u043a, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u2014 \u0431\u0435\u0437 \u0443\u0441\u0443\u043a\u0432\u0430\u043d\u0435 \u043f\u043e\u0434 \u0442\u043e\u0432\u0430\u0440"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 866
    const-string v5, "Bird-dog, bridge, plank, rows \u2014 no loaded twisting"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 867
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

    .line 868
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x4

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 884
    :pswitch_564
    const/4 v2, 0x4

    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->onOff(Lcom/isaigu/gymapp/ai/AutoModel$Input;II)[I

    move-result-object v2

    .line 885
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->HIGH:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-ne v4, v5, :cond_57a

    .line 886
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1388

    .line 888
    :cond_57a
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fbeb851eb851eb8L    # 0.12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 889
    const-string v5, "\u0425\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e, \u043a\u0440\u044a\u0433\u043e\u0432\u0435 \u0441 \u0440\u0430\u043c\u0435\u043d\u0435\u0442\u0435"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 890
    const-string v5, "Marching, shoulder circles"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 891
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0438\u043b\u0430"

    const-string v6, "Strength"

    const-wide v7, 0x3fd851eb851eb852L    # 0.38

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 893
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 894
    const-string v5, "\u0421\u0442\u0430\u0432\u0430\u043d\u0435 \u043e\u0442 \u0441\u0442\u043e\u043b, \u0433\u0440\u0435\u0431\u0430\u043d\u0435 \u0441 \u043b\u0430\u0441\u0442\u0438\u043a, \u043c\u043e\u0441\u0442 \u2014 \u0431\u0430\u0432\u043d\u043e \u0438 \u0441 \u043a\u043e\u043d\u0442\u0440\u043e\u043b"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 895
    const-string v5, "Sit-to-stand, band rows, bridge \u2014 slow and controlled"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 896
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

    .line 897
    const-string v4, "SPEED"

    const-string v5, "\u0420\u0435\u0430\u043a\u0446\u0438\u044f \u0438 \u0431\u0430\u043b\u0430\u043d\u0441"

    const-string v6, "Reaction & balance"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 898
    const-string v4, "\u0421 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u2014 \u0431\u044a\u0440\u0437\u0430 \u043a\u0440\u0430\u0447\u043a\u0430 \u043d\u0430\u043f\u0440\u0435\u0434 \u0438\u043b\u0438 \u0432\u0441\u0442\u0440\u0430\u043d\u0438 \u0438 \u0437\u0430\u0434\u0440\u044a\u0436 \u0440\u0430\u0432\u043d\u043e\u0432\u0435\u0441\u0438\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 899
    const-string v4, "With the impulse \u2014 a quick step forward or sideways, then hold your balance"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 900
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x46

    const/16 v5, 0x12c

    const/4 v6, 0x2

    const/4 v7, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    const-string v4, "BONE"

    const-string v5, "\u0417\u0434\u0440\u0430\u0432\u0438 \u043a\u043e\u0441\u0442\u0438"

    const-string v6, "Strong bones"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 902
    const-string v4, "\u0421 \u0438\u043c\u043f\u0443\u043b\u0441\u0430 \u2014 \u043f\u043e\u0432\u0434\u0438\u0433\u043d\u0438 \u0441\u0435 \u043d\u0430 \u043f\u0440\u044a\u0441\u0442\u0438 \u0438 \u043e\u0442\u043f\u0443\u0441\u043d\u0438 \u043f\u0435\u0442\u0438\u0442\u0435 \u043d\u0430 \u043f\u043e\u0434\u0430 (\u043f\u0440\u0438 \u043e\u0441\u0442\u0435\u043e\u043f\u043e\u0440\u043e\u0437\u0430 \u2014 \u043f\u043b\u0430\u0432\u043d\u043e)"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 903
    const-string v4, "With the impulse \u2014 rise on the toes and let the heels down (with osteoporosis \u2014 gently)"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 904
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x3

    const/4 v7, 0x5

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    const-string v4, "SUGAR"

    const-string v5, "\u041a\u0440\u044a\u0432\u043d\u0430 \u0437\u0430\u0445\u0430\u0440"

    const-string v6, "Blood sugar"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 906
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e \u0432 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u0442\u0435\u043c\u043f\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 907
    const-string v4, "Marching at an easy pace"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 908
    const/16 v4, 0xf

    const/16 v5, 0x12c

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 909
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoCatalog;->LOWER:[I

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 910
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 911
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x5

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 920
    :pswitch_678
    const-string v2, "core_passive"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 921
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 922
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    const-string v4, "MAIN"

    if-eqz v14, :cond_722

    const-string v5, "\u0414\u044a\u043b\u0431\u043e\u043a\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    :goto_6ae
    if-eqz v14, :cond_725

    const-string v6, "Deep muscles"

    :goto_6b2
    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 924
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v2

    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 925
    if-eqz v14, :cond_728

    const-string v2, "\u041b\u0435\u0433\u043d\u0438 \u043f\u043e \u0433\u0440\u044a\u0431, \u043a\u043e\u043b\u0435\u043d\u0435\u0442\u0435 \u0441\u0432\u0438\u0442\u0438 \u2014 \u0441\u0430\u043c\u043e \u0434\u0438\u0448\u0430\u0439 \u0441 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    .line 926
    :goto_6cb
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 927
    if-eqz v14, :cond_72b

    const-string v2, "Lie on your back, knees bent \u2014 just breathe with the impulse"

    .line 928
    :goto_6d1
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 929
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x50

    if-eqz v14, :cond_72e

    const/16 v2, 0x12c

    :goto_6db
    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v5, v2, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    const/4 v5, 0x6

    const-wide v6, 0x3fd999999999999aL    # 0.4

    invoke-static {v2, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->pause(Lcom/isaigu/gymapp/ai/AutoModel$Step;ID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    const-string v4, "FLOW"

    const-string v5, "\u041a\u0440\u044a\u0432\u043e\u043e\u0431\u0440\u0430\u0449\u0435\u043d\u0438\u0435"

    const-string v6, "Circulation"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 931
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 932
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 923
    :cond_722
    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    goto :goto_6ae

    :cond_725
    const-string v6, "Tone"

    goto :goto_6b2

    .line 926
    :cond_728
    const-string v2, "\u041b\u0435\u0433\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e \u2014 \u043c\u0443\u0441\u043a\u0443\u043b\u0438\u0442\u0435 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0441\u0430\u043c\u0438, \u043d\u0435 \u0441\u0435 \u0441\u044a\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u044f\u0432\u0430\u0439"

    goto :goto_6cb

    .line 928
    :cond_72b
    const-string v2, "Lie comfortably \u2014 the muscles work by themselves, do not resist"

    goto :goto_6d1

    .line 929
    :cond_72e
    const/16 v2, 0x15e

    goto :goto_6db

    .line 937
    :pswitch_731
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 938
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    const-string v4, "MAIN"

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    const-string v6, "Tone"

    const-wide v7, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 940
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 941
    const-string v4, "\u041b\u0435\u0433\u043d\u0438 \u043f\u043e \u043a\u043e\u0440\u0435\u043c \u2014 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435\u0442\u043e \u0438 \u0431\u0435\u0434\u0440\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0441\u0430\u043c\u0438"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 942
    const-string v4, "Lie face down \u2014 the glutes and thighs work by themselves"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 943
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

    .line 944
    const-string v4, "WAVE"

    const-string v5, "\u041b\u0438\u043c\u0444\u0435\u043d \u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v6, "Lymphatic drainage"

    const-wide v7, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 945
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 946
    const/16 v4, 0x23

    const/16 v5, 0x12c

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 947
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 953
    :pswitch_7c0
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 954
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    const-string v4, "MAIN"

    const-string v5, "\u0414\u044a\u043b\u0433\u0438 \u0441\u0442\u044f\u0433\u0430\u043d\u0438\u044f"

    const-string v6, "Long holds"

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 956
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 957
    const-string v4, "\u041b\u0435\u0433\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e \u0438 \u0434\u0438\u0448\u0430\u0439 \u0441\u043f\u043e\u043a\u043e\u0439\u043d\u043e \u2014 \u0441\u0442\u044f\u0433\u0430\u043d\u0435\u0442\u043e \u0435 \u0441\u0438\u043b\u043d\u043e \u0438 \u0434\u044a\u043b\u0431\u043e\u043a\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 958
    const-string v4, "Lie comfortably \u2014 a strong, deep hold; breathe calmly"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 959
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x4b

    const/16 v5, 0x190

    const/4 v6, 0x4

    const/16 v7, 0xa

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    const-string v4, "FLOW"

    const-string v5, "\u041a\u0440\u044a\u0432\u043e\u043e\u0431\u0440\u0430\u0449\u0435\u043d\u0438\u0435"

    const-string v6, "Circulation"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 961
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 967
    :pswitch_849
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 968
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    const-string v4, "MAIN"

    const-string v5, "\u0412\u0437\u0440\u0438\u0432\u043d\u0438 \u0438\u043c\u043f\u0443\u043b\u0441\u0438"

    const-string v6, "Explosive bursts"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 970
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 971
    const-string v4, "\u041b\u0435\u0433\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e \u2014 \u043a\u0440\u0430\u0442\u044a\u043a \u0441\u0438\u043b\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441, \u043f\u043e\u0441\u043b\u0435 \u0434\u044a\u043b\u0433\u0430 \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 972
    const-string v4, "Lie comfortably \u2014 a short strong burst, a long rest"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 973
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x64

    const/16 v5, 0x12c

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    const-string v4, "FLOW"

    const-string v5, "\u041a\u0440\u044a\u0432\u043e\u043e\u0431\u0440\u0430\u0449\u0435\u043d\u0438\u0435"

    const-string v6, "Circulation"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 975
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 984
    :pswitch_8d5
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fbeb851eb851eb8L    # 0.12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 985
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0438\u043b\u0430 \u0438 \u0441\u0442\u0430\u0431\u0438\u043b\u043d\u043e\u0441\u0442 \u043d\u0430 \u043a\u0440\u0430\u043a\u0430\u0442\u0430"

    const-string v6, "Leg strength & stability"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 987
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 988
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e, \u0441\u0442\u044a\u043f\u0430\u043b\u0430\u0442\u0430 \u043d\u0430 \u043f\u043e\u0434\u0430 \u2014 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0441\u0430\u043c\u0438"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 989
    const-string v4, "Sit comfortably, feet on the floor \u2014 the legs work by themselves"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 990
    const/16 v4, 0x32

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 991
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoCatalog;->LOWER:[I

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 992
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    const-string v4, "POSTURE"

    const-string v5, "\u0418\u0437\u043f\u0440\u0430\u0432\u0435\u043d\u0430 \u0441\u0442\u043e\u0439\u043a\u0430"

    const-string v6, "Upright posture"

    const-wide v7, 0x3fcd70a3d70a3d71L    # 0.23

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 994
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d, \u0440\u0430\u043c\u0435\u043d\u0435\u0442\u0435 \u043d\u0430\u0437\u0430\u0434 \u0438 \u043d\u0430\u0434\u043e\u043b\u0443"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 995
    const-string v4, "Sit up, shoulders back and down"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 996
    const/16 v4, 0x32

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 997
    sget-object v5, Lcom/isaigu/gymapp/ai/AutoCatalog;->POSTURE:[I

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 998
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    const-string v4, "SUGAR"

    const-string v5, "\u041a\u0440\u044a\u0432\u043d\u0430 \u0437\u0430\u0445\u0430\u0440"

    const-string v6, "Blood sugar"

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1000
    const-string v4, "\u041e\u0442\u043f\u0443\u0441\u043d\u0438 \u0441\u0435 \u2014 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0440\u0438\u0442\u043c\u0438\u0447\u043d\u043e; \u043d\u0430\u0439-\u0434\u043e\u0431\u0440\u0435 30\u201360 \u043c\u0438\u043d \u0441\u043b\u0435\u0434 \u0445\u0440\u0430\u043d\u0435\u043d\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1001
    const-string v4, "Relax \u2014 the legs twitch in a rhythm; best 30\u201360 min after a meal"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1002
    const/4 v4, 0x5

    const/16 v5, 0x12c

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    .line 1003
    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_1390

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->only([I)[I

    move-result-object v5

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 1004
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1009
    :pswitch_9af
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1010
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    const-string v4, "MAIN"

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    const-string v6, "Tone"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1012
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 1013
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

    .line 1014
    const-string v4, "WAVE"

    const-string v5, "\u041b\u0438\u043c\u0444\u0435\u043d \u0434\u0440\u0435\u043d\u0430\u0436"

    const-string v6, "Lymphatic drainage"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1015
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1016
    const/16 v4, 0x23

    const/16 v5, 0x12c

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 1017
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1022
    :pswitch_a45
    const/16 v2, 0x23

    .line 1023
    const-string v4, "OPEN"

    const-string v5, "\u041e\u0442\u0432\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Opening"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1024
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1025
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_139c

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
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

    fill-array-data v8, :array_13a4

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    const-string v4, "CLEAR"

    const-string v5, "\u041e\u0441\u0432\u043e\u0431\u043e\u0436\u0434\u0430\u0432\u0430\u043d\u0435"

    const-string v6, "Clearing"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1030
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1031
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_13ac

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1032
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0x8

    aput v9, v7, v8

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_13b4

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_13bc

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0x8

    aput v10, v8, v9

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x3

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    const-string v4, "LEGS"

    const-string v5, "\u041a\u0440\u0430\u043a\u0430"

    const-string v6, "Legs"

    const-wide v7, 0x3fe4cccccccccccdL    # 0.65

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1036
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1037
    const/16 v5, 0x12c

    invoke-static {v4, v2, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->legWave(Lcom/isaigu/gymapp/ai/AutoModel$Phase;II)V

    .line 1038
    const-string v4, "ARMS"

    const-string v5, "\u0420\u044a\u0446\u0435 \u0438 \u0433\u0440\u044a\u0431"

    const-string v6, "Arms and back"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1039
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1040
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

    .line 1041
    iget-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v6, 0x12c

    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_13c4

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

    .line 1042
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

    fill-array-data v8, :array_13cc

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->ch([I)[I

    move-result-object v8

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    iget-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1048
    :pswitch_bd4
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb47ae147ae147bL    # 0.08

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1049
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
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

    .line 1051
    const/4 v2, 0x4

    new-array v15, v2, [D

    fill-array-data v15, :array_13d4

    .line 1052
    const/4 v2, 0x0

    :goto_c1e
    array-length v4, v14

    if-ge v2, v4, :cond_c8e

    .line 1053
    const-string v4, "TONE"

    aget-object v5, v14, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1054
    if-nez v2, :cond_c59

    const-string v4, "MAIN"

    .line 1055
    :goto_c2d
    if-eqz v16, :cond_c6f

    const-string v5, "\u0422\u043e\u043d\u0443\u0441"

    :goto_c31
    if-eqz v16, :cond_c72

    const-string v6, "Tone"

    :goto_c35
    aget-wide v7, v15, v2

    .line 1056
    if-eqz v16, :cond_c75

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    :goto_c3b
    if-eqz v16, :cond_c7b

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    :goto_c3f
    move/from16 v9, p3

    .line 1054
    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1057
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v16, :cond_c81

    const/16 v4, 0x55

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    :goto_c53
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    add-int/lit8 v2, v2, 0x1

    goto :goto_c1e

    .line 1054
    :cond_c59
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

    goto :goto_c2d

    .line 1055
    :cond_c6f
    const-string v5, "6 Hz"

    goto :goto_c31

    :cond_c72
    const-string v6, "6 Hz"

    goto :goto_c35

    .line 1056
    :cond_c75
    const-wide v10, 0x3fe6666666666666L    # 0.7

    goto :goto_c3b

    :cond_c7b
    const-wide v12, 0x3fe6666666666666L    # 0.7

    goto :goto_c3f

    .line 1057
    :cond_c81
    const/4 v4, 0x6

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    goto :goto_c53

    .line 1059
    :cond_c8e
    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1063
    :pswitch_c9b
    const-string v4, "RELAX"

    const-string v5, "\u041e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v6, "Relax"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1064
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x4

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1065
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0430\u0431\u0438\u043b\u0438\u0437\u0430\u0446\u0438\u044f"

    const-string v6, "Stabilise"

    const-wide v7, 0x3fe199999999999aL    # 0.55

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1066
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 1067
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    const/4 v5, 0x0

    iput v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Window;->offMinus:I

    .line 1068
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x50

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    const-string v4, "RELIEF"

    const-string v5, "\u041e\u0431\u043b\u0435\u043a\u0447\u0430\u0432\u0430\u043d\u0435 \u043d\u0430 \u0431\u043e\u043b\u043a\u0430\u0442\u0430"

    const-string v6, "Pain relief"

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1070
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x2

    const/16 v5, 0xc8

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x2

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1075
    :pswitch_d33
    move-object/from16 v0, p2

    iget v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sessions:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_dd1

    const/16 v2, 0x32

    .line 1076
    :goto_d3c
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

    .line 1077
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1078
    iget-object v10, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    const-string v4, "MAIN"

    const-string v5, "\u0422\u0430\u0437\u043e\u0432\u043e \u0434\u044a\u043d\u043e"

    const-string v6, "Pelvic floor"

    const-wide v7, 0x3fe6666666666666L    # 0.7

    const-wide v10, 0x3fe3333333333333L    # 0.6

    move/from16 v9, p3

    move-wide v12, v14

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1080
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1081
    iput-wide v14, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1082
    const-string v5, "\u0421\u0442\u044f\u0433\u0430\u0439 \u0442\u0430\u0437\u043e\u0432\u043e\u0442\u043e \u0434\u044a\u043d\u043e \u0437\u0430\u0435\u0434\u043d\u043e \u0441 \u0438\u043c\u043f\u0443\u043b\u0441\u0430, \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1083
    const-string v5, "Lift the pelvic floor at your own pace"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1084
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

    .line 1085
    const-wide v4, 0x3fc3333333333333L    # 0.15

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1075
    :cond_dd1
    const/16 v2, 0x28

    goto/16 :goto_d3c

    .line 1091
    :pswitch_dd5
    const-string v2, "face"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1092
    if-eqz v14, :cond_e65

    const/16 v2, 0x46

    .line 1093
    :goto_de3
    const-string v4, "WARMUP"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v6, "Wake-up"

    const-wide v7, 0x3fbc28f5c28f5c29L    # 0.11

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1094
    const-wide v6, 0x3fe3333333333333L    # 0.6

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1095
    const-wide v6, 0x3fe999999999999aL    # 0.8

    iput-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1096
    const-string v5, "\u0421\u0435\u0434\u043d\u0438 \u0443\u0434\u043e\u0431\u043d\u043e, \u043b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u044a\u0433\u043b\u0438\u0442\u0435 \u043d\u0430 \u0443\u0441\u0442\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430\u0442 \u043b\u0435\u043a\u043e \u043d\u0430\u0433\u043e\u0440\u0435"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1097
    const-string v5, "Sit comfortably, face relaxed \u2014 the mouth corners start to lift"

    iput-object v5, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1098
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    const/16 v6, 0x8

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    const-string v4, "MAIN"

    if-eqz v14, :cond_e69

    const-string v5, "\u041b\u0438\u0444\u0442\u0438\u043d\u0433"

    :goto_e26
    if-eqz v14, :cond_e6c

    const-string v6, "Lift"

    :goto_e2a
    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    .line 1100
    if-eqz v14, :cond_e6f

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    :goto_e36
    if-eqz v14, :cond_e75

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    :goto_e3d
    move/from16 v9, p3

    .line 1099
    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v4

    .line 1101
    if-eqz v14, :cond_e7b

    const-string v2, "\u041b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e \u2014 \u0431\u0443\u0437\u0438\u0442\u0435 \u0441\u0435 \u043f\u043e\u0432\u0434\u0438\u0433\u0430\u0442 \u0441\u0430\u043c\u0438; \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430, \u0431\u0435\u0437 \u043c\u0438\u0433\u0430\u043d\u0435"

    .line 1102
    :goto_e47
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1103
    if-eqz v14, :cond_e7e

    const-string v2, "Face relaxed \u2014 the cheeks lift by themselves; no pain, no blinking"

    .line 1104
    :goto_e4d
    iput-object v2, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1105
    iget-object v4, v4, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    if-eqz v14, :cond_e81

    const/16 v2, 0x46

    const/4 v5, 0x3

    const/4 v6, 0x6

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    :goto_e5b
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 1092
    :cond_e65
    const/16 v2, 0x23

    goto/16 :goto_de3

    .line 1099
    :cond_e69
    const-string v5, "\u0422\u043e\u043d\u0443\u0441 \u0438 \u0441\u0442\u0435\u0433\u043d\u0430\u0442\u043e\u0441\u0442"

    goto :goto_e26

    :cond_e6c
    const-string v6, "Tone & firmness"

    goto :goto_e2a

    .line 1100
    :cond_e6f
    const-wide v10, 0x3fe999999999999aL    # 0.8

    goto :goto_e36

    :cond_e75
    const-wide v12, 0x3fe999999999999aL    # 0.8

    goto :goto_e3d

    .line 1102
    :cond_e7b
    const-string v2, "\u041c\u0435\u043a\u043e, \u0440\u0430\u0432\u043d\u043e\u043c\u0435\u0440\u043d\u043e \u0441\u0442\u044f\u0433\u0430\u043d\u0435 \u2014 \u0443\u0441\u0435\u0449\u0430 \u0441\u0435, \u043d\u0435 \u0431\u043e\u043b\u0438"

    goto :goto_e47

    .line 1104
    :cond_e7e
    const-string v2, "A soft, even hold \u2014 felt, never painful"

    goto :goto_e4d

    .line 1105
    :cond_e81
    const/16 v2, 0x23

    const/4 v5, 0x4

    const/4 v6, 0x5

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(III)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    goto :goto_e5b

    .line 1111
    :pswitch_e8a
    const-string v4, "WARMUP"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v6, "Wake-up"

    const-wide v7, 0x3fbc28f5c28f5c29L    # 0.11

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1112
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1113
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1114
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d, \u043b\u0438\u0446\u0435\u0442\u043e \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1115
    const-string v4, "Sit up, face relaxed"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1116
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

    .line 1117
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

    .line 1118
    const-string v4, "MAIN"

    const-string v5, "\u0421\u043a\u0443\u043b\u0438 \u0438 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430"

    const-string v6, "Cheekbones and chin"

    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1119
    const-string v4, "\u0411\u0443\u0437\u0438\u0442\u0435, \u043f\u043e\u0441\u043b\u0435 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u2014 \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430, \u0431\u0435\u0437 \u0431\u043e\u043b\u043a\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1120
    const-string v4, "The cheeks, then the chin \u2014 no food or drink, no pain"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1121
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

    .line 1122
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

    .line 1123
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 1128
    :pswitch_f4d
    const-string v4, "OPEN"

    const-string v5, "\u041e\u0442\u0432\u0430\u0440\u044f\u043d\u0435"

    const-string v6, "Opening"

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1129
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1130
    const-string v4, "\u0413\u043b\u0430\u0432\u0430\u0442\u0430 \u043b\u0435\u043a\u043e \u043d\u0430\u0437\u0430\u0434 \u2014 \u043f\u044a\u0440\u0432\u043e \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u043f\u044a\u0442\u044f\u0442 \u043f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1131
    const-string v4, "Head slightly back \u2014 first the way under the chin opens"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1132
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

    .line 1133
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    const-string v4, "WAVE"

    const-string v5, "\u041b\u0438\u043c\u0444\u043d\u0430 \u0432\u044a\u043b\u043d\u0430"

    const-string v6, "Lymph wave"

    const-wide v7, 0x3feb333333333333L    # 0.85

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1135
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->wave:Z

    .line 1136
    const-string v4, "\u0412\u044a\u043b\u043d\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 \u043d\u043e\u0441\u0430 \u043a\u044a\u043c \u0447\u0435\u043b\u044e\u0441\u0442\u0442\u0430 \u0438 \u0443\u0445\u043e\u0442\u043e \u2014 \u0441\u0430\u043c\u043e \u0441\u0435 \u043e\u0442\u043f\u0443\u0441\u043d\u0438"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1137
    const-string v4, "The wave runs from the nose to the jaw and the ear \u2014 just relax"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1138
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_13e8

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_13f0

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_13f8

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1140
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1400

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1408

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x9

    aput v7, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1410

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceWave([I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceSilence(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    move/from16 v0, p3

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;I)V

    goto/16 :goto_95

    .line 1147
    :pswitch_1017
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

    .line 1150
    invoke-static {v4, v10, v11, v12, v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    aput-object v4, v9, v2

    move/from16 v4, p3

    .line 1147
    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    goto/16 :goto_95

    .line 1153
    :pswitch_1038
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

    .line 1156
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

    .line 1153
    invoke-static/range {v3 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->sensory(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/isaigu/gymapp/ai/AutoModel$Step;)V

    goto/16 :goto_95

    .line 1160
    :pswitch_1068
    const/4 v4, 0x2

    const/16 v5, 0x96

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v2

    .line 1161
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

    .line 1166
    :pswitch_1089
    const-string v4, "WARMUP"

    const-string v5, "\u0412\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435"

    const-string v6, "Wake-up"

    const-wide v7, 0x3fbc28f5c28f5c29L    # 0.11

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1167
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1168
    const-wide v4, 0x3fe999999999999aL    # 0.8

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1169
    const-string v4, "\u0421\u0435\u0434\u043d\u0438 \u0438\u0437\u043f\u0440\u0430\u0432\u0435\u043d, \u0431\u0435\u0437 \u0445\u0440\u0430\u043d\u0430 \u0438 \u0432\u043e\u0434\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1170
    const-string v4, "Sit up, no food or drink"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1171
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x1e

    const/16 v5, 0x96

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/16 v8, 0x1f4

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0442\u0435\u0433\u043d\u0430\u0442 \u043f\u0440\u043e\u0444\u0438\u043b"

    const-string v6, "Firm profile"

    const-wide v7, 0x3fec7ae147ae147bL    # 0.89

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1173
    const-string v4, "\u041f\u043e\u0434 \u0431\u0440\u0430\u0434\u0438\u0447\u043a\u0430\u0442\u0430 \u0441\u0435 \u0441\u0442\u044f\u0433\u0430 \u2014 \u043d\u0435 \u043f\u0440\u0435\u0433\u043b\u044a\u0449\u0430\u0439 \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0441\u0442\u044f\u0433\u0430\u043d\u0435\u0442\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1174
    const-string v4, "It tightens under the chin \u2014 do not swallow during the hold"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1175
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x1e

    const/16 v5, 0x96

    const/4 v6, 0x4

    const/16 v7, 0x8

    const/16 v8, 0x1f4

    invoke-static {v4, v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceStep(IIIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1176
    const/16 v2, 0x96

    move/from16 v0, p3

    invoke-static {v3, v0, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->faceCooldown(Ljava/util/List;II)V

    goto/16 :goto_95

    .line 1185
    :pswitch_1109
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1186
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 1187
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1188
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e, \u043b\u0435\u043a\u0438 \u043a\u043b\u0435\u043a\u043e\u0432\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1189
    const-string v4, "Marching, light squats"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1190
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x15e

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1191
    const-string v4, "MAIN"

    const-string v5, "\u0421\u0440\u0435\u0449\u0443 \u0432\u044a\u0437\u043f\u0430\u043b\u0435\u043d\u0438\u0435\u0442\u043e"

    const-string v6, "Against inflammation"

    const-wide v7, 0x3fd999999999999aL    # 0.4

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1192
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1193
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoModel$Window;->main()Lcom/isaigu/gymapp/ai/AutoModel$Window;

    move-result-object v4

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->window:Lcom/isaigu/gymapp/ai/AutoModel$Window;

    .line 1194
    const-string v4, "\u041a\u043b\u0435\u043a, \u043d\u0430\u043f\u0430\u0434, \u0440\u0430\u0437\u0442\u0432\u0430\u0440\u044f\u043d\u0435, \u0441\u0433\u044a\u0432\u0430\u043d\u0435 \u2014 \u0441\u044a\u0441 \u0441\u043e\u0431\u0441\u0442\u0432\u0435\u043d\u043e \u0442\u0435\u0433\u043b\u043e, \u0432 \u0441\u0432\u043e\u0435 \u0442\u0435\u043c\u043f\u043e"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1195
    const-string v4, "Squat, lunge, raises, curls \u2014 body weight, at your own pace"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1196
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x1e

    const/16 v5, 0x15e

    const/4 v6, 0x4

    const/4 v7, 0x6

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    const-string v4, "BRAIN"

    const-string v5, "\u041c\u043e\u0437\u044a\u043a \u0438 \u043f\u0430\u043c\u0435\u0442"

    const-string v6, "Brain & memory"

    const-wide v7, 0x3fd3333333333333L    # 0.3

    const-wide v10, 0x3fe999999999999aL    # 0.8

    const-wide v12, 0x3fe999999999999aL    # 0.8

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1198
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1199
    const-string v4, "\u0425\u043e\u0434\u0435\u043d\u0435 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e, \u0441\u0442\u0435\u043f \u2014 \u043a\u0440\u0430\u043a\u0430\u0442\u0430 \u0440\u0430\u0431\u043e\u0442\u044f\u0442 \u0446\u0435\u043b\u0438\u0442\u0435"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1200
    const-string v4, "Marching, step \u2014 the whole legs work"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1201
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x14

    const/16 v5, 0x12c

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    const-string v4, "INTERVAL"

    const-string v5, "\u0418\u043d\u0442\u0435\u0440\u0432\u0430\u043b\u0438"

    const-string v6, "Intervals"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1203
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 1204
    const-string v4, "4 \u0441\u0435\u043a\u0443\u043d\u0434\u0438 \u0441 \u0432\u0441\u0438\u0447\u043a\u0430 \u0441\u0438\u043b\u0430, \u043f\u043e\u0441\u043b\u0435 \u043b\u0435\u043a\u043e \u2014 \u043a\u043b\u0435\u043a, \u043c\u043e\u0441\u0442, \u043b\u0438\u0446\u0435\u0432\u0438 \u043d\u0430 \u043f\u0435\u0439\u043a\u0430"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 1205
    const-string v4, "4 seconds all out, then easy \u2014 squat, bridge, incline push-ups"

    iput-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 1206
    iget-object v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v5, 0x46

    const/16 v6, 0x12c

    const/4 v7, 0x4

    const/4 v8, 0x2

    invoke-static {v5, v6, v7, v8}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1207
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x7

    const/16 v5, 0x12c

    const/4 v6, 0x4

    const/4 v7, 0x1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1208
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x4

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1214
    :pswitch_1211
    const-string v4, "WARMUP"

    const-string v5, "\u0417\u0430\u0433\u0440\u044f\u0432\u0430\u043d\u0435"

    const-string v6, "Warm-up"

    const-wide v7, 0x3fb999999999999aL    # 0.1

    const-wide v10, 0x3fe3333333333333L    # 0.6

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1215
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    const-string v4, "MAIN"

    const-string v5, "\u041a\u0440\u044a\u0432\u043d\u0430 \u0437\u0430\u0445\u0430\u0440"

    const-string v6, "Blood sugar"

    const-wide v7, 0x3fd6666666666666L    # 0.35

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1217
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x5

    const/16 v5, 0x12c

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    const-string v4, "BRAIN"

    const-string v5, "\u041c\u043e\u0437\u044a\u043a \u0438 \u043f\u0430\u043c\u0435\u0442"

    const-string v6, "Brain & memory"

    const-wide v7, 0x3fd6666666666666L    # 0.35

    const-wide v10, 0x3fe6666666666666L    # 0.7

    const-wide v12, 0x3fe6666666666666L    # 0.7

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1219
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/16 v4, 0x14

    const/16 v5, 0x12c

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/ai/AutoCatalog;->tet(IIII)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    const-string v4, "VESSELS"

    const-string v5, "\u041a\u0440\u044a\u0432\u043e\u043d\u043e\u0441\u043d\u0438 \u0441\u044a\u0434\u043e\u0432\u0435"

    const-string v6, "Blood vessels"

    const-wide v7, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    move/from16 v9, p3

    invoke-static/range {v3 .. v13}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phase(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DIDD)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    move-result-object v2

    .line 1221
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v4, 0x4

    const/16 v5, 0xfa

    const/16 v6, 0xa

    const/4 v7, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Lcom/isaigu/gymapp/ai/AutoCatalog;->twitch(IIIID)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x3

    move/from16 v0, p3

    invoke-static {v3, v0, v4, v5, v2}, Lcom/isaigu/gymapp/ai/AutoCatalog;->cooldown(Ljava/util/List;IDI)Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    goto/16 :goto_95

    .line 1245
    :cond_12c7
    return-object v3

    .line 773
    :sswitch_data_12c8
    .sparse-switch
        -0x6f0d1d95 -> :sswitch_1b4
        -0x6ef04930 -> :sswitch_130
        -0x699e30ff -> :sswitch_1fc
        -0x699e1714 -> :sswitch_214
        -0x69986f0c -> :sswitch_1d8
        -0x699641ec -> :sswitch_1cc
        -0x626b8aa2 -> :sswitch_119
        -0x558a3613 -> :sswitch_16c
        -0x5183fbca -> :sswitch_10e
        -0x4a13fe0e -> :sswitch_d7
        -0x35ffd1d0 -> :sswitch_124
        -0x327a9da3 -> :sswitch_220
        -0x2b99fa26 -> :sswitch_154
        -0x1ac634bb -> :sswitch_22c
        -0x4c6f718 -> :sswitch_cc
        0x2eaf9f -> :sswitch_f8
        0x2fd65d -> :sswitch_1c0
        0x3306f4 -> :sswitch_e2
        0x5b679f8 -> :sswitch_190
        0x65e8905 -> :sswitch_103
        0x6a558a2 -> :sswitch_ed
        0x1c4fe11c -> :sswitch_19c
        0x1da0293e -> :sswitch_208
        0x2deab687 -> :sswitch_148
        0x35edb996 -> :sswitch_1e4
        0x36ad422e -> :sswitch_1f0
        0x40211418 -> :sswitch_178
        0x4875ac8a -> :sswitch_13c
        0x4f930f2e -> :sswitch_1a8
        0x625d7281 -> :sswitch_184
        0x6660e8dc -> :sswitch_160
    .end sparse-switch

    :pswitch_data_1346
    .packed-switch 0x0
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_238
        :pswitch_3b2
        :pswitch_444
        :pswitch_4d8
        :pswitch_564
        :pswitch_678
        :pswitch_678
        :pswitch_678
        :pswitch_731
        :pswitch_7c0
        :pswitch_849
        :pswitch_8d5
        :pswitch_9af
        :pswitch_a45
        :pswitch_bd4
        :pswitch_c9b
        :pswitch_d33
        :pswitch_dd5
        :pswitch_dd5
        :pswitch_e8a
        :pswitch_f4d
        :pswitch_1017
        :pswitch_1038
        :pswitch_1068
        :pswitch_1089
        :pswitch_1109
        :pswitch_1211
    .end packed-switch

    .line 886
    :array_1388
    .array-data 4
        0x4
        0x4
    .end array-data

    .line 1003
    :array_1390
    .array-data 4
        0x3
        0x2
        0x9
        0x8
    .end array-data

    .line 1025
    :array_139c
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 1026
    :array_13a4
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 1031
    :array_13ac
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 1032
    :array_13b4
    .array-data 4
        0x9
        0x2
    .end array-data

    .line 1033
    :array_13bc
    .array-data 4
        0x1
        0x7
    .end array-data

    .line 1041
    :array_13c4
    .array-data 4
        0x0
        0x6
    .end array-data

    .line 1042
    :array_13cc
    .array-data 4
        0x0
        0x6
    .end array-data

    .line 1051
    :array_13d4
    .array-data 8
        0x3fd3333333333333L    # 0.3
        0x3fbeb851eb851eb8L    # 0.12
        0x3fd3333333333333L    # 0.3
        0x3fbeb851eb851eb8L    # 0.12
    .end array-data

    .line 1138
    :array_13e8
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 1139
    :array_13f0
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_13f8
    .array-data 4
        0x2
        0x3
    .end array-data

    .line 1140
    :array_1400
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1408
    .array-data 4
        0x4
        0x5
    .end array-data

    .line 1141
    :array_1410
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static recommended(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 621
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v1

    .line 622
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    if-ne p0, v0, :cond_1d

    iget v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_1d

    .line 623
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne p1, v0, :cond_1a

    const-string v0, "senior"

    :goto_15
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    .line 634
    :goto_19
    return-object v0

    .line 623
    :cond_1a
    const-string v0, "senior_passive"

    goto :goto_15

    .line 625
    :cond_1d
    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v2, :cond_3c

    iget-object v0, p2, Lcom/isaigu/gymapp/ai/AutoModel$Input;->extra:Lcom/isaigu/gymapp/ai/AutoModel$Extra;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Extra;->weeksSinceBirth:I

    if-lez v0, :cond_3c

    const-string v0, "postpartum"

    .line 626
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 627
    const-string v0, "postpartum"

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    move-result-object v0

    goto :goto_19

    .line 629
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

    .line 630
    invoke-static {v0, p0, p2, v4}, Lcom/isaigu/gymapp/ai/AutoCatalog;->blockReason(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_40

    goto :goto_19

    .line 634
    :cond_53
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    goto :goto_19
.end method

.method public static recoveryS(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)I
    .registers 3

    .prologue
    .line 451
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x78

    :goto_8
    return v0

    :cond_9
    const-string v0, "drain"

    iget-object v1, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0xf0

    goto :goto_8

    :cond_16
    const/16 v0, 0x258

    goto :goto_8
.end method

.method private static rest(I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1364
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v1, 0x3

    const/16 v2, 0xfa

    add-int/lit8 v3, p0, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 1365
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 1366
    const/16 v1, 0xa

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 1367
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
    .line 512
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

    .line 513
    const-wide v4, 0x3fe3333333333333L    # 0.6

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 514
    const-wide v4, 0x3feccccccccccccdL    # 0.9

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 515
    const-string v3, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438 \u043e\u0447\u0438 \u2014 \u0441\u0430\u043c\u043e \u0438\u0437\u0442\u0440\u044a\u043f\u0432\u0430\u043d\u0435, \u043d\u0438\u0449\u043e \u043d\u0435 \u043c\u044a\u0440\u0434\u0430"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 516
    const-string v3, "Close the eyes \u2014 only a tingle, nothing moves"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 517
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v3, 0x0

    aget-object v3, p6, v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
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

    .line 519
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 520
    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 521
    move-object/from16 v0, p6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_5e
    if-ge v2, v4, :cond_6e

    aget-object v5, p6, v2

    .line 522
    iget-object v6, v3, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 524
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

    .line 525
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envStart:D

    .line 526
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iput-wide v4, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->envEnd:D

    .line 527
    const-string v3, "\u041e\u0441\u0442\u0430\u043d\u0438 \u043e\u0442\u043f\u0443\u0441\u043d\u0430\u0442 \u043e\u0449\u0435 \u043c\u0430\u043b\u043a\u043e"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintBg:Ljava/lang/String;

    .line 528
    const-string v3, "Stay relaxed a little longer"

    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->hintEn:Ljava/lang/String;

    .line 529
    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->steps:Ljava/util/List;

    const/4 v3, 0x0

    aget-object v3, p6, v3

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;->copy()Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
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
    .line 1318
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 1319
    const/16 v1, 0x190

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 1320
    const/16 v1, 0x12c

    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 1321
    return-object v0
.end method

.method public static times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I
    .registers 14

    .prologue
    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 430
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phases(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Ljava/util/List;

    move-result-object v7

    .line 435
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

    .line 436
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 437
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v3, v0

    move v0, v1

    :goto_29
    move v1, v0

    .line 445
    goto :goto_13

    .line 438
    :cond_2b
    if-eqz v1, :cond_37

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_37

    .line 439
    iget v6, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    move v0, v4

    .line 440
    goto :goto_29

    .line 442
    :cond_37
    iget v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v5, v0

    move v0, v4

    .line 443
    goto :goto_29

    .line 446
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

    .line 1328
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 1329
    iput-wide p4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->sigma:D

    .line 1330
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 1331
    iput v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 1332
    return-object v0
.end method

.method private static waveStep(II[I[I)Lcom/isaigu/gymapp/ai/AutoModel$Step;
    .registers 11

    .prologue
    const/16 v6, 0x64

    const/4 v0, 0x0

    .line 1346
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;

    const/4 v1, 0x3

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/isaigu/gymapp/ai/AutoModel$Step;-><init>(IIII)V

    .line 1347
    const/16 v1, 0x3e8

    iput v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampUpMs:I

    .line 1348
    const/16 v1, 0x1f4

    iput v1, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->rampDownMs:I

    .line 1349
    const/16 v1, 0xa

    new-array v3, v1, [I

    .line 1350
    if-eqz p3, :cond_23

    .line 1351
    array-length v4, p3

    move v1, v0

    :goto_1a
    if-ge v1, v4, :cond_23

    aget v5, p3, v1

    .line 1352
    aput v6, v3, v5

    .line 1351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1355
    :cond_23
    array-length v1, p2

    :goto_24
    if-ge v0, v1, :cond_2d

    aget v4, p2, v0

    .line 1356
    aput v6, v3, v4

    .line 1355
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1358
    :cond_2d
    iput-object v3, v2, Lcom/isaigu/gymapp/ai/AutoModel$Step;->zones:[I

    .line 1359
    return-object v2
.end method
