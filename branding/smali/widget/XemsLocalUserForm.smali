.class public final Lcom/isaigu/gymapp/widget/XemsLocalUserForm;
.super Ljava/lang/Object;
.source "XemsLocalUserForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;
    }
.end annotation


# static fields
.field private static final ACCENT:I = -0xbc5fb9

.field private static final ACCENT_TEXT:I = -0x1

.field private static final BG:I = -0xedebe8

.field private static final CARD:I = -0xe3e0da

.field static final COND:[Ljava/lang/String;

.field static final COND_GROUPS:[[Ljava/lang/String;

.field static final CONTRA:[Ljava/lang/String;

.field private static final DANGER:I = -0x1ac6cb

.field static final FITNESS:[Ljava/lang/String;

.field static final FOCUS:[Ljava/lang/String;

.field static final GOALS:[Ljava/lang/String;

.field private static final MUTED:I = -0x675e50

.field static final PREFS:Ljava/lang/String; = "xems_user_profiles"

.field private static final STROKE:I = -0xd3cec5

.field private static final TEXT:I = -0x13100c

.field private static final WARN:I = -0x48b3


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tone"

    aput-object v1, v0, v4

    const-string v1, "fat"

    aput-object v1, v0, v5

    const-string v1, "massage"

    aput-object v1, v0, v6

    const-string v1, "drain"

    aput-object v1, v0, v7

    const-string v1, "cellulite"

    aput-object v1, v0, v8

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->GOALS:[Ljava/lang/String;

    .line 55
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "low"

    aput-object v1, v0, v4

    const-string v1, "mid"

    aput-object v1, v0, v5

    const-string v1, "high"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FITNESS:[Ljava/lang/String;

    .line 57
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pregnancy"

    aput-object v1, v0, v4

    const-string v1, "implant"

    aput-object v1, v0, v5

    const-string v1, "cardiovascular"

    aput-object v1, v0, v6

    const-string v1, "circulation"

    aput-object v1, v0, v7

    const-string v1, "hernia"

    aput-object v1, v0, v8

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

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "abs"

    aput-object v1, v0, v4

    const-string v1, "glutes"

    aput-object v1, v0, v5

    const-string v1, "legs"

    aput-object v1, v0, v6

    const-string v1, "arms"

    aput-object v1, v0, v7

    const-string v1, "back"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "chest"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FOCUS:[Ljava/lang/String;

    .line 67
    new-array v0, v7, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "menopause"

    aput-object v2, v1, v4

    const-string v2, "prediabetes"

    aput-object v2, v1, v5

    const-string v2, "pcos"

    aput-object v2, v1, v6

    const-string v2, "thyroid"

    aput-object v2, v1, v7

    const-string v2, "water"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "postpartum"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "back"

    aput-object v2, v1, v4

    const-string v2, "neck"

    aput-object v2, v1, v5

    const-string v2, "knees"

    aput-object v2, v1, v6

    const-string v2, "joints"

    aput-object v2, v1, v7

    const-string v2, "injury"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "diastasis"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "osteo"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "varicose"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "desk"

    aput-object v2, v1, v4

    const-string v2, "stress"

    aput-object v2, v1, v5

    const-string v2, "sleep"

    aput-object v2, v1, v6

    const-string v2, "senior"

    aput-object v2, v1, v7

    const-string v2, "sensitive"

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->COND_GROUPS:[[Ljava/lang/String;

    .line 72
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "menopause"

    aput-object v1, v0, v4

    const-string v1, "prediabetes"

    aput-object v1, v0, v5

    const-string v1, "pcos"

    aput-object v1, v0, v6

    const-string v1, "thyroid"

    aput-object v1, v0, v7

    const-string v1, "water"

    aput-object v1, v0, v8

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

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->COND:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clamp(III)I
    .registers 3

    .prologue
    .line 951
    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method static condGroupName(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 77
    if-nez p0, :cond_b

    const-string v0, "\u0425\u043e\u0440\u043c\u043e\u043d\u0438 \u0438 \u043e\u0431\u043c\u044f\u043d\u0430"

    const-string v1, "Hormones and metabolism"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_a
    return-object v0

    .line 78
    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    const-string v0, "\u0422\u044f\u043b\u043e \u0438 \u0441\u0442\u0430\u0432\u0438"

    const-string v1, "Body and joints"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 79
    :cond_17
    const-string v0, "\u041d\u0430\u0447\u0438\u043d \u043d\u0430 \u0436\u0438\u0432\u043e\u0442"

    const-string v1, "Lifestyle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method static condName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 886
    const-string v0, "menopause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041c\u0435\u043d\u043e\u043f\u0430\u0443\u0437\u0430"

    const-string v1, "Menopause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 905
    :cond_10
    :goto_10
    return-object p0

    .line 887
    :cond_11
    const-string v0, "prediabetes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u041f\u0440\u0435\u0434\u0434\u0438\u0430\u0431\u0435\u0442 / \u0438\u043d\u0441\u0443\u043b\u0438\u043d\u043e\u0432\u0430 \u0440\u0435\u0437."

    const-string v1, "Prediabetes / insulin res."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 888
    :cond_22
    const-string v0, "pcos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u041f\u041a\u041e\u0421 / \u0445\u043e\u0440\u043c\u043e\u043d\u0430\u043b\u0435\u043d \u0434\u0438\u0441\u0431\u0430\u043b\u0430\u043d\u0441"

    const-string v1, "PCOS / hormonal imbalance"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 889
    :cond_33
    const-string v0, "thyroid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0429\u0438\u0442\u043e\u0432\u0438\u0434\u043d\u0430 \u0436\u043b\u0435\u0437\u0430"

    const-string v1, "Thyroid"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 890
    :cond_44
    const-string v0, "water"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0417\u0430\u0434\u044a\u0440\u0436\u0430\u043d\u0435 \u043d\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0438"

    const-string v1, "Water retention"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 891
    :cond_55
    const-string v0, "postpartum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u0421\u043b\u0435\u0434 \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442 (\u0434\u043e 1 \u0433.)"

    const-string v1, "After pregnancy (\u2264 1 y)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 892
    :cond_66
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u041a\u0440\u044a\u0441\u0442"

    const-string v1, "Lower back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 893
    :cond_77
    const-string v0, "neck"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "\u0412\u0440\u0430\u0442 / \u0440\u0430\u043c\u0435\u043d\u0435"

    const-string v1, "Neck / shoulders"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 894
    :cond_88
    const-string v0, "knees"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "\u041a\u043e\u043b\u0435\u043d\u0435"

    const-string v1, "Knees"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 895
    :cond_9a
    const-string v0, "joints"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "\u0421\u0442\u0430\u0432\u0438 / \u0430\u0440\u0442\u0440\u043e\u0437\u0430"

    const-string v1, "Joints / arthrosis"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 896
    :cond_ac
    const-string v0, "injury"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, "\u0421\u0442\u0430\u0440\u0430 \u0442\u0440\u0430\u0432\u043c\u0430"

    const-string v1, "Old injury"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 897
    :cond_be
    const-string v0, "diastasis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string v0, "\u0414\u0438\u0430\u0441\u0442\u0430\u0437\u0430"

    const-string v1, "Diastasis recti"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 898
    :cond_d0
    const-string v0, "osteo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const-string v0, "\u041e\u0441\u0442\u0435\u043e\u043f\u043e\u0440\u043e\u0437\u0430"

    const-string v1, "Osteoporosis"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 899
    :cond_e2
    const-string v0, "varicose"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    const-string v0, "\u0420\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u0438 \u0432\u0435\u043d\u0438"

    const-string v1, "Varicose veins"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 900
    :cond_f4
    const-string v0, "desk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    const-string v0, "\u0421\u0435\u0434\u044f\u0449\u0430 \u0440\u0430\u0431\u043e\u0442\u0430"

    const-string v1, "Desk job"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 901
    :cond_106
    const-string v0, "stress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0436\u0435\u043d\u0438\u0435 \u0438 \u0441\u0442\u0440\u0435\u0441"

    const-string v1, "Tension and stress"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 902
    :cond_118
    const-string v0, "sleep"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    const-string v0, "\u041b\u043e\u0448 \u0441\u044a\u043d / \u0443\u043c\u043e\u0440\u0430"

    const-string v1, "Poor sleep / fatigue"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 903
    :cond_12a
    const-string v0, "senior"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    const-string v0, "60+ / \u0441\u043b\u0430\u0431\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u0430\u0442\u0443\u0440\u0430"

    const-string v1, "60+ / low muscle mass"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 904
    :cond_13c
    const-string v0, "sensitive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u0427\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d \u043a\u044a\u043c \u0442\u043e\u043a\u0430"

    const-string v1, "Sensitive to current"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10
.end method

.method static contraName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 923
    const-string v0, "pregnancy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u0411\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442"

    const-string v1, "Pregnancy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 936
    :cond_10
    :goto_10
    return-object p0

    .line 924
    :cond_11
    const-string v0, "implant"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u041f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440 / \u0438\u043c\u043f\u043b\u0430\u043d\u0442"

    const-string v1, "Pacemaker / implant"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 925
    :cond_22
    const-string v0, "cardiovascular"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0421\u044a\u0440\u0434\u0435\u0447\u043d\u043e-\u0441\u044a\u0434\u043e\u0432\u043e"

    const-string v1, "Cardiovascular"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 926
    :cond_33
    const-string v0, "circulation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0422\u0440\u043e\u043c\u0431\u043e\u0437\u0430 / \u0430\u0440\u0442\u0435\u0440\u0438\u0438"

    const-string v1, "Thrombosis / arteries"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 927
    :cond_44
    const-string v0, "hernia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0425\u0435\u0440\u043d\u0438\u044f"

    const-string v1, "Hernia"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 928
    :cond_55
    const-string v0, "cancer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u041e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e"

    const-string v1, "Cancer"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 929
    :cond_66
    const-string v0, "bleeding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u041a\u0440\u044a\u0432\u043e\u0441\u044a\u0441\u0438\u0440\u0432\u0430\u043d\u0435"

    const-string v1, "Bleeding disorder"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 930
    :cond_77
    const-string v0, "epilepsy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "\u0415\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f"

    const-string v1, "Epilepsy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 931
    :cond_88
    const-string v0, "neurological"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "\u041d\u0435\u0432\u0440\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e"

    const-string v1, "Neurological"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 932
    :cond_9a
    const-string v0, "recent_surgery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "\u0421\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f"

    const-string v1, "Recent surgery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 933
    :cond_ac
    const-string v0, "skin_lesion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, "\u0420\u0430\u043d\u0438 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435"

    const-string v1, "Wounds under electrodes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 934
    :cond_be
    const-string v0, "kidney"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string v0, "\u0411\u044a\u0431\u0440\u0435\u0447\u043d\u043e"

    const-string v1, "Kidney disease"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 935
    :cond_d0
    const-string v0, "tuberculosis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u0422\u0443\u0431\u0435\u0440\u043a\u0443\u043b\u043e\u0437\u0430"

    const-string v1, "Tuberculosis"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10
.end method

.method static csvOf([Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v3, :cond_28

    aget-object v4, p0, v1

    .line 868
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 869
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_25

    const-string v0, ","

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 869
    :cond_25
    const-string v0, ""

    goto :goto_1a

    .line 872
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static extras(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0424\u043e\u043a\u0443\u0441: "

    const-string v3, "Focus: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->names(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 850
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_94

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0421\u044a\u0441\u0442\u043e\u044f\u043d\u0438\u0435: "

    const-string v3, "Condition: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->names(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 851
    if-eqz p2, :cond_97

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_97

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u041e\u0442 \u043a\u043b\u0438\u0435\u043d\u0442\u0430: "

    const-string v3, "From the client: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 849
    return-object v0

    :cond_91
    const-string v0, ""

    goto :goto_2f

    .line 850
    :cond_94
    const-string v0, ""

    goto :goto_5d

    .line 851
    :cond_97
    const-string v0, ""

    goto :goto_88
.end method

.method static fitnessName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 917
    const-string v0, "low"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041d\u0430\u0447\u0438\u043d\u0430\u0435\u0449"

    const-string v1, "Beginner"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 919
    :goto_10
    return-object v0

    .line 918
    :cond_11
    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0434\u043d\u0430\u043b"

    const-string v1, "Advanced"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 919
    :cond_22
    const-string v0, "\u0421\u0440\u0435\u0434\u0435\u043d"

    const-string v1, "Intermediate"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method static focusName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 876
    const-string v0, "abs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041a\u043e\u0440\u0435\u043c"

    const-string v1, "Abs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 882
    :cond_10
    :goto_10
    return-object p0

    .line 877
    :cond_11
    const-string v0, "glutes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v1, "Glutes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 878
    :cond_22
    const-string v0, "legs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0411\u0435\u0434\u0440\u0430"

    const-string v1, "Legs"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 879
    :cond_33
    const-string v0, "arms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0420\u044a\u0446\u0435"

    const-string v1, "Arms"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 880
    :cond_44
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0413\u0440\u044a\u0431"

    const-string v1, "Back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 881
    :cond_55
    const-string v0, "chest"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u0413\u044a\u0440\u0434\u0438"

    const-string v1, "Chest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10
.end method

.method static goalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 909
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Fat loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 913
    :goto_10
    return-object v0

    .line 910
    :cond_11
    const-string v0, "massage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u041c\u0430\u0441\u0430\u0436"

    const-string v1, "Massage"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 911
    :cond_22
    const-string v0, "drain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0414\u0440\u0435\u043d\u0430\u0436"

    const-string v1, "Drainage"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 912
    :cond_33
    const-string v0, "cellulite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0426\u0435\u043b\u0443\u043b\u0438\u0442"

    const-string v1, "Cellulite"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 913
    :cond_44
    const-string v0, "\u0422\u043e\u043d\u0443\u0441"

    const-string v1, "Tone"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method static names(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    .prologue
    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 856
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_39

    aget-object v5, v3, v1

    .line 857
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d

    .line 858
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_31

    const-string v0, ", "

    :goto_20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_34

    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->focusName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 858
    :cond_31
    const-string v0, ""

    goto :goto_20

    :cond_34
    invoke-static {v5}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->condName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 861
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 955
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_user_profiles"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 87
    if-nez p0, :cond_3

    .line 95
    :goto_2
    return-void

    .line 90
    :cond_3
    :try_start_3
    instance-of v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_1b

    check-cast p1, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 91
    :goto_9
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->open()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_12

    goto :goto_2

    .line 92
    :catch_12
    move-exception v0

    .line 93
    const-string v1, "xems_form"

    const-string v2, "show"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 90
    :cond_1b
    const/4 p1, 0x0

    goto :goto_9
.end method

.method static summaryOf(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    const-string v0, "\u0426\u0435\u043b: "

    const-string v2, "Goal: "

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->goalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    .line 836
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0424\u043e\u0440\u043c\u0430: "

    const-string v4, "Fitness: "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->fitnessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    const/4 v0, 0x1

    .line 838
    sget-object v4, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_38
    if-ge v2, v5, :cond_71

    aget-object v6, v4, v2

    .line 839
    invoke-interface {p2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 840
    if-eqz v0, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f: "

    const-string v8, "Contraindications: "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 838
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 840
    :cond_6e
    const-string v0, ", "

    goto :goto_5f

    .line 844
    :cond_71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 959
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, p1

    goto :goto_6
.end method

.method static yearsSince(Ljava/util/Date;)I
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 940
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 941
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 942
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 943
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 944
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v2, v1, :cond_22

    .line 945
    add-int/lit8 v0, v0, -0x1

    .line 947
    :cond_22
    return v0
.end method
