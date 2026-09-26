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

.field static final CONTRA:[Ljava/lang/String;

.field private static final DANGER:I = -0x1ac6cb

.field static final FITNESS:[Ljava/lang/String;

.field static final GOALS:[Ljava/lang/String;

.field private static final MUTED:I = -0x675e50

.field static final PREFS:Ljava/lang/String; = "xems_user_profiles"

.field private static final STROKE:I = -0xd3cec5

.field private static final TEXT:I = -0x13100c

.field private static final WARN:I = -0x48b3


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 54
    const-string v0, "tone"

    const-string v1, "fat"

    const-string v2, "massage"

    const-string v3, "drain"

    const-string v4, "cellulite"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->GOALS:[Ljava/lang/String;

    .line 55
    const-string v0, "low"

    const-string v1, "mid"

    const-string v2, "high"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FITNESS:[Ljava/lang/String;

    .line 57
    const-string v1, "pregnancy"

    const-string v2, "implant"

    const-string v3, "cardiovascular"

    const-string v4, "circulation"

    const-string v5, "hernia"

    const-string v6, "cancer"

    const-string v7, "bleeding"

    const-string v8, "epilepsy"

    const-string v9, "neurological"

    const-string v10, "recent_surgery"

    const-string v11, "skin_lesion"

    const-string v12, "kidney"

    const-string v13, "tuberculosis"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->CONTRA:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clamp(III)I
    .registers 3

    .line 666
    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method static contraName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 638
    const-string v0, "pregnancy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "\u0411\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442"

    const-string v0, "Pregnancy"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 639
    :cond_11
    const-string v0, "implant"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p0, "\u041f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440 / \u0438\u043c\u043f\u043b\u0430\u043d\u0442"

    const-string v0, "Pacemaker / implant"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 640
    :cond_22
    const-string v0, "cardiovascular"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string p0, "\u0421\u044a\u0440\u0434\u0435\u0447\u043d\u043e-\u0441\u044a\u0434\u043e\u0432\u043e"

    const-string v0, "Cardiovascular"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 641
    :cond_33
    const-string v0, "circulation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string p0, "\u0422\u0440\u043e\u043c\u0431\u043e\u0437\u0430 / \u0430\u0440\u0442\u0435\u0440\u0438\u0438"

    const-string v0, "Thrombosis / arteries"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 642
    :cond_44
    const-string v0, "hernia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string p0, "\u0425\u0435\u0440\u043d\u0438\u044f"

    const-string v0, "Hernia"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 643
    :cond_55
    const-string v0, "cancer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string p0, "\u041e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e"

    const-string v0, "Cancer"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 644
    :cond_66
    const-string v0, "bleeding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string p0, "\u041a\u0440\u044a\u0432\u043e\u0441\u044a\u0441\u0438\u0440\u0432\u0430\u043d\u0435"

    const-string v0, "Bleeding disorder"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 645
    :cond_77
    const-string v0, "epilepsy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string p0, "\u0415\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f"

    const-string v0, "Epilepsy"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 646
    :cond_88
    const-string v0, "neurological"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string p0, "\u041d\u0435\u0432\u0440\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e"

    const-string v0, "Neurological"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 647
    :cond_99
    const-string v0, "recent_surgery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    const-string p0, "\u0421\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f"

    const-string v0, "Recent surgery"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 648
    :cond_aa
    const-string v0, "skin_lesion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    const-string p0, "\u0420\u0430\u043d\u0438 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435"

    const-string v0, "Wounds under electrodes"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 649
    :cond_bb
    const-string v0, "kidney"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    const-string p0, "\u0411\u044a\u0431\u0440\u0435\u0447\u043d\u043e"

    const-string v0, "Kidney disease"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 650
    :cond_cc
    const-string v0, "tuberculosis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    const-string p0, "\u0422\u0443\u0431\u0435\u0440\u043a\u0443\u043b\u043e\u0437\u0430"

    const-string v0, "Tuberculosis"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 651
    :cond_dd
    return-object p0
.end method

.method static fitnessName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 632
    const-string v0, "low"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "\u041d\u0430\u0447\u0438\u043d\u0430\u0435\u0449"

    const-string v0, "Beginner"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 633
    :cond_11
    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "\u041d\u0430\u043f\u0440\u0435\u0434\u043d\u0430\u043b"

    const-string v0, "Advanced"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 634
    :cond_22
    const-string p0, "\u0421\u0440\u0435\u0434\u0435\u043d"

    const-string v0, "Intermediate"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static goalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 624
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v0, "Fat loss"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 625
    :cond_11
    const-string v0, "massage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string p0, "\u041c\u0430\u0441\u0430\u0436"

    const-string v0, "Massage"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 626
    :cond_22
    const-string v0, "drain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string p0, "\u0414\u0440\u0435\u043d\u0430\u0436"

    const-string v0, "Drainage"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 627
    :cond_33
    const-string v0, "cellulite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    const-string p0, "\u0426\u0435\u043b\u0443\u043b\u0438\u0442"

    const-string v0, "Cellulite"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 628
    :cond_44
    const-string p0, "\u0422\u043e\u043d\u0443\u0441"

    const-string v0, "Tone"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 670
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "xems_user_profiles"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 3

    .line 67
    if-nez p0, :cond_3

    .line 68
    return-void

    .line 70
    :cond_3
    :try_start_3
    instance-of v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/isaigu/gymapp/bean/TrainUser;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 71
    :goto_b
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->open()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_14

    .line 74
    goto :goto_1c

    .line 72
    :catchall_14
    move-exception p0

    .line 73
    const-string p1, "xems_form"

    const-string v0, "show"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :goto_1c
    return-void
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 674
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, p1

    :goto_8
    return-object p0
.end method

.method static yearsSince(Ljava/util/Date;)I
    .registers 4

    .line 655
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 656
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 657
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 658
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sub-int/2addr v2, v1

    .line 659
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge p0, v0, :cond_22

    .line 660
    add-int/lit8 v2, v2, -0x1

    .line 662
    :cond_22
    return v2
.end method
