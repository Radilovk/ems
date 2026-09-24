.class public final Lcom/isaigu/gymapp/widget/XemsLicenseSection;
.super Ljava/lang/Object;
.source "XemsLicenseSection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "xems_license_section"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 28
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 32
    :goto_3
    return-void

    .line 29
    :catch_4
    move-exception v0

    .line 30
    const-string v1, "XemsLicenseSection.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 12

    .prologue
    .line 35
    if-eqz p0, :cond_6

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    .line 197
    :cond_6
    :goto_6
    return-void

    .line 38
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicense;->init(Landroid/content/Context;)V

    .line 39
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    move-object v0, p1

    .line 40
    check-cast v0, Landroid/view/ViewGroup;

    .line 41
    const-string v1, "xems_license_section"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 42
    if-eqz v1, :cond_1b

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    :cond_1b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 46
    const-string v1, "xems_license_section"

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 48
    const-string v1, "\u0414\u043e\u0441\u0442\u044a\u043f \u0438 \u043b\u0438\u0446\u0435\u043d\u0437"

    const-string v2, "Access & license"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41b00000    # 22.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {p0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->isFull()Z

    move-result v2

    .line 52
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->unlockedList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c1

    const/4 v1, 0x1

    .line 53
    :goto_47
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->statusTitle()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41900000    # 18.0f

    if-eqz v2, :cond_c3

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_51
    const/4 v2, 0x1

    invoke-static {p0, v4, v5, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 54
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->statusDetail()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {p0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 56
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 60
    const/16 v1, 0x10

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 61
    sget-object v5, Lcom/isaigu/gymapp/widget/XemsLicense;->ALL:[Ljava/lang/String;

    .line 62
    array-length v6, v5

    const/4 v1, 0x0

    move v2, v1

    :goto_82
    if-ge v2, v6, :cond_d1

    aget-object v7, v5, v2

    .line 63
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v8

    .line 64
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_cb

    const-string v1, "\u2713 "

    :goto_93
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->moduleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_ce

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    :goto_a7
    invoke-static {p0, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 65
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 68
    invoke-virtual {v4, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_82

    .line 52
    :cond_c1
    const/4 v1, 0x0

    goto :goto_47

    .line 53
    :cond_c3
    if-eqz v1, :cond_c8

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_51

    :cond_c8
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_51

    .line 64
    :cond_cb
    const-string v1, "\ud83d\udd12 "

    goto :goto_93

    :cond_ce
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto :goto_a7

    .line 70
    :cond_d1
    const-string v1, "arms_full"

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicense;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 71
    const-string v1, "\u2713 \u0420\u044a\u0446\u0435 1:1"

    const-string v2, "\u2713 Arms 1:1"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 72
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    :cond_eb
    new-instance v1, Landroid/widget/HorizontalScrollView;

    invoke-direct {v1, p0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 76
    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 77
    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const-string v1, "\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u0441\u043a\u0438 \u043a\u043b\u044e\u0447"

    const-string v2, "User key"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 81
    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 83
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 84
    const-string v2, "\u043d\u0430\u043f\u0440. XEMS-XXXX-XXXX"

    const-string v4, "e.g. XEMS-XXXX-XXXX"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->field(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    .line 85
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->key()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v4, 0x81001

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 88
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    const-string v4, "\u0410\u043a\u0442\u0438\u0432\u0438\u0440\u0430\u0439"

    const-string v5, "Activate"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 90
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x42400000    # 48.0f

    .line 91
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 93
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const/4 v5, 0x6

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const-string v1, ""

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {p0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 96
    const/4 v5, 0x6

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v5, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;

    invoke-direct {v5, v1, p0, v2, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection$1;-><init>(Landroid/widget/TextView;Landroid/app/Activity;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID \u043d\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e\u0442\u043e: "

    const-string v4, "Device ID: "

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->deviceIdShown()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v5, 0x0

    invoke-static {p0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 115
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 117
    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 121
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0412\u0435\u0440\u0441\u0438\u044f "

    const-string v5, "Version "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->appVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {p0, v2, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 124
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    const-string v4, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0437\u0430 \u043d\u043e\u0432\u0430"

    const-string v5, "Check for update"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    .line 126
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const/16 v5, 0x10

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;

    invoke-direct {v1, v2, p0, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseSection$2;-><init>(Landroid/widget/TextView;Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const-string v1, "\u0421\u044a\u0440\u0432\u044a\u0440 \u203a"

    const-string v2, "Server \u203a"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v5, 0x0

    invoke-static {p0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 162
    const/4 v2, 0x0

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 163
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 165
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 166
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    const-string v4, "https://\u2026"

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->field(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v4

    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->server()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 170
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    const-string v5, "\u0417\u0430\u043f\u0430\u0437\u0438"

    const-string v6, "Save"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {p0, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v5

    .line 172
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x42300000    # 44.0f

    .line 173
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 175
    invoke-virtual {v2, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    new-instance v6, Lcom/isaigu/gymapp/widget/XemsLicenseSection$3;

    invoke-direct {v6, v2, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection$3;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLicenseSection$4;

    invoke-direct {v2, v4, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection$4;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 195
    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 196
    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6
.end method

.method private static field(Landroid/app/Activity;Ljava/lang/String;)Landroid/widget/EditText;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41400000    # 12.0f

    .line 298
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 300
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 301
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 302
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 303
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 304
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 305
    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 306
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 307
    return-object v0
.end method

.method static moduleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 282
    const-string v0, "timer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 283
    const-string v0, "\u0422\u0430\u0439\u043c\u0435\u0440"

    const-string v1, "Timer"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :goto_10
    return-object v0

    .line 285
    :cond_11
    const-string v0, "music"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 286
    const-string v0, "\u041c\u0443\u0437\u0438\u043a\u0430"

    const-string v1, "Music"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 288
    :cond_22
    const-string v0, "pulse"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 289
    const-string v0, "\u041f\u0443\u043b\u0441"

    const-string v1, "Heart rate"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 291
    :cond_33
    const-string v0, "ai"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 292
    const-string v0, "AI"

    goto :goto_10

    .line 294
    :cond_3e
    const-string v0, "\u0427\u0430\u0441\u043e\u0432\u043d\u0438\u043a"

    const-string v1, "Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method static onActivated(Landroid/app/Activity;Landroid/view/View;Landroid/widget/TextView;ZLjava/lang/String;)V
    .registers 7

    .prologue
    .line 200
    if-eqz p3, :cond_2a

    .line 201
    const-string v0, "reset"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "\u0411\u0430\u0437\u043e\u0432 \u0440\u0435\u0436\u0438\u043c"

    const-string v1, "Base mode"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    :goto_12
    const/4 v1, 0x0

    .line 201
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->attach(Landroid/app/Activity;Landroid/view/View;)V

    .line 205
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->onLicenseChanged()V

    .line 210
    :goto_20
    return-void

    .line 202
    :cond_21
    const-string v0, "\u041c\u043e\u0434\u0443\u043b\u0438\u0442\u0435 \u0441\u0430 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u0438"

    const-string v1, "Modules unlocked"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 208
    :cond_2a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    invoke-static {p4}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->reason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method static reason(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 244
    const-string v0, "no_server"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 245
    const-string v0, "\u041d\u0435\u0432\u0430\u043b\u0438\u0434\u0435\u043d \u043a\u043b\u044e\u0447. \u041e\u0442\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435 \u043f\u0440\u0435\u0437 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442 \u043e\u0449\u0435 \u043d\u0435 \u0435 \u043d\u0430\u043b\u0438\u0447\u043d\u043e."

    const-string v1, "Invalid key. Online unlocking is not available yet."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_10
    return-object v0

    .line 248
    :cond_11
    const-string v0, "offline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 249
    const-string v0, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441\u044a\u0441 \u0441\u044a\u0440\u0432\u044a\u0440\u0430. \u041e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v1, "Cannot reach the server. Try again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 251
    :cond_22
    const-string v0, "invalid_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 252
    const-string v0, "\u041d\u0435\u0432\u0430\u043b\u0438\u0434\u0435\u043d \u043a\u043b\u044e\u0447"

    const-string v1, "Invalid key"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 254
    :cond_33
    const-string v0, "expired"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 255
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0435 \u0438\u0437\u0442\u0435\u043a\u044a\u043b"

    const-string v1, "The key has expired"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 257
    :cond_44
    const-string v0, "device_limit"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 258
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0432\u0435\u0447\u0435 \u0435 \u043f\u043e\u043b\u0437\u0432\u0430\u043d \u043d\u0430 \u043c\u0430\u043a\u0441\u0438\u043c\u0443\u043c\u0430 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430"

    const-string v1, "The key is already used on the maximum number of devices"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 260
    :cond_55
    const-string v0, "revoked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "disabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 261
    :cond_65
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0435 \u0441\u043f\u0440\u044f\u043d"

    const-string v1, "The key is disabled"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 263
    :cond_6e
    const-string v0, "no_server_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    const-string v0, "bad_signature"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    const-string v0, "bad_token"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 264
    :cond_86
    const-string v0, "\u041e\u0442\u0433\u043e\u0432\u043e\u0440\u044a\u0442 \u043d\u0430 \u0441\u044a\u0440\u0432\u044a\u0440\u0430 \u043d\u0435 \u0435 \u043f\u0440\u043e\u0432\u0435\u0440\u0435\u043d (\u043f\u043e\u0434\u043f\u0438\u0441)"

    const-string v1, "The server answer failed the signature check"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 266
    :cond_8f
    const-string v0, "other_device"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 267
    const-string v0, "\u041a\u043b\u044e\u0447\u044a\u0442 \u0435 \u0438\u0437\u0434\u0430\u0434\u0435\u043d \u0437\u0430 \u0434\u0440\u0443\u0433\u043e \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u043e"

    const-string v1, "The key was issued for another device"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 269
    :cond_a1
    const-string v0, "bad_checksum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 270
    const-string v0, "\u0418\u0437\u0442\u0435\u0433\u043b\u0435\u043d\u0438\u044f\u0442 \u0444\u0430\u0439\u043b \u0435 \u043f\u043e\u0432\u0440\u0435\u0434\u0435\u043d"

    const-string v1, "The download is damaged"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 272
    :cond_b3
    const-string v0, "download_failed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 273
    const-string v0, "\u0418\u0437\u0442\u0435\u0433\u043b\u044f\u043d\u0435\u0442\u043e \u043d\u0435 \u043c\u0438\u043d\u0430"

    const-string v1, "Download failed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 275
    :cond_c5
    const-string v0, "install_failed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 276
    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0430\u0442\u043e\u0440\u044a\u0442 \u043d\u0435 \u0441\u0435 \u043e\u0442\u0432\u043e\u0440\u0438"

    const-string v1, "The installer did not open"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 278
    :cond_d7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0413\u0440\u0435\u0448\u043a\u0430: "

    const-string v2, "Error: "

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10
.end method

.method static statusDetail()Ljava/lang/String;
    .registers 10

    .prologue
    .line 223
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->source()Ljava/lang/String;

    move-result-object v1

    .line 224
    const-string v0, "arms_full"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 225
    const-string v0, " \u00b7 \u0440\u044a\u0446\u0435\u0442\u0435 \u0441 \u043d\u043e\u0440\u043c\u0430\u043b\u043d\u0430 \u0441\u0438\u043b\u0430 (\u0441\u0442\u044a\u043f\u043a\u0430 1:1)"

    const-string v2, " \u00b7 arms at normal strength (step 1:1)"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_14
    const-string v2, "code"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u043e \u0441 \u043a\u043e\u0434 \u00b7 \u0431\u0435\u0437 \u0441\u0440\u043e\u043a"

    const-string v3, "Unlocked with a code \u00b7 no end date"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_35
    return-object v0

    .line 225
    :cond_36
    const-string v0, ""

    goto :goto_14

    .line 229
    :cond_39
    const-string v2, "server"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 230
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->expiresS()J

    move-result-wide v2

    .line 231
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->plan()Ljava/lang/String;

    move-result-object v4

    .line 232
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-nez v1, :cond_c2

    const-string v1, "\u0431\u0435\u0437 \u0441\u0440\u043e\u043a"

    const-string v2, "no end date"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    :goto_57
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->graceDaysLeft()I

    move-result v3

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041f\u043b\u0430\u043d "

    const-string v7, "Plan "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u00b7 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_85
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 236
    if-ltz v3, :cond_f5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 \u0438\u0437\u0442\u0435\u043a\u044a\u043b, \u0440\u0430\u0431\u043e\u0442\u0438 \u043e\u0449\u0435 "

    const-string v5, " \u00b7 expired, works "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u0434\u043d\u0438"

    const-string v4, " more days"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_b4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_35

    .line 233
    :cond_c2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0434\u043e "

    const-string v6, "until "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "dd.MM.yyyy"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    .line 235
    :cond_f2
    const-string v2, ""

    goto :goto_85

    .line 236
    :cond_f5
    const-string v1, ""

    goto :goto_b4

    .line 239
    :cond_f8
    const-string v0, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0431\u0435\u0437 \u0434\u043e\u043f\u044a\u043b\u043d\u0438\u0442\u0435\u043b\u043d\u0438\u0442\u0435 \u043c\u043e\u0434\u0443\u043b\u0438. \u0412\u044a\u0432\u0435\u0434\u0438 \u043a\u043b\u044e\u0447, \u0437\u0430 \u0434\u0430 \u0433\u0438 \u043e\u0442\u043a\u043b\u044e\u0447\u0438\u0448."

    const-string v1, "Training without the add-on modules. Enter a key to unlock them."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_35
.end method

.method static statusTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->isFull()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 214
    const-string v0, "\u041f\u044a\u043b\u0435\u043d \u0434\u043e\u0441\u0442\u044a\u043f"

    const-string v1, "Full access"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_e
    return-object v0

    .line 216
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->unlockedList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 217
    const-string v0, "\u0427\u0430\u0441\u0442\u0438\u0447\u0435\u043d \u0434\u043e\u0441\u0442\u044a\u043f"

    const-string v1, "Partial access"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 219
    :cond_22
    const-string v0, "\u0411\u0430\u0437\u043e\u0432 \u0440\u0435\u0436\u0438\u043c"

    const-string v1, "Base mode"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 312
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p0

    .line 314
    :goto_4
    return-object p0

    .line 313
    :catch_5
    move-exception v0

    goto :goto_4
.end method
