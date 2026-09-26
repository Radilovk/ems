.class public final Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;
    }
.end annotation


# static fields
.field private static final STATUS:Ljava/lang/Runnable;

.field private static final TAG:Ljava/lang/String; = "xems_band_settings"

.field private static final TEST_MS:J = 0xea60L

.field private static bandInfoView:Landroid/widget/TextView;

.field private static final handler:Landroid/os/Handler;

.field private static keyView:Landroid/widget/EditText;

.field private static macView:Landroid/widget/EditText;

.field private static statusView:Landroid/widget/TextView;

.field private static testUntilMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    .line 400
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$8;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$8;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/EditText;
    .registers 1

    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isKeyHidden()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Landroid/os/Handler;
    .registers 1

    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .line 24
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200()V
    .registers 0

    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->colorFields()V

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/Runnable;
    .registers 1

    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Z)V
    .registers 1

    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->setKeyHidden(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;)V
    .registers 1

    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTest(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400()Landroid/widget/EditText;
    .registers 1

    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Landroid/app/Activity;)V
    .registers 1

    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTestAfterPermission(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .registers 1

    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Landroid/app/Activity;)V
    .registers 1

    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->refreshStatus(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800()J
    .registers 2

    .line 24
    sget-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    return-wide v0
.end method

.method static synthetic access$900(Landroid/app/Activity;)V
    .registers 1

    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->endTest(Landroid/app/Activity;)V

    return-void
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->attach(Landroid/app/Activity;Landroid/view/View;)V

    .line 41
    :try_start_3
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 44
    goto :goto_d

    .line 42
    :catchall_7
    move-exception p0

    .line 43
    const-string p1, "WearableSettingsSection.attach"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :goto_d
    return-void
.end method

.method static bandInfo(Landroid/app/Activity;)Ljava/lang/String;
    .registers 5

    .line 462
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 464
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->modelLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    move-object p0, v0

    goto :goto_24

    :cond_19
    if-eqz p0, :cond_1c

    goto :goto_24

    .line 467
    :cond_1c
    const-string p0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u0441\u0434\u0432\u043e\u0435\u043d\u0430 \u0441 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430"

    const-string v0, "The band is not paired with the phone"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 466
    :goto_24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 469
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getBatteryPercent()I

    move-result p0

    .line 470
    const-string v0, " \u00b7 "

    if-ltz p0, :cond_4b

    .line 471
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u0431\u0430\u0442\u0435\u0440\u0438\u044f "

    const-string v3, "battery "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " %"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_4b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result p0

    if-eqz p0, :cond_5f

    .line 474
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u043d\u0435 \u0435 \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430"

    const-string v0, "not worn"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 18

    .line 48
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_33b

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_c

    goto/16 :goto_33b

    .line 51
    :cond_c
    invoke-static/range {p0 .. p1}, Lcom/isaigu/gymapp/widget/XemsUi;->scrollContent(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 52
    if-nez v2, :cond_13

    .line 53
    return-void

    .line 55
    :cond_13
    const-string v3, "xems_band_settings"

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 56
    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2c

    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    :cond_2c
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->needsBand()Z

    move-result v4

    if-nez v4, :cond_33

    .line 61
    return-void

    .line 63
    :cond_33
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->applyDefaultsIfEmpty(Landroid/content/Context;)V

    .line 64
    const-string v4, "band"

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v4

    .line 65
    const-string v5, "text_primary"

    const/4 v6, -0x1

    invoke-static {v0, v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 66
    const v7, -0x655f5a

    const-string v8, "text_secondary"

    invoke-static {v0, v8, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 67
    const v8, -0xe0dcd4

    const-string v9, "bg_elevated"

    invoke-static {v0, v9, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 69
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 71
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v8, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const/high16 v8, 0x41900000    # 18.0f

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v8

    .line 74
    invoke-virtual {v9, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 76
    const-string v8, "\u0413\u0440\u0438\u0432\u043d\u0430 \u00b7 Xiaomi Smart Band"

    const-string v10, "Band \u00b7 Xiaomi Smart Band"

    invoke-static {v8, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v10, 0x41b00000    # 22.0f

    invoke-static {v0, v8, v10, v5, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 78
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    const-string v8, "\u0412\u044a\u0432\u0435\u0436\u0434\u0430 \u0441\u0435 \u0432\u0435\u0434\u043d\u044a\u0436. \u041f\u043e\u043b\u0437\u0432\u0430 \u0441\u0435 \u043e\u0442 \u2665 \u043f\u0443\u043b\u0441, AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0438 \u0434\u0430\u043d\u043d\u0438\u0442\u0435 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430."

    const-string v10, "Entered once. Used by the \u2665 HR dial, the AI session and band data."

    invoke-static {v8, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v10, 0x41500000    # 13.0f

    const/4 v11, 0x0

    invoke-static {v0, v8, v10, v7, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 82
    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v8, v11, v12, v11, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 83
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 87
    const-string v12, "MAC"

    invoke-static {v0, v12, v7}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v12

    sput-object v12, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    .line 89
    const-string v14, "AA:BB:CC:DD:EE:FF"

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 90
    sget-object v12, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    const v14, 0x81001

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setInputType(I)V

    .line 92
    sget-object v12, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget-object v12, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x42300000    # 44.0f

    invoke-static {v0, v15}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v14, v11, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const-string v10, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v12, "Choose"

    invoke-static {v10, v12}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const v12, -0xea9a40

    invoke-static {v0, v10, v12, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v10

    .line 95
    new-instance v12, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;

    invoke-direct {v12, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 106
    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v8, v11, v12, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 107
    const-string v12, "\u041a\u043b\u044e\u0447"

    const-string v14, "Key"

    invoke-static {v12, v14}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12, v7}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v12

    sput-object v12, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    .line 109
    const-string v14, "32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 0-9 / a-f"

    const-string v3, "32 chars 0-9 / a-f"

    invoke-static {v14, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 110
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    sget-object v12, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->setKeyHidden(Z)V

    .line 113
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v15}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-direct {v12, v11, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const-string v3, "\u041f\u043e\u043a\u0430\u0436\u0438"

    const-string v12, "Show"

    invoke-static {v3, v12}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    const-string v12, "bg_screen"

    const v14, -0xd5d5d6

    invoke-static {v0, v12, v14}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 114
    invoke-static {v0, v3, v15, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    .line 116
    new-instance v15, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;

    invoke-direct {v15, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v8, v3, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    const-string v3, "\u041e\u0442 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438\u0442\u0435 / \u043f\u043e\u0441\u0442\u0430\u0432\u0438"

    const-string v8, "From saved / paste"

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v0, v12, v14}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 127
    invoke-static {v0, v3, v8, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    .line 129
    new-instance v8, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;

    invoke-direct {v8, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x42400000    # 48.0f

    .line 136
    invoke-static {v0, v15}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-direct {v8, v6, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v10

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 138
    invoke-virtual {v9, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    nop

    .line 144
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 147
    const-string v8, "\u041c\u043e\u0434\u0435\u043b \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v10, "Band model"

    invoke-static {v8, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v8

    .line 148
    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v15

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v8, v11, v15, v11, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 149
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    .line 151
    const-string v10, "\u0410\u0432\u0442\u043e"

    const-string v15, "Auto"

    invoke-static {v10, v15}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v11

    .line 152
    const-string v10, "Band 8 \u0438 \u043f\u043e-\u0441\u0442\u0430\u0440\u0438"

    const-string v15, "Band 8 and older"

    invoke-static {v10, v15}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x1

    aput-object v10, v8, v15

    const-string v10, "Band 9 / 10"

    const/4 v15, 0x2

    aput-object v10, v8, v15

    .line 153
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v10

    new-instance v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;

    invoke-direct {v6, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 150
    invoke-static {v0, v8, v10, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    if-nez v4, :cond_206

    const/4 v1, 0x0

    goto :goto_223

    .line 156
    :cond_206
    const-string v1, "\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v6, "Control from the band"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    const-string v6, "\u041f\u043b\u044a\u0437\u043d\u0438 \u0434\u043e \u041c\u0443\u0437\u0438\u043a\u0430: \u043f\u0443\u043b\u0441 \u0438 \u0431\u043b\u043e\u043a; \u25b6 \u0441\u0442\u0430\u0440\u0442/\u043f\u0430\u0443\u0437\u0430, \u23ed \u23ee \u0441\u0438\u043b\u0430 \u00b1."

    const-string v8, "Swipe to Music: HR and block; \u25b6 start/pause, \u23ed \u23ee strength \u00b1."

    invoke-static {v6, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 159
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v8

    new-instance v10, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;

    invoke-direct {v10, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;-><init>(Landroid/app/Activity;)V

    .line 155
    invoke-static {v0, v1, v6, v8, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 160
    :goto_223
    if-eqz v1, :cond_231

    .line 161
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v1, v11, v8, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 162
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    :cond_231
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v15, :cond_246

    .line 166
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_244

    .line 167
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_244

    goto :goto_246

    :cond_244
    const/4 v15, 0x0

    goto :goto_247

    :cond_246
    :goto_246
    const/4 v15, 0x1

    .line 168
    :goto_247
    const/4 v1, -0x2

    if-eqz v15, :cond_2b6

    if-eqz v4, :cond_2b6

    .line 169
    nop

    .line 170
    const-string v3, "\u041e\u0442\u0432\u043e\u0440\u0438 XEMS \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430: \u0432\u0434\u0438\u0433\u043d\u0438 \u043a\u0438\u0442\u043a\u0430\u0442\u0430, \u043f\u043b\u044a\u0437\u043d\u0438 \u043d\u0430\u0433\u043e\u0440\u0435, \u043f\u0440\u0435\u0432\u044a\u0440\u0442\u0438 \u0434\u043e XEMS. \u0412 Mi Fitness \u0433\u043e \u043d\u044f\u043c\u0430 \u2014 \u0442\u0430\u043c \u0441\u0430 \u0441\u0430\u043c\u043e \u0441\u0438\u0441\u0442\u0435\u043c\u043d\u0438\u0442\u0435 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u044f \u0438 \u043d\u0435 \u0441\u0435 \u043f\u043e\u0434\u0440\u0435\u0436\u0434\u0430."

    const-string v4, "Open XEMS on the band: raise the wrist, swipe up, scroll to XEMS. It is not in Mi Fitness \u2014 that list is system apps only and cannot be sorted."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v0, v3, v4, v7, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 173
    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v11, v6, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 174
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 176
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v11, v4, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 177
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static {v0, v4, v6, v7, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 178
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->bind(Landroid/widget/TextView;)V

    .line 179
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v6

    const/16 v8, 0x3a

    if-lt v6, v8, :cond_294

    .line 182
    const-string v6, "\u041f\u0440\u0435\u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    const-string v8, "Reinstall"

    goto :goto_298

    :cond_294
    const-string v6, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    const-string v8, "Install"

    :goto_298
    invoke-static {v6, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-static {v0, v12, v14}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 181
    invoke-static {v0, v6, v8, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v5

    .line 184
    new-instance v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;

    invoke-direct {v6, v0, v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    :cond_2b6
    const-string v3, ""

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v0, v3, v4, v7, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    .line 194
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v11, v5, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 195
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 199
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v11, v6, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 200
    const/4 v6, 0x1

    invoke-static {v0, v3, v5, v7, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    .line 201
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v1, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    const-string v3, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430"

    const-string v5, "Test connection"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v5, -0xd182ce

    const/4 v6, -0x1

    invoke-static {v0, v3, v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    .line 205
    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$5;

    invoke-direct {v5, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;

    invoke-direct {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;-><init>(Landroid/app/Activity;)V

    .line 215
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->colorFields()V

    .line 219
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 221
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 222
    invoke-virtual {v2, v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;-><init>()V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 224
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->scheduleStatus(Landroid/app/Activity;)V

    .line 225
    return-void

    .line 49
    :cond_33b
    :goto_33b
    return-void
.end method

.method private static colorFields()V
    .registers 6

    .line 347
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    const v1, -0x994496

    const v2, -0x10acb0

    const v3, -0x555556

    if-eqz v0, :cond_31

    .line 348
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_21

    const v0, -0x555556

    goto :goto_2e

    .line 350
    :cond_21
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const v0, -0x994496

    goto :goto_2e

    :cond_2b
    const v0, -0x10acb0

    .line 349
    :goto_2e
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 352
    :cond_31
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-eqz v0, :cond_56

    .line 353
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_49

    const v1, -0x555556

    goto :goto_53

    .line 355
    :cond_49
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    goto :goto_53

    :cond_50
    const v1, -0x10acb0

    .line 354
    :goto_53
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 357
    :cond_56
    return-void
.end method

.method private static endTest(Landroid/app/Activity;)V
    .registers 3

    .line 514
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    .line 515
    const-string v0, "settings"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method private static field(Landroid/app/Activity;I)Landroid/widget/EditText;
    .registers 5

    .line 242
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 243
    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 244
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 245
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 246
    const/high16 p1, 0x41400000    # 12.0f

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 247
    const-string p1, "bg_screen"

    const v1, -0xededee

    invoke-static {p0, p1, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 248
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    .line 247
    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    return-object v0
.end method

.method private static flushConfigFromUi(Landroid/app/Activity;)V
    .registers 4

    .line 360
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 361
    :goto_15
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_26
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 362
    :goto_2a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 363
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    :cond_37
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 366
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 368
    :cond_40
    return-void
.end method

.method private static isKeyHidden()Z
    .registers 1

    .line 260
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static isValidKey(Ljava/lang/String;)Z
    .registers 3

    .line 334
    const-string v0, ""

    if-eqz p0, :cond_16

    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_16
    const-string p0, "0x"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_26

    const-string p0, "0X"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 336
    :cond_26
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    :cond_2b
    const-string p0, "[0-9a-fA-F]{32}"

    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isValidMac(Ljava/lang/String;)Z
    .registers 3

    .line 342
    const-string v0, ""

    if-eqz p0, :cond_16

    const-string v1, ":"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_16
    const-string p0, "[0-9a-fA-F]{12}"

    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 5

    .line 235
    const/high16 v0, 0x41400000    # 12.0f

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object p1

    .line 236
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 237
    const/high16 p2, 0x42800000    # 64.0f

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 238
    return-object p1
.end method

.method private static refreshStatus(Landroid/app/Activity;)V
    .registers 8

    .line 420
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_b4

    if-nez p0, :cond_8

    goto/16 :goto_b4

    .line 424
    :cond_8
    nop

    .line 425
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v1

    .line 427
    sget-wide v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_26

    .line 428
    const-string v2, "settings"

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isOwnedBy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_26

    :cond_24
    const/4 v2, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v2, 0x1

    .line 429
    :goto_27
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v3

    .line 430
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v4

    const v5, -0x994496

    const v6, -0x10acb0

    if-eqz v4, :cond_93

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_93

    .line 433
    :cond_42
    if-nez v3, :cond_5e

    if-eqz v2, :cond_47

    goto :goto_5e

    .line 446
    :cond_47
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 447
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    const v5, -0x10acb0

    goto :goto_9e

    .line 450
    :cond_55
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u2713 \u00b7 \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d\u0430"

    const-string v1, "Saved \u2713 \u00b7 not connected"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    goto :goto_9e

    .line 434
    :cond_5e
    :goto_5e
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 435
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    const v5, -0x10acb0

    goto :goto_9e

    .line 437
    :cond_6c
    if-lez v1, :cond_7b

    const-string v2, "streaming"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 438
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    goto :goto_9e

    .line 441
    :cond_7b
    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_88

    .line 442
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    .line 443
    :cond_88
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_90
    const/16 v5, -0x339a

    goto :goto_9e

    .line 431
    :cond_93
    :goto_93
    const-string v0, "\u041d\u0435 \u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430"

    const-string v1, "Not set up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    const v5, -0x555556

    .line 453
    :goto_9e
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_b3

    .line 456
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfo(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :cond_b3
    return-void

    .line 421
    :cond_b4
    :goto_b4
    return-void
.end method

.method private static row(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .registers 2

    .line 228
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 229
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 230
    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 231
    return-object v0
.end method

.method private static scheduleStatus(Landroid/app/Activity;)V
    .registers 2

    .line 396
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 397
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 398
    return-void
.end method

.method private static setKeyHidden(Z)V
    .registers 4

    .line 264
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 265
    return-void

    .line 267
    :cond_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 268
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    const v2, 0x80001

    .line 269
    if-eqz p0, :cond_13

    const/16 p0, 0x80

    goto :goto_15

    .line 270
    :cond_13
    const/16 p0, 0x90

    :goto_15
    or-int/2addr p0, v2

    .line 268
    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 271
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 272
    if-ltz v0, :cond_2f

    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result p0

    if-gt v0, p0, :cond_2f

    .line 273
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 275
    :cond_2f
    return-void
.end method

.method static showSaved(Landroid/app/Activity;)V
    .registers 11

    .line 280
    const-string v0, ""

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-static {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->savedBands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 284
    nop

    .line 286
    const/4 v2, 0x0

    :try_start_17
    const-string v3, "clipboard"

    .line 287
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 288
    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-lez v4, :cond_4c

    .line 289
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 290
    if-eqz v3, :cond_4a

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[^0-9a-fA-F]"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_49
    .catchall {:try_start_17 .. :try_end_49} :catchall_4e

    goto :goto_4d

    :cond_4a
    move-object v3, v0

    goto :goto_4d

    .line 293
    :cond_4c
    move-object v3, v0

    :goto_4d
    goto :goto_50

    .line 292
    :catchall_4e
    move-exception v3

    move-object v3, v0

    .line 294
    :goto_50
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5e

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_5e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_67
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 297
    const/4 v7, 0x2

    aget-object v8, v5, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_80

    aget-object v7, v5, v7

    goto :goto_88

    :cond_80
    const-string v7, "\u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v8, "Band"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 298
    :goto_88
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v2

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \u00b7 "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u043a\u043b\u044e\u0447 \u2026"

    const-string v9, "key \u2026"

    invoke-static {v7, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v5, v6

    aget-object v5, v5, v6

    .line 299
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 298
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    goto :goto_67

    .line 301
    :cond_c7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f2

    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041f\u043e\u0441\u0442\u0430\u0432\u0438 \u043a\u043b\u044e\u0447\u0430 \u043e\u0442 \u043a\u043b\u0438\u043f\u0431\u043e\u0440\u0434\u0430 (\u2026"

    const-string v7, "Paste the key from the clipboard (\u2026"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x1c

    .line 303
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 302
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_f2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 306
    const-string v0, "\u041d\u044f\u043c\u0430 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u0433\u0440\u0438\u0432\u043d\u0438. \u0412\u044a\u0432\u0435\u0434\u0438 MAC \u0438 \u043a\u043b\u044e\u0447 \u0432\u0435\u0434\u043d\u044a\u0436 \u2014 \u043f\u043e\u0441\u043b\u0435 \u0449\u0435 \u0441\u0430 \u0442\u0443\u043a."

    const-string v1, "No saved bands yet. Enter MAC and key once \u2014 then they are here."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 309
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 310
    return-void

    .line 312
    :cond_108
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 313
    const-string p0, "\u0413\u0440\u0438\u0432\u043d\u0430 \u043e\u0442 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438\u0442\u0435"

    const-string v5, "Band from saved"

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/String;

    .line 314
    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$6;

    invoke-direct {v3, v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$6;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 329
    const-string v0, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v1, "Close"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 330
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 331
    return-void
.end method

.method private static sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 253
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 254
    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 255
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 256
    return-object v0
.end method

.method private static startTest(Landroid/app/Activity;)V
    .registers 3

    .line 371
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->flushConfigFromUi(Landroid/app/Activity;)V

    .line 372
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_27

    .line 376
    :cond_14
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 377
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$7;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$7;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 383
    return-void

    .line 385
    :cond_23
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTestAfterPermission(Landroid/app/Activity;)V

    .line 386
    return-void

    .line 373
    :cond_27
    :goto_27
    const-string v0, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0432\u0430\u043b\u0438\u0434\u0435\u043d MAC \u0438 \u043a\u043b\u044e\u0447 (32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430)"

    const-string v1, "Enter a valid MAC and key (32 chars)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method private static startTestAfterPermission(Landroid/app/Activity;)V
    .registers 5

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    .line 390
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsFullReconnect(Landroid/app/Activity;)V

    .line 391
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v1, "Connecting to the band\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 392
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->scheduleStatus(Landroid/app/Activity;)V

    .line 393
    return-void
.end method

.method private static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .line 520
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    .line 522
    goto :goto_a

    .line 521
    :catchall_9
    move-exception p0

    .line 523
    :goto_a
    return-void
.end method
