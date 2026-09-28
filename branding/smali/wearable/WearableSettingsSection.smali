.class public final Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RolePick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginClick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoOpenToggle;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlPick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlRemove;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginTask;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;
    }
.end annotation


# static fields
.field private static final STATUS:Ljava/lang/Runnable;

.field private static final TAG:Ljava/lang/String; = "xems_band_settings"

.field private static final TEST_MS:J = 0xea60L

.field private static bandInfoView:Landroid/widget/TextView;

.field private static ctlKeyView:Landroid/widget/EditText;

.field private static ctlMacView:Landroid/widget/EditText;

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

    .line 629
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

.method static synthetic access$1000(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->refreshStatus(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1100()J
    .registers 2

    .prologue
    .line 24
    sget-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->endTest(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400()V
    .registers 0

    .prologue
    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->colorFields()V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
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
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$702(Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTestAfterPermission(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$900()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method private static addControlBand(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;ZII)V
    .registers 16

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v5, 0x0

    .line 293
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 295
    const-string v0, "bg_screen"

    const v2, -0xd5d5d6

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 297
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 298
    const-string v0, "\u0412\u0442\u043e\u0440\u0430 \u0433\u0440\u0438\u0432\u043d\u0430 \u00b7 \u0441\u0430\u043c\u043e \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435"

    const-string v2, "Second band \u00b7 control only"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {p0, v0, v2, p4, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 300
    if-eqz p3, :cond_181

    .line 301
    const-string v0, "\u0414\u0432\u0435 \u0433\u0440\u0438\u0432\u043d\u0438: \u043f\u044a\u0440\u0432\u0430\u0442\u0430 (\u0433\u043e\u0440\u0435) \u0435 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u2014 \u0441\u0430\u043c\u043e \u043f\u0443\u043b\u0441; \u0442\u0430\u0437\u0438 \u0435 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430 \u2014 \u0441\u0442\u0430\u0440\u0442, \u043f\u0430\u0443\u0437\u0430, \u0441\u0438\u043b\u0430 \u0438 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e XEMS."

    const-string v2, "Two bands: the first (above) is on the client \u2014 heart rate only; this one is the trainer\'s \u2014 start, pause, strength and the XEMS app."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_47
    const/high16 v2, 0x41480000    # 12.5f

    .line 300
    invoke-static {p0, v0, v2, p5, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 306
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v5, v2, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 307
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 310
    const-string v2, "MAC"

    invoke-static {p0, v2, p5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    invoke-static {p0, p4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;

    .line 312
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;

    const-string v3, "AA:BB:CC:DD:EE:FF"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 313
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;

    const v3, 0x81001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 315
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getControlMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 316
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    const-string v2, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v3, "Choose"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xea9a40

    const/4 v4, -0x1

    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 318
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlPick;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlPick;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 323
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 324
    const-string v2, "\u041a\u043b\u044e\u0447"

    const-string v3, "Key"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 325
    invoke-static {p0, p4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;

    .line 326
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;

    const-string v3, "32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 0-9 / a-f"

    const-string v4, "32 chars 0-9 / a-f"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 327
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 328
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getControlKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    if-eqz p3, :cond_12d

    .line 331
    const-string v2, "\u041c\u0430\u0445\u043d\u0438"

    const-string v3, "Remove"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bg_elevated"

    const v4, -0xe0dcd4

    .line 332
    invoke-static {p0, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 331
    invoke-static {p0, v2, v3, p4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 333
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlRemove;

    invoke-direct {v3, p0, p2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlRemove;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    :cond_12d
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    if-eqz p3, :cond_159

    .line 338
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isControlConnected()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 339
    const-string v0, "\u2713 \u0421\u0432\u044a\u0440\u0437\u0430\u043d\u0430"

    const-string v2, "\u2713 Connected"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_140
    const/high16 v2, 0x41480000    # 12.5f

    .line 341
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isControlConnected()Z

    move-result v3

    if-eqz v3, :cond_14b

    const p5, -0x7e387c

    .line 338
    :cond_14b
    invoke-static {p0, v0, v2, p5, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 342
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 343
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    :cond_159
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;

    invoke-direct {v0, p0, p2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlSaver;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 346
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 347
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlKeyView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 348
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 351
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 352
    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    return-void

    .line 303
    :cond_181
    const-string v0, "\u041f\u043e \u0436\u0435\u043b\u0430\u043d\u0438\u0435: \u0433\u0440\u0438\u0432\u043d\u0430 \u0437\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430, \u043a\u043e\u044f\u0442\u043e \u0441\u0430\u043c\u043e \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430. \u0422\u043e\u0433\u0430\u0432\u0430 \u043f\u044a\u0440\u0432\u0430\u0442\u0430 \u043e\u0441\u0442\u0430\u0432\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0441\u0430\u043c\u043e \u0437\u0430 \u043f\u0443\u043b\u0441\u0430."

    const-string v2, "Optional: a band for the trainer that only controls. The first one then stays on the client for the heart rate."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_47

    .line 340
    :cond_18b
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430 \u0441\u0435 \u0437\u0430\u0435\u0434\u043d\u043e \u0441 \u043f\u044a\u0440\u0432\u0430\u0442\u0430 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "Connects together with the first band"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_140
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
    .line 691
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->modelLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5d

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 698
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getBatteryPercent()I

    move-result v0

    .line 699
    if-ltz v0, :cond_41

    .line 700
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

    .line 702
    :cond_41
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 703
    const-string v0, " \u00b7 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043d\u0435 \u0435 \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430"

    const-string v3, "not worn"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    :cond_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 695
    :cond_5d
    if-eqz v1, :cond_61

    move-object v0, v1

    goto :goto_17

    .line 696
    :cond_61
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u0441\u0434\u0432\u043e\u0435\u043d\u0430 \u0441 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430"

    const-string v1, "The band is not paired with the phone"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 14

    .prologue
    .line 48
    if-eqz p0, :cond_6

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    .line 283
    :cond_6
    :goto_6
    return-void

    .line 51
    :cond_7
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->scrollContent(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 52
    if-eqz v6, :cond_6

    .line 55
    const-string v0, "xems_band_settings"

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

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

    move-result v7

    .line 65
    const-string v0, "text_primary"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 66
    const-string v0, "text_secondary"

    const v1, -0x655f5a

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 67
    const-string v0, "bg_elevated"

    const v1, -0xe0dcd4

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 69
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v2, "xems_band_settings"

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 74
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 76
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430 \u00b7 Xiaomi Smart Band"

    const-string v2, "Band \u00b7 Xiaomi Smart Band"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41b00000    # 22.0f

    const/4 v3, 0x1

    invoke-static {p0, v0, v2, v4, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    const-string v0, "\u0412\u044a\u0432\u0435\u0436\u0434\u0430 \u0441\u0435 \u0432\u0435\u0434\u043d\u044a\u0436. \u041f\u043e\u043b\u0437\u0432\u0430 \u0441\u0435 \u043e\u0442 \u2665 \u043f\u0443\u043b\u0441, AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0438 \u0434\u0430\u043d\u043d\u0438\u0442\u0435 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430."

    const-string v2, "Entered once. Used by the \u2665 HR dial, the AI session and band data."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v5, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 82
    const/4 v2, 0x0

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v8, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v0, v2, v3, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 83
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 86
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandRole(Landroid/content/Context;)I

    move-result v8

    .line 87
    if-eqz v7, :cond_49c

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->hasControlBand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_49c

    const/4 v3, 0x1

    .line 88
    :goto_b5
    if-eqz v7, :cond_130

    if-nez v3, :cond_130

    .line 89
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u043b\u0443\u0436\u0438 \u0437\u0430"

    const-string v2, "The band is for"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v9, 0x1

    invoke-static {p0, v0, v2, v4, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v9, -0x2

    invoke-direct {v0, v2, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 94
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "\u041f\u0443\u043b\u0441 \u0438 \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435"

    const-string v11, "Heart rate + control"

    .line 95
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x1

    const-string v10, "\u0421\u0430\u043c\u043e \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435"

    const-string v11, "Control only"

    .line 96
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    const/4 v9, 0x2

    const-string v10, "\u0421\u0430\u043c\u043e \u043f\u0443\u043b\u0441"

    const-string v11, "Heart rate only"

    .line 97
    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    new-instance v9, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RolePick;

    invoke-direct {v9, p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RolePick;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 94
    invoke-static {p0, v2, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    const/4 v0, 0x1

    if-ne v8, v0, :cond_49f

    .line 99
    const-string v0, "\u0421\u0442\u0430\u0440\u0442, \u043f\u0430\u0443\u0437\u0430 \u0438 \u0441\u0438\u043b\u0430 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430. \u041f\u0443\u043b\u0441\u044a\u0442 \u045d \u043d\u0435 \u0441\u0435 \u043f\u043e\u043b\u0437\u0432\u0430 \u2014 \u2665 \u043f\u0443\u043b\u0441 \u0438 AI \u043e\u0441\u0442\u0430\u0432\u0430\u0442 \u0431\u0435\u0437 \u043d\u0435\u0433\u043e."

    const-string v2, "Start, pause and strength from the band. Its heart rate is not used \u2014 \u2665 and AI go without it."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_115
    const/high16 v2, 0x41480000    # 12.5f

    const/4 v9, 0x0

    .line 98
    invoke-static {p0, v0, v2, v5, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 106
    const/4 v2, 0x0

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x41600000    # 14.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v0, v2, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    :cond_130
    if-eqz v7, :cond_137

    move-object v0, p0

    move-object v2, p1

    .line 110
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->addControlBand(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;ZII)V

    .line 114
    :cond_137
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 115
    const-string v2, "MAC"

    invoke-static {p0, v2, v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    .line 117
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    const-string v3, "AA:BB:CC:DD:EE:FF"

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 118
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    const v3, 0x81001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 120
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/high16 v10, 0x42300000    # 44.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    const-string v2, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v3, "Choose"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xea9a40

    const/4 v9, -0x1

    invoke-static {p0, v2, v3, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 123
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 134
    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 135
    const-string v2, "\u041a\u043b\u044e\u0447"

    const-string v3, "Key"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    .line 137
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    const-string v3, "32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430 0-9 / a-f"

    const-string v9, "32 chars 0-9 / a-f"

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 138
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->setKeyHidden(Z)V

    .line 141
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/high16 v10, 0x42300000    # 44.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    const-string v2, "\u041f\u043e\u043a\u0430\u0436\u0438"

    const-string v3, "Show"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "bg_screen"

    const v9, -0xd5d5d6

    .line 143
    invoke-static {p0, v3, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 142
    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 144
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;

    invoke-direct {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    const-string v0, "\u041e\u0442 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438\u0442\u0435 / \u043f\u043e\u0441\u0442\u0430\u0432\u0438"

    const-string v2, "From saved / paste"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bg_screen"

    const v3, -0xd5d5d6

    .line 156
    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 155
    invoke-static {p0, v0, v2, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 157
    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v9, 0x42400000    # 48.0f

    .line 164
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 166
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const-string v0, "\u0412\u0445\u043e\u0434 \u0441 Xiaomi \u0430\u043a\u0430\u0443\u043d\u0442"

    const-string v2, "Log in with Xiaomi account"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, -0x1595d5

    const/4 v3, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 171
    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginClick;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginClick;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v9, 0x42400000    # 48.0f

    .line 173
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 174
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0435 \u0432\u0435\u0447\u0435 \u0441\u0434\u0432\u043e\u0435\u043d\u0430 \u0432 Mi Fitness \u2014 \u0432\u0437\u0438\u043c\u0430 MAC \u0438 \u043a\u043b\u044e\u0447\u0430 \u043e\u0442 \u0430\u043a\u0430\u0443\u043d\u0442\u0430 \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e."

    const-string v2, "The band is already paired in Mi Fitness \u2014 takes the MAC and key from the account automatically."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v5, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 180
    const/4 v2, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v3, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 181
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 190
    const-string v0, "\u041c\u043e\u0434\u0435\u043b \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v3, "Band model"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 191
    const/4 v3, 0x0

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v0, v3, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 192
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v9, "\u0410\u0432\u0442\u043e"

    const-string v10, "Auto"

    .line 194
    invoke-static {v9, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    const/4 v3, 0x1

    const-string v9, "Band 8 \u0438 \u043f\u043e-\u0441\u0442\u0430\u0440\u0438"

    const-string v10, "Band 8 and older"

    .line 195
    invoke-static {v9, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v3

    const/4 v3, 0x2

    const-string v9, "Band 9 / 10"

    aput-object v9, v0, v3

    .line 196
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v3

    new-instance v9, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;

    invoke-direct {v9, p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 193
    invoke-static {p0, v0, v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    if-eqz v7, :cond_2f9

    const/4 v0, 0x2

    if-ne v8, v0, :cond_4b6

    :cond_2f9
    const/4 v0, 0x0

    .line 203
    :goto_2fa
    if-eqz v0, :cond_337

    .line 204
    const/4 v3, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 205
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    const-string v0, "\u041e\u0442\u0432\u0430\u0440\u044f\u0439 XEMS \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Open XEMS on the band"

    .line 207
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u041f\u0440\u0438 \u0441\u0442\u0430\u0440\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0438\u043b\u0438 AI \u0441\u0435\u0441\u0438\u044f \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u0441\u0430\u043c\u043e (Band 9 / 10)."

    const-string v8, "When a workout or AI session starts the app comes up by itself (Band 9 / 10)."

    .line 208
    invoke-static {v3, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandAutoOpen(Landroid/content/Context;)Z

    move-result v8

    new-instance v9, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoOpenToggle;

    invoke-direct {v9, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoOpenToggle;-><init>(Landroid/app/Activity;)V

    .line 206
    invoke-static {p0, v0, v3, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 211
    const/4 v3, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 212
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    :cond_337
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_34a

    .line 216
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_4d5

    .line 217
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d5

    :cond_34a
    const/4 v0, 0x1

    .line 218
    :goto_34b
    if-eqz v0, :cond_402

    if-eqz v7, :cond_402

    .line 219
    const-string v0, "XEMS \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0430\u043c \u043f\u0440\u0438 \u0441\u0442\u0430\u0440\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 (\u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u043f\u043e-\u0433\u043e\u0440\u0435). \u0420\u044a\u0447\u043d\u043e: \u0431\u0443\u0442\u043e\u043d\u044a\u0442 \u043f\u043e-\u0434\u043e\u043b\u0443, \u0438\u043b\u0438 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2014 \u0432\u0434\u0438\u0433\u043d\u0438 \u043a\u0438\u0442\u043a\u0430\u0442\u0430, \u043f\u043b\u044a\u0437\u043d\u0438 \u043d\u0430\u0433\u043e\u0440\u0435, \u043f\u0440\u0435\u0432\u044a\u0440\u0442\u0438 \u0434\u043e XEMS."

    const-string v2, "XEMS opens on the band by itself when a workout starts (setting above). By hand: the button below, or on the band \u2014 raise the wrist, swipe up, scroll to XEMS."

    .line 220
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v3, 0x0

    .line 219
    invoke-static {p0, v0, v2, v5, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 223
    const/4 v2, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 224
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 225
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 226
    const/4 v0, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v0, v3, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 227
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41500000    # 13.0f

    const/4 v7, 0x0

    invoke-static {p0, v0, v3, v5, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 228
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->bind(Landroid/widget/TextView;)V

    .line 229
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v0, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v7, 0x44

    if-lt v0, v7, :cond_4d8

    .line 232
    const-string v0, "\u041f\u0440\u0435\u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    const-string v7, "Reinstall"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3a7
    const-string v7, "bg_screen"

    const v8, -0xd5d5d6

    .line 233
    invoke-static {p0, v7, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 231
    invoke-static {p0, v0, v7, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 234
    new-instance v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;

    invoke-direct {v4, p0, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 244
    const/4 v2, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 245
    const-string v2, "\u041e\u0442\u0432\u043e\u0440\u0438 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Open on the band"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xd182ce

    const/4 v4, -0x1

    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 247
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/high16 v7, 0x42300000    # 44.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    :cond_402
    const-string v0, ""

    const/high16 v2, 0x41500000    # 13.0f

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v5, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    .line 252
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 253
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 256
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 257
    const/4 v2, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 258
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v5, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    .line 259
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    const-string v2, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430"

    const-string v3, "Test connection"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, -0xd182ce

    const/4 v4, -0x1

    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v2

    .line 263
    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$5;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Saver;-><init>(Landroid/app/Activity;)V

    .line 273
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 274
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->colorFields()V

    .line 277
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 279
    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 280
    invoke-virtual {v6, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 282
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->scheduleStatus(Landroid/app/Activity;)V

    goto/16 :goto_6

    .line 87
    :cond_49c
    const/4 v3, 0x0

    goto/16 :goto_b5

    .line 101
    :cond_49f
    const/4 v0, 0x2

    if-ne v8, v0, :cond_4ac

    .line 102
    const-string v0, "\u0421\u0430\u043c\u043e \u043f\u0443\u043b\u0441 \u0437\u0430 \u2665 \u043f\u0443\u043b\u0441, AI \u0438 \u043a\u0430\u043b\u043e\u0440\u0438\u0438\u0442\u0435. \u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0438 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043d\u0430 \u043d\u0435\u044f \u043d\u0435 \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u0441\u0430\u043c\u043e."

    const-string v2, "Heart rate only for \u2665, AI and calories. The band does not control the training and its app does not open by itself."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115

    .line 104
    :cond_4ac
    const-string v0, "\u041f\u0443\u043b\u0441 \u0437\u0430 \u2665 \u043f\u0443\u043b\u0441 \u0438 AI, \u0438 \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043e\u0442 \u0440\u044a\u043a\u0430\u0442\u0430."

    const-string v2, "Heart rate for \u2665 and AI, and training control from the wrist."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115

    .line 198
    :cond_4b6
    const-string v0, "\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v3, "Control from the band"

    .line 199
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u041f\u043b\u044a\u0437\u043d\u0438 \u0434\u043e \u041c\u0443\u0437\u0438\u043a\u0430: \u043f\u0443\u043b\u0441 \u0438 \u0431\u043b\u043e\u043a; \u25b6 \u0441\u0442\u0430\u0440\u0442/\u043f\u0430\u0443\u0437\u0430, \u23ed \u23ee \u0441\u0438\u043b\u0430 \u00b1."

    const-string v8, "Swipe to Music: HR and block; \u25b6 start/pause, \u23ed \u23ee strength \u00b1."

    .line 200
    invoke-static {v3, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v8

    new-instance v9, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;

    invoke-direct {v9, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;-><init>(Landroid/app/Activity;)V

    .line 198
    invoke-static {p0, v0, v3, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    goto/16 :goto_2fa

    .line 217
    :cond_4d5
    const/4 v0, 0x0

    goto/16 :goto_34b

    .line 232
    :cond_4d8
    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    const-string v7, "Install"

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a7
.end method

.method private static colorFields()V
    .registers 6

    .prologue
    const v3, -0x10acb0

    const v1, -0x555556

    const v2, -0x994496

    .line 576
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    if-eqz v0, :cond_23

    .line 577
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3d

    move v0, v1

    :goto_20
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 581
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-eqz v0, :cond_3c

    .line 582
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    sget-object v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_47

    :goto_39
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 586
    :cond_3c
    return-void

    .line 579
    :cond_3d
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    move v0, v2

    goto :goto_20

    :cond_45
    move v0, v3

    goto :goto_20

    .line 584
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
    .line 790
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    .line 791
    const-string v0, "settings"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method private static field(Landroid/app/Activity;I)Landroid/widget/EditText;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    .line 471
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 472
    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 474
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 475
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 476
    const-string v1, "bg_screen"

    const v2, -0xededee

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 477
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 476
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    return-object v0
.end method

.method private static flushConfigFromUi(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 589
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 590
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

    .line 591
    :goto_24
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 592
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 594
    :cond_31
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 595
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 597
    :cond_3a
    return-void

    .line 589
    :cond_3b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 590
    :cond_40
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_24
.end method

.method private static isKeyHidden()Z
    .registers 1

    .prologue
    .line 489
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
    .line 563
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

    .line 564
    :goto_1a
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 565
    :cond_2a
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    :cond_2f
    const-string v1, "[0-9a-fA-F]{32}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 563
    :cond_36
    const-string v0, ""

    goto :goto_1a
.end method

.method static isValidMac(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 571
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

    .line 572
    :goto_1a
    const-string v1, "[0-9a-fA-F]{12}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 571
    :cond_21
    const-string v0, ""

    goto :goto_1a
.end method

.method private static label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 464
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 465
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 466
    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 467
    return-object v0
.end method

.method private static refreshStatus(Landroid/app/Activity;)V
    .registers 11

    .prologue
    const v1, -0x10acb0

    const v2, -0x994496

    .line 649
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    if-nez p0, :cond_d

    .line 687
    :cond_c
    :goto_c
    return-void

    .line 654
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v4

    .line 656
    sget-wide v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gtz v0, :cond_27

    const-string v0, "settings"

    .line 657
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isOwnedBy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_27
    const/4 v0, 0x1

    .line 658
    :goto_28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v5

    .line 659
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 660
    :cond_3c
    const-string v0, "\u041d\u0435 \u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430"

    const-string v1, "Not set up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 661
    const v0, -0x555556

    move v1, v0

    move-object v3, v2

    .line 682
    :goto_49
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 684
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 685
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfo(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 657
    :cond_61
    const/4 v0, 0x0

    goto :goto_28

    .line 662
    :cond_63
    if-nez v5, :cond_67

    if-eqz v0, :cond_9d

    .line 663
    :cond_67
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 664
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 665
    goto :goto_49

    .line 666
    :cond_73
    if-lez v4, :cond_84

    const-string v0, "streaming"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 667
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    .line 668
    goto :goto_49

    .line 670
    :cond_84
    if-eqz v3, :cond_94

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_94

    .line 671
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    :goto_90
    const/16 v1, -0x339a

    move-object v3, v0

    goto :goto_49

    .line 672
    :cond_94
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    .line 675
    :cond_9d
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 676
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 677
    goto :goto_49

    .line 679
    :cond_a9
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u2713 \u00b7 \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d\u0430"

    const-string v1, "Saved \u2713 \u00b7 not connected"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    .line 680
    goto :goto_49
.end method

.method private static row(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 457
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 458
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 459
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 460
    return-object v0
.end method

.method private static scheduleStatus(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 625
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 626
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    return-void
.end method

.method private static setKeyHidden(Z)V
    .registers 5

    .prologue
    .line 493
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    if-nez v0, :cond_5

    .line 504
    :cond_4
    :goto_4
    return-void

    .line 496
    :cond_5
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 497
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    const v3, 0x80001

    .line 498
    if-eqz p0, :cond_2f

    const/16 v0, 0x80

    .line 499
    :goto_14
    or-int/2addr v0, v3

    .line 497
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 500
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 501
    if-ltz v1, :cond_4

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gt v1, v0, :cond_4

    .line 502
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->keyView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4

    .line 499
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

    .line 509
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->savedBands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 513
    const-string v1, ""

    .line 515
    :try_start_18
    const-string v0, "clipboard"

    .line 516
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 517
    if-eqz v0, :cond_14a

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    if-eqz v2, :cond_14a

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-lez v2, :cond_14a

    .line 518
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_c0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[^0-9a-fA-F]"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_4c} :catch_c3

    move-result-object v0

    .line 523
    :goto_4d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_c6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 524
    :goto_5c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 525
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 526
    aget-object v2, v0, v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_ca

    aget-object v2, v0, v10

    .line 527
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

    .line 528
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

    .line 527
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 519
    :cond_c0
    :try_start_c0
    const-string v0, ""
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c2} :catch_c3

    goto :goto_4d

    .line 521
    :catch_c3
    move-exception v0

    move-object v0, v1

    goto :goto_4d

    .line 523
    :cond_c6
    const-string v0, ""

    move-object v1, v0

    goto :goto_5c

    .line 526
    :cond_ca
    const-string v2, "\u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v6, "Band"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7b

    .line 530
    :cond_d3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_101

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u041f\u043e\u0441\u0442\u0430\u0432\u0438 \u043a\u043b\u044e\u0447\u0430 \u043e\u0442 \u043a\u043b\u0438\u043f\u0431\u043e\u0440\u0434\u0430 (\u2026"

    const-string v5, "Paste the key from the clipboard (\u2026"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x1c

    .line 532
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    :cond_101
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 535
    const-string v0, "\u041d\u044f\u043c\u0430 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438 \u0433\u0440\u0438\u0432\u043d\u0438. \u0412\u044a\u0432\u0435\u0434\u0438 MAC \u0438 \u043a\u043b\u044e\u0447 \u0432\u0435\u0434\u043d\u044a\u0436 \u2014 \u043f\u043e\u0441\u043b\u0435 \u0449\u0435 \u0441\u0430 \u0442\u0443\u043a."

    const-string v1, "No saved bands yet. Enter MAC and key once \u2014 then they are here."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 560
    :goto_116
    return-void

    .line 541
    :cond_117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u0413\u0440\u0438\u0432\u043d\u0430 \u043e\u0442 \u0437\u0430\u043f\u0430\u0437\u0435\u043d\u0438\u0442\u0435"

    const-string v5, "Band from saved"

    .line 542
    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-array v0, v8, [Ljava/lang/String;

    .line 543
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$6;

    invoke-direct {v4, v3, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$6;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v2, "Close"

    .line 558
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_116

    :cond_14a
    move-object v0, v1

    goto/16 :goto_4d
.end method

.method static showXiaomiLogin(Landroid/app/Activity;Landroid/view/View;)V
    .registers 11

    .prologue
    const/high16 v8, 0x42380000    # 46.0f

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 880
    const-string v0, "text_primary"

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 881
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 882
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 883
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 884
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v3, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 886
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v2

    .line 887
    const-string v3, "\u0418\u043c\u0435\u0439\u043b \u0438\u043b\u0438 \u0442\u0435\u043b\u0435\u0444\u043e\u043d"

    const-string v4, "Email or phone"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 888
    const/16 v3, 0x21

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 889
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 890
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 891
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v0

    .line 894
    const-string v3, "\u041f\u0430\u0440\u043e\u043b\u0430"

    const-string v4, "Password"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 895
    const/16 v3, 0x81

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 896
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 897
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 898
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 899
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 901
    const-string v3, "\u0414\u0430\u043d\u043d\u0438\u0442\u0435 \u0437\u0430 \u0432\u0445\u043e\u0434 \u043d\u0435 \u0441\u0435 \u043f\u0430\u0437\u044f\u0442 \u2014 \u043f\u043e\u043b\u0437\u0432\u0430\u0442 \u0441\u0435 \u0441\u0430\u043c\u043e \u0441\u0435\u0433\u0430, \u0437\u0430 \u0434\u0430 \u0441\u0435 \u0432\u0437\u0435\u043c\u0435 \u043a\u043b\u044e\u0447\u044a\u0442 \u043e\u0442 Xiaomi."

    const-string v4, "The login is not stored \u2014 used only now, to fetch the key from Xiaomi."

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text_secondary"

    const v5, -0x655f5a

    .line 904
    invoke-static {p0, v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 901
    invoke-static {p0, v3, v7, v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 905
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v6, v4, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 906
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 908
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u0412\u0445\u043e\u0434 \u0441 Xiaomi \u0430\u043a\u0430\u0443\u043d\u0442"

    const-string v5, "Log in with Xiaomi account"

    .line 909
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 910
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "\u0412\u0437\u0435\u043c\u0438 \u043a\u043b\u044e\u0447\u0430"

    const-string v4, "Fetch key"

    .line 911
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiLoginConfirm;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043a\u0430\u0437"

    const-string v2, "Cancel"

    .line 913
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 914
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 915
    return-void
.end method

.method private static sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 482
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x42300000    # 44.0f

    .line 483
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 484
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 485
    return-object v0
.end method

.method private static startTest(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 600
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->flushConfigFromUi(Landroid/app/Activity;)V

    .line 601
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 602
    :cond_13
    const-string v0, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0432\u0430\u043b\u0438\u0434\u0435\u043d MAC \u0438 \u043a\u043b\u044e\u0447 (32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430)"

    const-string v1, "Enter a valid MAC and key (32 chars)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 615
    :goto_1e
    return-void

    .line 605
    :cond_1f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 606
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$7;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$7;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_1e

    .line 614
    :cond_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTestAfterPermission(Landroid/app/Activity;)V

    goto :goto_1e
.end method

.method private static startTestAfterPermission(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    .line 619
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsFullReconnect(Landroid/app/Activity;)V

    .line 620
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v1, "Connecting to the band\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 621
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->scheduleStatus(Landroid/app/Activity;)V

    .line 622
    return-void
.end method

.method private static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 796
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 799
    :goto_8
    return-void

    .line 797
    :catch_9
    move-exception v0

    goto :goto_8
.end method
