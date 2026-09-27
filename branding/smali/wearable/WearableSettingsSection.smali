.class public final Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoOpenToggle;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;
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

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    .line 415
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$8;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$8;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isKeyHidden()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200()V
    .registers 0

    .prologue
    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->colorFields()V

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Z)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->setKeyHidden(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTest(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTestAfterPermission(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$600()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->refreshStatus(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800()J
    .registers 2

    .prologue
    .line 24
    sget-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    return-wide v0
.end method

.method static synthetic access$900(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->endTest(Landroid/app/Activity;)V

    return-void
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->attach(Landroid/app/Activity;Landroid/view/View;)V

    .line 41
    :try_start_3
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    .line 45
    :goto_6
    return-void

    .line 42
    :catch_7
    move-exception v0

    .line 43
    const-string v1, "WearableSettingsSection.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method static bandInfo(Landroid/app/Activity;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 477
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->modelLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5d

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 484
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getBatteryPercent()I

    move-result v0

    .line 485
    if-ltz v0, :cond_41

    .line 486
    const-string v1, " \u00b7 "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u0431\u0430\u0442\u0435\u0440\u0438\u044f "

    const-string v4, "battery "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_41
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 489
    const-string v0, " \u00b7 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043d\u0435 \u0435 \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430"

    const-string v3, "not worn"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 481
    :cond_5d
    if-eqz v1, :cond_61

    move-object v0, v1

    goto :goto_17

    .line 482
    :cond_61
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u0441\u0434\u0432\u043e\u0435\u043d\u0430 \u0441 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430"

    const-string v1, "The band is not paired with the phone"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 13

    .prologue
    .line 48
    if-eqz p0, :cond_6

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    .line 240
    :cond_6
    :goto_6
    return-void

    .line 51
    :cond_7
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->scrollContent(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_6

    .line 55
    const-string v0, "xems_band_settings"

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_26

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->needsBand()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->applyDefaultsIfEmpty(Landroid/content/Context;)V

    .line 64
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v2

    .line 65
    const-string v0, "text_primary"

    const/4 v3, -0x1

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 66
    const-string v0, "text_secondary"

    const v4, -0x655f5a

    invoke-static {p0, v0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 67
    const-string v0, "bg_elevated"

    const v5, -0xe0dcd4

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 69
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v6, "xems_band_settings"

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 71
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 74
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 76
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430 \u00b7 Xiaomi Smart Band"

    const-string v6, "Band \u00b7 Xiaomi Smart Band"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v6, 0x41b00000    # 22.0f

    const/4 v7, 0x1

    invoke-static {p0, v0, v6, v3, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 78
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    const-string v0, "\u0412\u044a\u0432\u0435\u0436\u0434\u0430 \u0441\u0435 \u0432\u0435\u0434\u043d\u044a\u0436. \u041f\u043e\u043b\u0437\u0432\u0430 \u0441\u0435 \u043e\u0442 \u2665 \u043f\u0443\u043b\u0441, AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0438 \u0434\u0430\u043d\u043d\u0438\u0442\u0435 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430."

    const-string v6, "Entered once. Used by the \u2665 HR dial, the AI session and band data."

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v7, 0x0

    invoke-static {p0, v0, v6, v4, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 82
    const/4 v6, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 83
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 87
    const-string v6, "MAC"

    invoke-static {p0, v6, v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v6

    sput-object v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    .line 89
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    const-string v7, "AA:BB:CC:DD:EE:FF"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 90
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    const v7, 0x81001

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 92
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/high16 v9, 0x42300000    # 44.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const-string v6, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v7, "Choose"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v7, -0xea9a40

    const/4 v8, -0x1

    invoke-static {p0, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    .line 95
    new-instance v7, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 106
    const/4 v6, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 107
    const-string v6, "\u041a\u043b\u044e\u0447"

    const-string v7, "Key"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v6

    sput-object v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    .line 109
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    const-string v7, "32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 0-9 / a-f"

    const-string v8, "32 chars 0-9 / a-f"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 110
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->setKeyHidden(Z)V

    .line 113
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/high16 v9, 0x42300000    # 44.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const-string v6, "\u041f\u043e\u043a\u0430\u0436\u0438"

    const-string v7, "Show"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "bg_screen"

    const v8, -0xd5d5d6

    .line 115
    invoke-static {p0, v7, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 114
    invoke-static {p0, v6, v7, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v6

    .line 116
    new-instance v7, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;

    invoke-direct {v7, v6}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    const-string v0, "\u041e\u0442 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438\u0442\u0435 / \u043f\u043e\u0441\u0442\u0430\u0432\u0438"

    const-string v6, "From saved / paste"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "bg_screen"

    const v7, -0xd5d5d6

    .line 128
    invoke-static {p0, v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 127
    invoke-static {p0, v0, v6, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 129
    new-instance v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/high16 v8, 0x42400000    # 48.0f

    .line 136
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 138
    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 147
    const-string v0, "\u041c\u043e\u0434\u0435\u043b \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v7, "Band model"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 148
    const/4 v7, 0x0

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 149
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u0410\u0432\u0442\u043e"

    const-string v9, "Auto"

    .line 151
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x1

    const-string v8, "Band 8 \u0438 \u043f\u043e-\u0441\u0442\u0430\u0440\u0438"

    const-string v9, "Band 8 and older"

    .line 152
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x2

    const-string v8, "Band 9 / 10"

    aput-object v8, v0, v7

    .line 153
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v7

    new-instance v8, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;

    invoke-direct {v8, p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 150
    invoke-static {p0, v0, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    if-nez v2, :cond_3bd

    const/4 v0, 0x0

    .line 160
    :goto_21b
    if-eqz v0, :cond_258

    .line 161
    const/4 v7, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 162
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    const-string v0, "\u041e\u0442\u0432\u0430\u0440\u044f\u0439 XEMS \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v7, "Open XEMS on the band"

    .line 164
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "\u041f\u0440\u0438 \u0441\u0442\u0430\u0440\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0438\u043b\u0438 AI \u0441\u0435\u0441\u0438\u044f \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u0441\u0430\u043c\u043e (Band 9 / 10)."

    const-string v8, "When a workout or AI session starts the app comes up by itself (Band 9 / 10)."

    .line 165
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandAutoOpen(Landroid/content/Context;)Z

    move-result v8

    new-instance v9, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoOpenToggle;

    invoke-direct {v9, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoOpenToggle;-><init>(Landroid/app/Activity;)V

    .line 163
    invoke-static {p0, v0, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 168
    const/4 v7, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 169
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    :cond_258
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_26b

    .line 173
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3dc

    .line 174
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3dc

    :cond_26b
    const/4 v0, 0x1

    .line 175
    :goto_26c
    if-eqz v0, :cond_323

    if-eqz v2, :cond_323

    .line 176
    const-string v0, "XEMS \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0430\u043c \u043f\u0440\u0438 \u0441\u0442\u0430\u0440\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 (\u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u043f\u043e-\u0433\u043e\u0440\u0435). \u0420\u044a\u0447\u043d\u043e: \u0431\u0443\u0442\u043e\u043d\u044a\u0442 \u043f\u043e-\u0434\u043e\u043b\u0443, \u0438\u043b\u0438 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2014 \u0432\u0434\u0438\u0433\u043d\u0438 \u043a\u0438\u0442\u043a\u0430\u0442\u0430, \u043f\u043b\u044a\u0437\u043d\u0438 \u043d\u0430\u0433\u043e\u0440\u0435, \u043f\u0440\u0435\u0432\u044a\u0440\u0442\u0438 \u0434\u043e XEMS."

    const-string v2, "XEMS opens on the band by itself when a workout starts (setting above). By hand: the button below, or on the band \u2014 raise the wrist, swipe up, scroll to XEMS."

    .line 177
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v6, 0x0

    .line 176
    invoke-static {p0, v0, v2, v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 180
    const/4 v2, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 181
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 183
    const/4 v0, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v0, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 184
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v7, 0x0

    invoke-static {p0, v0, v6, v4, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 185
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->bind(Landroid/widget/TextView;)V

    .line 186
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v7, 0x42

    if-lt v0, v7, :cond_3df

    .line 189
    const-string v0, "\u041f\u0440\u0435\u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    const-string v7, "Reinstall"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2c8
    const-string v7, "bg_screen"

    const v8, -0xd5d5d6

    .line 190
    invoke-static {p0, v7, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 188
    invoke-static {p0, v0, v7, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 191
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;

    invoke-direct {v3, p0, v6}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 201
    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 202
    const-string v2, "\u041e\u0442\u0432\u043e\u0440\u0438 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Open on the band"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xd182ce

    const/4 v6, -0x1

    invoke-static {p0, v2, v3, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 204
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    :cond_323
    const-string v0, ""

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v4, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    .line 209
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 210
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 214
    const/4 v2, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 215
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v6, 0x1

    invoke-static {p0, v2, v3, v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    .line 216
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    const-string v2, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430"

    const-string v3, "Test connection"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xd182ce

    const/4 v4, -0x1

    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 220
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$5;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;-><init>(Landroid/app/Activity;)V

    .line 230
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 231
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->colorFields()V

    .line 234
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 236
    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 237
    invoke-virtual {v1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;-><init>()V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 239
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->scheduleStatus(Landroid/app/Activity;)V

    goto/16 :goto_6

    .line 155
    :cond_3bd
    const-string v0, "\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v7, "Control from the band"

    .line 156
    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "\u041f\u043b\u044a\u0437\u043d\u0438 \u0434\u043e \u041c\u0443\u0437\u0438\u043a\u0430: \u043f\u0443\u043b\u0441 \u0438 \u0431\u043b\u043e\u043a; \u25b6 \u0441\u0442\u0430\u0440\u0442/\u043f\u0430\u0443\u0437\u0430, \u23ed \u23ee \u0441\u0438\u043b\u0430 \u00b1."

    const-string v8, "Swipe to Music: HR and block; \u25b6 start/pause, \u23ed \u23ee strength \u00b1."

    .line 157
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v8

    new-instance v9, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;

    invoke-direct {v9, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;-><init>(Landroid/app/Activity;)V

    .line 155
    invoke-static {p0, v0, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    goto/16 :goto_21b

    .line 174
    :cond_3dc
    const/4 v0, 0x0

    goto/16 :goto_26c

    .line 189
    :cond_3df
    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    const-string v7, "Install"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2c8
.end method

.method private static colorFields()V
    .registers 6

    .prologue
    const v3, -0x10acb0

    const v1, -0x555556

    const v2, -0x994496

    .line 362
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    if-eqz v0, :cond_23

    .line 363
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3d

    move v0, v1

    :goto_20
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 367
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-eqz v0, :cond_3c

    .line 368
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_47

    :goto_39
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 372
    :cond_3c
    return-void

    .line 365
    :cond_3d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    move v0, v2

    goto :goto_20

    :cond_45
    move v0, v3

    goto :goto_20

    .line 370
    :cond_47
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    move v1, v2

    goto :goto_39

    :cond_4f
    move v1, v3

    goto :goto_39
.end method

.method private static endTest(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 555
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    .line 556
    const-string v0, "settings"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method private static field(Landroid/app/Activity;I)Landroid/widget/EditText;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    .line 257
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 258
    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 260
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 261
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 262
    const-string v1, "bg_screen"

    const v2, -0xededee

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 263
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 262
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    return-object v0
.end method

.method private static flushConfigFromUi(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 375
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_12
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-eqz v1, :cond_40

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 377
    :goto_24
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 378
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 380
    :cond_31
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 381
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 383
    :cond_3a
    return-void

    .line 375
    :cond_3b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 376
    :cond_40
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_24
.end method

.method private static isKeyHidden()Z
    .registers 1

    .prologue
    .line 275
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static isValidKey(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 349
    if-eqz p0, :cond_36

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_1a
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 351
    :cond_2a
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_2f
    const-string v1, "[0-9a-fA-F]{32}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 349
    :cond_36
    const-string v0, ""

    goto :goto_1a
.end method

.method static isValidMac(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 357
    if-eqz p0, :cond_21

    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 358
    :goto_1a
    const-string v1, "[0-9a-fA-F]{12}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 357
    :cond_21
    const-string v0, ""

    goto :goto_1a
.end method

.method private static label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 250
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 252
    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 253
    return-object v0
.end method

.method private static refreshStatus(Landroid/app/Activity;)V
    .registers 11

    .prologue
    const v1, -0x10acb0

    const v2, -0x994496

    .line 435
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    if-nez p0, :cond_d

    .line 473
    :cond_c
    :goto_c
    return-void

    .line 440
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v4

    .line 442
    sget-wide v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gtz v0, :cond_27

    const-string v0, "settings"

    .line 443
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isOwnedBy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_27
    const/4 v0, 0x1

    .line 444
    :goto_28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v5

    .line 445
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 446
    :cond_3c
    const-string v0, "\u041d\u0435 \u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430"

    const-string v1, "Not set up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    const v0, -0x555556

    move v1, v0

    move-object v3, v2

    .line 468
    :goto_49
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 471
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfo(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 443
    :cond_61
    const/4 v0, 0x0

    goto :goto_28

    .line 448
    :cond_63
    if-nez v5, :cond_67

    if-eqz v0, :cond_9d

    .line 449
    :cond_67
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 450
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 451
    goto :goto_49

    .line 452
    :cond_73
    if-lez v4, :cond_84

    const-string v0, "streaming"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 453
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    .line 454
    goto :goto_49

    .line 456
    :cond_84
    if-eqz v3, :cond_94

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_94

    .line 457
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    :goto_90
    const/16 v1, -0x339a

    move-object v3, v0

    goto :goto_49

    .line 458
    :cond_94
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    .line 461
    :cond_9d
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 462
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 463
    goto :goto_49

    .line 465
    :cond_a9
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u2713 \u00b7 \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d\u0430"

    const-string v1, "Saved \u2713 \u00b7 not connected"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    .line 466
    goto :goto_49
.end method

.method private static row(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 243
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 245
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 246
    return-object v0
.end method

.method private static scheduleStatus(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 411
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    return-void
.end method

.method private static setKeyHidden(Z)V
    .registers 5

    .prologue
    .line 279
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 290
    :cond_4
    :goto_4
    return-void

    .line 282
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 283
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    const v3, 0x80001

    .line 284
    if-eqz p0, :cond_2f

    const/16 v0, 0x80

    .line 285
    :goto_14
    or-int/2addr v0, v3

    .line 283
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 286
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 287
    if-ltz v1, :cond_4

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 288
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    .line 285
    :cond_2f
    const/16 v0, 0x90

    goto :goto_14
.end method

.method static showSaved(Landroid/app/Activity;)V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 295
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->savedBands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 299
    const-string v1, ""

    .line 301
    :try_start_18
    const-string v0, "clipboard"

    .line 302
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 303
    if-eqz v0, :cond_14a

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    if-eqz v2, :cond_14a

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_14a

    .line 304
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_c0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[^0-9a-fA-F]"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_4c} :catch_c3

    move-result-object v0

    .line 309
    :goto_4d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_c6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 310
    :goto_5c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 312
    aget-object v2, v0, v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ca

    aget-object v2, v0, v10

    .line 313
    :goto_7b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v0, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " \u00b7 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\u043a\u043b\u044e\u0447 \u2026"

    const-string v7, "key \u2026"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v0, v9

    aget-object v0, v0, v9

    .line 314
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 305
    :cond_c0
    :try_start_c0
    const-string v0, ""
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c2} :catch_c3

    goto :goto_4d

    .line 307
    :catch_c3
    move-exception v0

    move-object v0, v1

    goto :goto_4d

    .line 309
    :cond_c6
    const-string v0, ""

    move-object v1, v0

    goto :goto_5c

    .line 312
    :cond_ca
    const-string v2, "\u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v6, "Band"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7b

    .line 316
    :cond_d3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_101

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u043e\u0441\u0442\u0430\u0432\u0438 \u043a\u043b\u044e\u0447\u0430 \u043e\u0442 \u043a\u043b\u0438\u043f\u0431\u043e\u0440\u0434\u0430 (\u2026"

    const-string v5, "Paste the key from the clipboard (\u2026"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x1c

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_101
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 321
    const-string v0, "\u041d\u044f\u043c\u0430 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u0433\u0440\u0438\u0432\u043d\u0438. \u0412\u044a\u0432\u0435\u0434\u0438 MAC \u0438 \u043a\u043b\u044e\u0447 \u0432\u0435\u0434\u043d\u044a\u0436 \u2014 \u043f\u043e\u0441\u043b\u0435 \u0449\u0435 \u0441\u0430 \u0442\u0443\u043a."

    const-string v1, "No saved bands yet. Enter MAC and key once \u2014 then they are here."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 346
    :goto_116
    return-void

    .line 327
    :cond_117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0413\u0440\u0438\u0432\u043d\u0430 \u043e\u0442 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438\u0442\u0435"

    const-string v5, "Band from saved"

    .line 328
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-array v0, v8, [Ljava/lang/String;

    .line 329
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$6;

    invoke-direct {v4, v3, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$6;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v2, "Close"

    .line 344
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_116

    :cond_14a
    move-object v0, v1

    goto/16 :goto_4d
.end method

.method private static sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 268
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x42300000    # 44.0f

    .line 269
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 270
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 271
    return-object v0
.end method

.method private static startTest(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 386
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->flushConfigFromUi(Landroid/app/Activity;)V

    .line 387
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 388
    :cond_13
    const-string v0, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0432\u0430\u043b\u0438\u0434\u0435\u043d MAC \u0438 \u043a\u043b\u044e\u0447 (32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430)"

    const-string v1, "Enter a valid MAC and key (32 chars)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 401
    :goto_1e
    return-void

    .line 391
    :cond_1f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 392
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$7;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$7;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 400
    :cond_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTestAfterPermission(Landroid/app/Activity;)V

    goto :goto_1e
.end method

.method private static startTestAfterPermission(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    .line 405
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsFullReconnect(Landroid/app/Activity;)V

    .line 406
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v1, "Connecting to the band\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 407
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->scheduleStatus(Landroid/app/Activity;)V

    .line 408
    return-void
.end method

.method private static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 561
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 564
    :goto_8
    return-void

    .line 562
    :catch_9
    move-exception v0

    goto :goto_8
.end method
