.class public final Lcom/isaigu/gymapp/bodytech/SuitStandard;
.super Ljava/lang/Object;
.source "SuitStandard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;
    }
.end annotation


# static fields
.field static final BG:[Ljava/lang/String;

.field static final EN:[Ljava/lang/String;

.field private static final K_STD:Ljava/lang/String; = "std"

.field private static final LIST_ORDER:[I

.field private static final PREFS:Ljava/lang/String; = "xems_suit_standard"

.field private static final TAG:Ljava/lang/String; = "xems_suit_standard"

.field public static final XBODY:I = 0x1

.field static final XBODY_SRC:[I

.field public static final XEMS:I

.field private static app:Landroid/content/Context;

.field private static volatile std:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 31
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u0413\u044a\u0440\u0434\u0438"

    aput-object v1, v0, v4

    const-string v1, "\u041a\u043e\u0440\u0435\u043c"

    aput-object v1, v0, v5

    const-string v1, "\u041f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v1, v0, v6

    const-string v1, "\u041f\u0440\u0430\u0441\u0435\u0446"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u0420\u044a\u0446\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0413\u0440\u044a\u0431"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u041a\u0440\u044a\u0441\u0442"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0413\u043b\u0443\u0442\u0435\u0443\u0441"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0417\u0430\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->BG:[Ljava/lang/String;

    .line 33
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Chest"

    aput-object v1, v0, v4

    const-string v1, "Abs"

    aput-object v1, v0, v5

    const-string v1, "Front thigh"

    aput-object v1, v0, v6

    const-string v1, "Calf"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Arms"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Traps"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Back"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Lower back"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Glutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Back thigh"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->EN:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->XBODY_SRC:[I

    .line 44
    new-array v0, v3, [I

    fill-array-data v0, :array_98

    sput-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->LIST_ORDER:[I

    .line 46
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->std:I

    return-void

    .line 41
    :array_80
    .array-data 4
        0x3
        0x9
        0x2
        0x0
        0x1
        0x7
        0x8
        0x6
        0x5
        0x4
    .end array-data

    .line 44
    :array_98
    .array-data 4
        0x4
        0x0
        0x1
        0x2
        0x6
        0x5
        0x7
        0x8
        0x9
        0x3
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 23
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->build(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 115
    :goto_3
    return-void

    .line 112
    :catch_4
    move-exception v0

    .line 113
    const-string v1, "SuitStandard.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 15

    .prologue
    const/16 v12, 0x1c

    const/4 v1, -0x1

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 118
    if-eqz p0, :cond_d

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 155
    :cond_d
    :goto_d
    return-void

    .line 119
    :cond_e
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->load(Landroid/content/Context;)V

    .line 120
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->scrollContent(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 121
    if-eqz v4, :cond_d

    .line 122
    const-string v0, "xems_suit_standard"

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 124
    if-eqz v5, :cond_11d

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, v4, :cond_11d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    move v3, v0

    .line 125
    :goto_2a
    if-eqz v5, :cond_3d

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3d

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 126
    :cond_3d
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 128
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->get()I

    move-result v0

    .line 129
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 130
    const-string v6, "xems_suit_standard"

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 131
    const-string v6, "\u0421\u0442\u0430\u043d\u0434\u0430\u0440\u0442 \u043d\u0430 \u043a\u043e\u0441\u0442\u044e\u043c\u0430"

    const-string v7, "Suit standard"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41b00000    # 22.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    const-string v6, "\u041f\u043b\u044a\u0437\u0433\u0430\u0447\u0438\u0442\u0435 \u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u0441\u044a\u0449\u0438\u0442\u0435 \u2014 \u0441\u043c\u0435\u043d\u044f \u0441\u0435 \u0441\u0430\u043c\u043e \u043a\u0430\u043d\u0430\u043b\u044a\u0442, \u043f\u043e \u043a\u043e\u0439\u0442\u043e \u0432\u0441\u044f\u043a\u0430 \u043c\u0443\u0441\u043a\u0443\u043b\u043d\u0430 \u0433\u0440\u0443\u043f\u0430 \u043e\u0442\u0438\u0432\u0430 \u043a\u044a\u043c \u043a\u043e\u0441\u0442\u044e\u043c\u0430."

    const-string v7, "The sliders stay the same \u2014 only the suit channel each muscle group goes out on changes."

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41600000    # 14.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 136
    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v6, v2, v7, v2, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "XEMS"

    aput-object v7, v6, v2

    const-string v7, "X-Body"

    aput-object v7, v6, v9

    new-instance v7, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;

    invoke-direct {v7, p0, p1}, Lcom/isaigu/gymapp/bodytech/SuitStandard$Pick;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-static {p0, v6, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    if-ne v0, v9, :cond_109

    .line 142
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v6

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "\u041a\u0430\u043d\u0430\u043b XEMS \u2192 \u043c\u0443\u0441\u043a\u0443\u043b X-Body:\n"

    const-string v1, "XEMS channel \u2192 X-Body muscle:\n"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 144
    :goto_b1
    const/16 v0, 0xa

    if-ge v1, v0, :cond_f3

    .line 145
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->LIST_ORDER:[I

    aget v8, v0, v1

    .line 146
    if-lez v1, :cond_c3

    const/4 v0, 0x5

    if-ne v1, v0, :cond_e8

    const-string v0, "\n"

    :goto_c0
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_c3
    if-eqz v6, :cond_eb

    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->BG:[Ljava/lang/String;

    aget-object v0, v0, v8

    :goto_c9
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " \u2192 "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v6, :cond_f0

    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->BG:[Ljava/lang/String;

    :goto_d7
    sget-object v10, Lcom/isaigu/gymapp/bodytech/SuitStandard;->XBODY_SRC:[I

    aget v8, v10, v8

    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b1

    .line 146
    :cond_e8
    const-string v0, " \u00b7 "

    goto :goto_c0

    .line 147
    :cond_eb
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->EN:[Ljava/lang/String;

    aget-object v0, v0, v8

    goto :goto_c9

    :cond_f0
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->EN:[Ljava/lang/String;

    goto :goto_d7

    .line 149
    :cond_f3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 150
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 151
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    :cond_109
    if-ltz v3, :cond_114

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 154
    :cond_114
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    :cond_11d
    move v3, v1

    goto/16 :goto_2a
.end method

.method private static currentApp()Landroid/content/Context;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 76
    :try_start_1
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    instance-of v2, v0, Landroid/content/Context;

    if-eqz v2, :cond_1f

    check-cast v0, Landroid/content/Context;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_21

    .line 79
    :goto_1e
    return-object v0

    :cond_1f
    move-object v0, v1

    .line 77
    goto :goto_1e

    .line 78
    :catch_21
    move-exception v0

    move-object v0, v1

    .line 79
    goto :goto_1e
.end method

.method public static fromSuit([B)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/16 v5, 0xa

    .line 98
    if-eqz p0, :cond_11

    :try_start_6
    array-length v1, p0

    const/16 v2, 0xb

    if-lt v1, v2, :cond_11

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->get()I

    move-result v1

    if-eq v1, v3, :cond_12

    .line 105
    :cond_11
    :goto_11
    return-void

    .line 99
    :cond_12
    const/16 v1, 0xa

    new-array v1, v1, [B

    .line 100
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    :goto_1d
    if-ge v0, v5, :cond_11

    sget-object v2, Lcom/isaigu/gymapp/bodytech/SuitStandard;->XBODY_SRC:[I

    aget v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, v1, v0

    aput-byte v3, p0, v2
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_29} :catch_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 102
    :catch_2c
    move-exception v0

    .line 103
    const-string v1, "SuitStandard.fromSuit"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static get()I
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 61
    sget v1, Lcom/isaigu/gymapp/bodytech/SuitStandard;->std:I

    if-gez v1, :cond_9

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->load(Landroid/content/Context;)V

    .line 62
    :cond_9
    sget v1, Lcom/isaigu/gymapp/bodytech/SuitStandard;->std:I

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static declared-synchronized load(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 52
    const-class v3, Lcom/isaigu/gymapp/bodytech/SuitStandard;

    monitor-enter v3

    :try_start_5
    sget v2, Lcom/isaigu/gymapp/bodytech/SuitStandard;->std:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_34

    if-ltz v2, :cond_b

    .line 58
    :cond_9
    :goto_9
    monitor-exit v3

    return-void

    .line 53
    :cond_b
    if-nez p0, :cond_39

    :try_start_d
    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->currentApp()Landroid/content/Context;

    move-result-object v2

    .line 54
    :goto_11
    if-eqz v2, :cond_9

    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :cond_1d
    sput-object v2, Lcom/isaigu/gymapp/bodytech/SuitStandard;->app:Landroid/content/Context;

    .line 56
    sget-object v2, Lcom/isaigu/gymapp/bodytech/SuitStandard;->app:Landroid/content/Context;

    const-string v4, "xems_suit_standard"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "std"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 57
    if-ne v2, v0, :cond_37

    :goto_31
    sput v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->std:I
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_34

    goto :goto_9

    .line 52
    :catchall_34
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_37
    move v0, v1

    .line 57
    goto :goto_31

    :cond_39
    move-object v2, p0

    goto :goto_11
.end method

.method static declared-synchronized set(Landroid/content/Context;I)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    const-class v2, Lcom/isaigu/gymapp/bodytech/SuitStandard;

    monitor-enter v2

    :try_start_5
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->load(Landroid/content/Context;)V

    .line 67
    if-ne p1, v0, :cond_2a

    :goto_a
    sput v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->std:I

    .line 68
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->app:Landroid/content/Context;

    if-eqz v0, :cond_28

    .line 69
    sget-object v0, Lcom/isaigu/gymapp/bodytech/SuitStandard;->app:Landroid/content/Context;

    const-string v1, "xems_suit_standard"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    const-string v1, "std"

    sget v3, Lcom/isaigu/gymapp/bodytech/SuitStandard;->std:I

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2c

    .line 72
    :cond_28
    monitor-exit v2

    return-void

    :cond_2a
    move v0, v1

    .line 67
    goto :goto_a

    .line 66
    :catchall_2c
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static toSuit([B)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/16 v5, 0xa

    .line 86
    if-eqz p0, :cond_11

    :try_start_6
    array-length v1, p0

    const/16 v2, 0xb

    if-lt v1, v2, :cond_11

    invoke-static {}, Lcom/isaigu/gymapp/bodytech/SuitStandard;->get()I

    move-result v1

    if-eq v1, v3, :cond_12

    .line 93
    :cond_11
    :goto_11
    return-void

    .line 87
    :cond_12
    const/16 v1, 0xa

    new-array v1, v1, [B

    .line 88
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {p0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :goto_1d
    if-ge v0, v5, :cond_11

    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lcom/isaigu/gymapp/bodytech/SuitStandard;->XBODY_SRC:[I

    aget v3, v3, v0

    aget-byte v3, v1, v3

    aput-byte v3, p0, v2
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_29} :catch_2c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 90
    :catch_2c
    move-exception v0

    .line 91
    const-string v1, "SuitStandard.toSuit"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method
