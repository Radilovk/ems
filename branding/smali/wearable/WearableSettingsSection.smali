.class public final Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;
    }
.end annotation


# static fields
.field private static final STATUS:Ljava/lang/Runnable;

.field private static final TAG:Ljava/lang/String; = "xems_band_settings"

.field private static final TEST_MS:J = 0xea60L

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

    .line 237
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
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

.method static synthetic access$1000()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/lang/Runnable;
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

.method static synthetic access$400()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->refreshStatus(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$600()J
    .registers 2

    .prologue
    .line 24
    sget-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->endTest(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900()V
    .registers 0

    .prologue
    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->colorFields()V

    return-void
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 38
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 42
    :goto_3
    return-void

    .line 39
    :catch_4
    move-exception v0

    .line 40
    const-string v1, "settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "band section: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 14

    .prologue
    const/high16 v11, 0x41600000    # 14.0f

    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 45
    if-eqz p0, :cond_d

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 143
    :cond_d
    :goto_d
    return-void

    .line 48
    :cond_e
    check-cast p1, Landroid/view/ViewGroup;

    .line 49
    const-string v0, "xems_band_settings"

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1b

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    :cond_1b
    const-string v0, "text_primary"

    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 54
    const-string v1, "text_secondary"

    const v2, -0x655f5a

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 55
    const-string v2, "bg_elevated"

    const v3, -0xe0dcd4

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 57
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const-string v4, "xems_band_settings"

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 62
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 64
    const-string v2, "\u0413\u0440\u0438\u0432\u043d\u0430 \u00b7 Xiaomi Band 8"

    const-string v4, "Band \u00b7 Xiaomi Band 8"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {p0, v2, v4, v0, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 66
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    const-string v2, "\u0412\u044a\u0432\u0435\u0436\u0434\u0430 \u0441\u0435 \u0432\u0435\u0434\u043d\u044a\u0436. \u041f\u043e\u043b\u0437\u0432\u0430 \u0441\u0435 \u043e\u0442 \u2665 \u043f\u0443\u043b\u0441, AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0438 \u0434\u0430\u043d\u043d\u0438\u0442\u0435 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430."

    const-string v4, "Entered once. Used by the \u2665 HR dial, the AI session and band data."

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {p0, v2, v4, v1, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 70
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v7, v4, v7, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 75
    const-string v4, "MAC"

    invoke-static {p0, v4, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    .line 77
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    const-string v5, "AA:BB:CC:DD:EE:FF"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 78
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    const v5, 0x81001

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 80
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v7, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const-string v4, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v5, "Choose"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v5, -0xea9a40

    invoke-static {p0, v4, v5, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    .line 83
    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 94
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 95
    const-string v4, "\u041a\u043b\u044e\u0447"

    const-string v5, "Key"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    .line 97
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    const-string v5, "32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 0-9 / a-f"

    const-string v6, "32 chars 0-9 / a-f"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 98
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->setKeyHidden(Z)V

    .line 101
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42300000    # 44.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v7, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const-string v4, "\u041f\u043e\u043a\u0430\u0436\u0438"

    const-string v5, "Show"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_screen"

    const v6, -0xd5d5d6

    .line 103
    invoke-static {p0, v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 102
    invoke-static {p0, v4, v5, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 104
    new-instance v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 117
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v7, v2, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 118
    const-string v2, ""

    invoke-static {p0, v2, v11, v1, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    .line 119
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v7, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430"

    const-string v2, "Test connection"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, -0xd182ce

    invoke-static {p0, v1, v2, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;-><init>(Landroid/app/Activity;)V

    .line 133
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->colorFields()V

    .line 137
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v8, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 139
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 140
    invoke-virtual {p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 142
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->scheduleStatus(Landroid/app/Activity;)V

    goto/16 :goto_d
.end method

.method private static colorFields()V
    .registers 6

    .prologue
    const v3, -0x10acb0

    const v1, -0x555556

    const v2, -0x994496

    .line 209
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    if-eqz v0, :cond_23

    .line 210
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3d

    move v0, v1

    :goto_20
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 214
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-eqz v0, :cond_3c

    .line 215
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_47

    :goto_39
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 219
    :cond_3c
    return-void

    .line 212
    :cond_3d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    move v0, v2

    goto :goto_20

    :cond_45
    move v0, v3

    goto :goto_20

    .line 217
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
    .line 280
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    .line 281
    const-string v0, "settings"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method private static field(Landroid/app/Activity;I)Landroid/widget/EditText;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    .line 160
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 161
    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 164
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 165
    const-string v1, "bg_screen"

    const v2, -0xededee

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 166
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 165
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-object v0
.end method

.method private static isKeyHidden()Z
    .registers 1

    .prologue
    .line 178
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
    .line 196
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

    .line 197
    :goto_1a
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 198
    :cond_2a
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_2f
    const-string v1, "[0-9a-fA-F]{32}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 196
    :cond_36
    const-string v0, ""

    goto :goto_1a
.end method

.method static isValidMac(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 204
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

    .line 205
    :goto_1a
    const-string v1, "[0-9a-fA-F]{12}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 204
    :cond_21
    const-string v0, ""

    goto :goto_1a
.end method

.method private static label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 153
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 155
    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 156
    return-object v0
.end method

.method private static refreshStatus(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const v0, -0x994496

    .line 253
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    if-nez p0, :cond_a

    .line 277
    :cond_9
    :goto_9
    return-void

    .line 258
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v2

    .line 260
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 261
    :cond_22
    const-string v0, "\u041d\u0435 \u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430"

    const-string v1, "Not set up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    const v0, -0x555556

    .line 275
    :cond_2d
    :goto_2d
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 263
    :cond_38
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 264
    if-lez v2, :cond_78

    const-string v3, "streaming"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0420\u0430\u0431\u043e\u0442\u0438 \u00b7 "

    const-string v4, "Working \u00b7 "

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u0443\u0434/\u043c\u0438\u043d"

    const-string v4, " bpm"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    :goto_73
    if-gtz v2, :cond_2d

    const/16 v0, -0x339a

    goto :goto_2d

    .line 266
    :cond_78
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_73

    .line 268
    :cond_7d
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 269
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    const v0, -0x10acb0

    goto :goto_2d

    .line 272
    :cond_8b
    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u2713 \u00b7 \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d\u0430"

    const-string v2, "Saved \u2713 \u00b7 not connected"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d
.end method

.method private static row(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 146
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 149
    return-object v0
.end method

.method private static scheduleStatus(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 233
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method

.method private static setKeyHidden(Z)V
    .registers 5

    .prologue
    .line 182
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 193
    :cond_4
    :goto_4
    return-void

    .line 185
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 186
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    const v3, 0x80001

    .line 187
    if-eqz p0, :cond_2f

    const/16 v0, 0x80

    .line 188
    :goto_14
    or-int/2addr v0, v3

    .line 186
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 190
    if-ltz v1, :cond_4

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 191
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    .line 188
    :cond_2f
    const/16 v0, 0x90

    goto :goto_14
.end method

.method private static sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 171
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x42300000    # 44.0f

    .line 172
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 174
    return-object v0
.end method

.method private static startTest(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 222
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 223
    :cond_10
    const-string v0, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0432\u0430\u043b\u0438\u0434\u0435\u043d MAC \u0438 \u043a\u043b\u044e\u0447 (32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430)"

    const-string v1, "Enter a valid MAC and key (32 chars)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 230
    :goto_1b
    return-void

    .line 226
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    .line 227
    const-string v0, "settings"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->reconnect(Landroid/app/Activity;Ljava/lang/String;)V

    .line 228
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v1, "Connecting to the band\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 229
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->scheduleStatus(Landroid/app/Activity;)V

    goto :goto_1b
.end method

.method private static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 286
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 289
    :goto_8
    return-void

    .line 287
    :catch_9
    move-exception v0

    goto :goto_8
.end method
