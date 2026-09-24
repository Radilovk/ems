.class public final Lcom/isaigu/gymapp/widget/XemsLocalSection;
.super Ljava/lang/Object;
.source "XemsLocalSection.java"


# static fields
.field public static final REQ_EXPORT:I = 0x7e01

.field public static final REQ_IMPORT:I = 0x7e02

.field private static final TAG:Ljava/lang/String; = "xems_local_section"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .registers 1

    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->startExport(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .registers 1

    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->startImport(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .line 24
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->confirmFinish(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .line 33
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 36
    goto :goto_c

    .line 34
    :catchall_4
    move-exception p0

    .line 35
    const-string p1, "xems_local"

    const-string v0, "attach failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :goto_c
    return-void
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 15

    .line 54
    if-eqz p0, :cond_1e2

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    goto/16 :goto_1e2

    .line 57
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->findScrollContent(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 58
    if-nez v0, :cond_12

    .line 59
    return-void

    .line 61
    :cond_12
    const-string v1, "xems_local_section"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 62
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2b

    .line 63
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    :cond_2b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v2

    .line 66
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 69
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v5

    .line 70
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 71
    const v5, -0xe1e1e2

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 73
    const-string v5, "\u0422\u0430\u0431\u043b\u0435\u0442 \u0438 \u0434\u0430\u043d\u043d\u0438"

    const-string v6, "Tablet and data"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x14

    invoke-static {p0, v5, v6, v4}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    if-eqz v2, :cond_6c

    .line 76
    const-string v5, "\u0420\u0435\u0436\u0438\u043c: \u041d\u0410\u0421\u0422\u0420\u041e\u0419\u041a\u0410 (\u0430\u0434\u043c\u0438\u043d). \u0412\u0441\u0438\u0447\u043a\u043e \u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u043e; \u0432\u0441\u0435\u043a\u0438 \u043e\u0442\u043a\u0440\u0438\u0442 \u043a\u043e\u0441\u0442\u044e\u043c \u0441\u0435 \u0441\u0434\u0432\u043e\u044f\u0432\u0430 \u043f\u0440\u0438 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435."

    const-string v7, "Mode: SETUP (admin). Everything is unlocked; any suit found is paired when it connects."

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_74

    .line 78
    :cond_6c
    const-string v5, "\u0420\u0435\u0436\u0438\u043c: \u043f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b. \u0412\u0438\u0436\u0434\u0430\u0442 \u0441\u0435 \u0441\u0430\u043c\u043e \u043f\u043e\u0437\u0432\u043e\u043b\u0435\u043d\u0438\u0442\u0435 \u043a\u043e\u0441\u0442\u044e\u043c\u0438."

    const-string v7, "Mode: user. Only the allowed suits are shown."

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_74
    const/16 v7, 0xe

    .line 75
    invoke-static {p0, v5, v7, v4}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    .line 80
    if-eqz v2, :cond_7f

    const/16 v5, -0x48b3

    goto :goto_82

    :cond_7f
    const v5, -0x7e387c

    :goto_82
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->pairedCount(Landroid/content/Context;)I

    move-result v4

    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->allowedEms()Ljava/util/Set;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_a1

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->allowedEms()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    goto :goto_a2

    :cond_a1
    const/4 v7, 0x0

    .line 85
    :goto_a2
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->key()Ljava/lang/String;

    move-result-object v9

    .line 86
    if-eqz v9, :cond_d4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_af

    goto :goto_d4

    .line 89
    :cond_af
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u041f\u0440\u043e\u0444\u0438\u043b: \u043a\u043b\u044e\u0447 \u2026"

    const-string v12, "Profile: key \u2026"

    invoke-static {v11, v12}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v5

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_dc

    .line 87
    :cond_d4
    :goto_d4
    const-string v5, "\u041f\u0440\u043e\u0444\u0438\u043b: \u043d\u044f\u043c\u0430 \u043a\u043b\u044e\u0447 (\u0432\u044a\u0432\u0435\u0434\u0438 \u0433\u043e \u0432 \u201e\u0414\u043e\u0441\u0442\u044a\u043f \u0438 \u043b\u0438\u0446\u0435\u043d\u0437\u201c)."

    const-string v9, "Profile: no key (enter it under Access and licence)."

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    :goto_dc
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v10, "\u041a\u043e\u0441\u0442\u044e\u043c\u0438: "

    const-string v11, "Suits: "

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u0441\u0434\u0432\u043e\u0435\u043d\u0438 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430, "

    const-string v10, " paired on this tablet, "

    invoke-static {v4, v10}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v4, " \u043e\u0442 \u0441\u044a\u0440\u0432\u044a\u0440\u0430."

    const-string v7, " from the server."

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v4, "\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u0438, \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u0438 \u0438\u0441\u0442\u043e\u0440\u0438\u044f \u0441\u0435 \u043f\u0430\u0437\u044f\u0442 \u0441\u0430\u043c\u043e \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430."

    const-string v5, "Users, programs and history stay on this tablet only."

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    .line 90
    invoke-static {p0, v4, v5, v8}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    .line 95
    const v5, -0x4f4f50

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    const-string v5, "\u0415\u043a\u0441\u043f\u043e\u0440\u0442"

    const-string v7, "Export"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v7, -0xbc5fb9

    invoke-static {p0, v5, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v5

    .line 101
    new-instance v9, Lcom/isaigu/gymapp/widget/XemsLocalSection$1;

    invoke-direct {v9, p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    if-eqz v2, :cond_184

    .line 108
    const-string v5, "\u0418\u043c\u043f\u043e\u0440\u0442"

    const-string v9, "Import"

    invoke-static {v5, v9}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v5

    .line 109
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalSection$2;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 115
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v6

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 116
    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    goto :goto_1a9

    .line 118
    :cond_184
    const-string v5, "\u041e\u0431\u043d\u043e\u0432\u0438 \u043e\u0442 \u0441\u044a\u0440\u0432\u044a\u0440\u0430"

    const-string v7, "Update from server"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v7, -0xe1771b

    invoke-static {p0, v5, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v5

    .line 119
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalSection$3;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 127
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v6

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 128
    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :goto_1a9
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    if-eqz v2, :cond_1d2

    .line 133
    const-string v2, "\u041a\u0440\u0430\u0439 \u043d\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0442\u0430"

    const-string v4, "Finish setup"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v4, -0x1ac6cb

    invoke-static {p0, v2, v4}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    .line 134
    new-instance v4, Lcom/isaigu/gymapp/widget/XemsLocalSection$4;

    invoke-direct {v4, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection$4;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const/16 p1, 0xc

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    :cond_1d2
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result p0

    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 145
    invoke-virtual {v0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void

    .line 55
    :cond_1e2
    :goto_1e2
    return-void
.end method

.method private static button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;
    .registers 4

    .line 210
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 211
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 213
    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    .line 214
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 215
    return-object v0
.end method

.method private static confirmFinish(Landroid/app/Activity;Landroid/view/View;)V
    .registers 7

    .line 149
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    const-string v1, "\u041a\u0440\u0430\u0439 \u043d\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0442\u0430?"

    const-string v2, "Finish setup?"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0422\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u043c\u0438\u043d\u0430\u0432\u0430 \u0432 \u043f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u0441\u043a\u0438 \u0440\u0435\u0436\u0438\u043c: \u043c\u043e\u0434\u0443\u043b\u0438\u0442\u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0442 \u043b\u0438\u0446\u0435\u043d\u0437\u0430, \u0432\u0438\u0436\u0434\u0430\u0442 \u0441\u0435 \u0441\u0430\u043c\u043e \u0441\u0434\u0432\u043e\u0435\u043d\u0438\u0442\u0435 \u043a\u043e\u0441\u0442\u044e\u043c\u0438 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->pairedCount(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") \u0438 \u0442\u0435\u0437\u0438, \u043a\u043e\u0438\u0442\u043e \u0441\u044a\u0440\u0432\u044a\u0440\u044a\u0442 \u0434\u043e\u0431\u0430\u0432\u0438. \u041e\u0431\u0440\u0430\u0442\u043d\u043e \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u2014 \u0441 \u043a\u043b\u044e\u0447 0123."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The tablet switches to user mode: modules follow the licence and only the paired suits ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->pairedCount(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and those the server adds are shown. Back to setup with the key 0123."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->isAdminKey()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 158
    const-string v2, "\n\n\u0412\u041d\u0418\u041c\u0410\u041d\u0418\u0415: \u0430\u043a\u0442\u0438\u0432\u043d\u0438\u044f\u0442 \u043a\u043b\u044e\u0447 \u0435 0123 \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0449\u0435 \u043e\u0441\u0442\u0430\u043d\u0435 \u0441 \u043f\u044a\u043b\u043d\u0438 \u043f\u0440\u0430\u0432\u0430. \u0412\u044a\u0432\u0435\u0434\u0438 \u043f\u044a\u0440\u0432\u043e \u043a\u043b\u044e\u0447\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "\n\nWARNING: the active key is 0123, the customer keeps full rights. Enter the customer\'s key first."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_62

    .line 162
    :cond_60
    const-string v2, ""

    :goto_62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 163
    const-string v1, "\u0417\u0430\u043a\u043b\u044e\u0447\u0438"

    const-string v2, "Lock"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 170
    const-string p1, "\u041e\u0442\u043a\u0430\u0437"

    const-string v0, "Cancel"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 172
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 3

    .line 226
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static findScrollContent(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 6

    .line 175
    instance-of v0, p0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 177
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 180
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_55

    .line 181
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 182
    instance-of v3, v2, Landroid/widget/ScrollView;

    if-eqz v3, :cond_45

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_45

    .line 183
    move-object v3, v2

    check-cast v3, Landroid/widget/ScrollView;

    .line 184
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_45

    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_45

    .line 185
    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 188
    :cond_45
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_52

    .line 189
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->findScrollContent(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 190
    if-eqz v2, :cond_52

    .line 191
    return-object v2

    .line 180
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 195
    :cond_55
    return-object p0
.end method

.method private static matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .line 219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 222
    return-object v0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 6

    .line 40
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_24

    if-eqz p3, :cond_24

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_24

    .line 43
    :cond_d
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 44
    const/16 p3, 0x7e01

    if-ne p1, p3, :cond_1a

    .line 45
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->exportBackup(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result p0

    return p0

    .line 47
    :cond_1a
    const/16 p3, 0x7e02

    if-ne p1, p3, :cond_23

    .line 48
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->importBackup(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result p0

    return p0

    .line 50
    :cond_23
    return v0

    .line 41
    :cond_24
    :goto_24
    return v0
.end method

.method private static startExport(Landroid/app/Activity;)V
    .registers 4

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "xems-backup.json"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/16 v1, 0x7e01

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    return-void
.end method

.method private static startImport(Landroid/app/Activity;)V
    .registers 3

    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/16 v1, 0x7e02

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 242
    return-void
.end method

.method private static text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 5

    .line 199
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 200
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    int-to-float p0, p2

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 202
    const p0, -0x171718

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    if-eqz p3, :cond_1a

    .line 204
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 206
    :cond_1a
    return-object v0
.end method

.method private static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 245
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    move-object p0, p1

    :goto_8
    return-object p0
.end method
