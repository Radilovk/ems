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
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tone"

    aput-object v1, v0, v2

    const-string v1, "fat"

    aput-object v1, v0, v3

    const-string v1, "massage"

    aput-object v1, v0, v4

    const-string v1, "drain"

    aput-object v1, v0, v5

    const-string v1, "cellulite"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->GOALS:[Ljava/lang/String;

    .line 55
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "low"

    aput-object v1, v0, v2

    const-string v1, "mid"

    aput-object v1, v0, v3

    const-string v1, "high"

    aput-object v1, v0, v4

    sput-object v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->FITNESS:[Ljava/lang/String;

    .line 57
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pregnancy"

    aput-object v1, v0, v2

    const-string v1, "implant"

    aput-object v1, v0, v3

    const-string v1, "cardiovascular"

    aput-object v1, v0, v4

    const-string v1, "circulation"

    aput-object v1, v0, v5

    const-string v1, "hernia"

    aput-object v1, v0, v6

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

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clamp(III)I
    .locals 0

    .prologue
    .line 666
    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method static contraName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 638
    const-string v0, "pregnancy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u0411\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442"

    const-string v1, "Pregnancy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 651
    :cond_0
    :goto_0
    return-object p0

    .line 639
    :cond_1
    const-string v0, "implant"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u041f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440 / \u0438\u043c\u043f\u043b\u0430\u043d\u0442"

    const-string v1, "Pacemaker / implant"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 640
    :cond_2
    const-string v0, "cardiovascular"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u0421\u044a\u0440\u0434\u0435\u0447\u043d\u043e-\u0441\u044a\u0434\u043e\u0432\u043e"

    const-string v1, "Cardiovascular"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 641
    :cond_3
    const-string v0, "circulation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u0422\u0440\u043e\u043c\u0431\u043e\u0437\u0430 / \u0430\u0440\u0442\u0435\u0440\u0438\u0438"

    const-string v1, "Thrombosis / arteries"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 642
    :cond_4
    const-string v0, "hernia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u0425\u0435\u0440\u043d\u0438\u044f"

    const-string v1, "Hernia"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 643
    :cond_5
    const-string v0, "cancer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u041e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e"

    const-string v1, "Cancer"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 644
    :cond_6
    const-string v0, "bleeding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u041a\u0440\u044a\u0432\u043e\u0441\u044a\u0441\u0438\u0440\u0432\u0430\u043d\u0435"

    const-string v1, "Bleeding disorder"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 645
    :cond_7
    const-string v0, "epilepsy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u0415\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f"

    const-string v1, "Epilepsy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 646
    :cond_8
    const-string v0, "neurological"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u041d\u0435\u0432\u0440\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e"

    const-string v1, "Neurological"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 647
    :cond_9
    const-string v0, "recent_surgery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "\u0421\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f"

    const-string v1, "Recent surgery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 648
    :cond_a
    const-string v0, "skin_lesion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u0420\u0430\u043d\u0438 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435"

    const-string v1, "Wounds under electrodes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 649
    :cond_b
    const-string v0, "kidney"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "\u0411\u044a\u0431\u0440\u0435\u0447\u043d\u043e"

    const-string v1, "Kidney disease"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 650
    :cond_c
    const-string v0, "tuberculosis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u0422\u0443\u0431\u0435\u0440\u043a\u0443\u043b\u043e\u0437\u0430"

    const-string v1, "Tuberculosis"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method static fitnessName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 632
    const-string v0, "low"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u041d\u0430\u0447\u0438\u043d\u0430\u0435\u0449"

    const-string v1, "Beginner"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    :goto_0
    return-object v0

    .line 633
    :cond_0
    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u041d\u0430\u043f\u0440\u0435\u0434\u043d\u0430\u043b"

    const-string v1, "Advanced"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_1
    const-string v0, "\u0421\u0440\u0435\u0434\u0435\u043d"

    const-string v1, "Intermediate"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static goalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 624
    const-string v0, "fat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u041e\u0442\u0441\u043b\u0430\u0431\u0432\u0430\u043d\u0435"

    const-string v1, "Fat loss"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    .line 625
    :cond_0
    const-string v0, "massage"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u041c\u0430\u0441\u0430\u0436"

    const-string v1, "Massage"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 626
    :cond_1
    const-string v0, "drain"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u0414\u0440\u0435\u043d\u0430\u0436"

    const-string v1, "Drainage"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 627
    :cond_2
    const-string v0, "cellulite"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u0426\u0435\u043b\u0443\u043b\u0438\u0442"

    const-string v1, "Cellulite"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 628
    :cond_3
    const-string v0, "\u0422\u043e\u043d\u0443\u0441"

    const-string v1, "Tone"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "xems_user_profiles"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    :try_start_0
    instance-of v0, p1, Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 71
    :goto_1
    new-instance v0, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;

    invoke-direct {v0, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v0}, Lcom/isaigu/gymapp/widget/XemsLocalUserForm$Form;->open()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v1, "xems_form"

    const-string v2, "show"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method static yearsSince(Ljava/util/Date;)I
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 655
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 656
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 657
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 658
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 659
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 660
    add-int/lit8 v0, v0, -0x1

    .line 662
    :cond_0
    return v0
.end method
