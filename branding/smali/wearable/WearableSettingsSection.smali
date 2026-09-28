.class public final Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PairClick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PulseHelpClick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoReduceToggle;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LimitSaver;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoOpenToggle;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;,
        Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;
    }
.end annotation


# static fields
.field private static final STATUS:Ljava/lang/Runnable;

.field private static final TAG:Ljava/lang/String; = "xems_band_settings"

.field private static final TEST_MS:J = 0xea60L

.field private static bandInfoView:Landroid/widget/TextView;

.field private static final handler:Landroid/os/Handler;

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

    .line 590
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$4;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTest(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTestAfterPermission(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$300()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->refreshStatus(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$500()J
    .registers 2

    .prologue
    .line 24
    sget-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->endTest(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$902(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    return-object p0
.end method

.method private static addConnectionPart(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;ZII)V
    .registers 16

    .prologue
    const/high16 v9, 0x41500000    # 13.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/high16 v7, 0x41400000    # 12.0f

    const/4 v1, 0x0

    .line 314
    const-string v0, "\u041c\u043e\u0434\u0435\u043b \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v3, "Band model"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v0, v3, p4, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 315
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 316
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 317
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 319
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "\u0410\u0432\u0442\u043e"

    const-string v5, "Auto"

    .line 320
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "Band 8 \u0438 \u043f\u043e-\u0441\u0442\u0430\u0440\u0438"

    const-string v5, "Band 8 and older"

    .line 321
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const/4 v4, 0x2

    const-string v5, "Band 9 / 10"

    aput-object v5, v0, v4

    .line 322
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v4

    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;

    invoke-direct {v5, p0, p2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$TransportPick;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 319
    invoke-static {p0, v0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    if-eqz p3, :cond_67

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->usesRemote(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1aa

    :cond_67
    const/4 v0, 0x0

    .line 329
    :goto_68
    if-eqz v0, :cond_9b

    .line 330
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v4, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 331
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    const-string v0, "\u041e\u0442\u0432\u0430\u0440\u044f\u0439 XEMS \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v4, "Open XEMS on the band"

    .line 333
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u041f\u0440\u0438 \u0441\u0442\u0430\u0440\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 \u0438\u043b\u0438 AI \u0441\u0435\u0441\u0438\u044f \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0441\u0435 \u043f\u043e\u043a\u0430\u0437\u0432\u0430 \u0441\u0430\u043c\u043e (Band 9 / 10)."

    const-string v5, "When a workout or AI session starts the app comes up by itself (Band 9 / 10)."

    .line 334
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandAutoOpen(Landroid/content/Context;)Z

    move-result v5

    new-instance v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoOpenToggle;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoOpenToggle;-><init>(Landroid/app/Activity;)V

    .line 332
    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 337
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v4, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 338
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    :cond_9b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_ae

    .line 342
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandTransport(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1c9

    .line 343
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->usesClassic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c9

    :cond_ae
    move v0, v2

    .line 344
    :goto_af
    if-eqz v0, :cond_14d

    if-eqz p3, :cond_14d

    .line 345
    const-string v0, "XEMS \u0441\u0435 \u043e\u0442\u0432\u0430\u0440\u044f \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0441\u0430\u043c \u043f\u0440\u0438 \u0441\u0442\u0430\u0440\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 (\u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u043f\u043e-\u0433\u043e\u0440\u0435). \u0420\u044a\u0447\u043d\u043e: \u0431\u0443\u0442\u043e\u043d\u044a\u0442 \u043f\u043e-\u0434\u043e\u043b\u0443, \u0438\u043b\u0438 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2014 \u0432\u0434\u0438\u0433\u043d\u0438 \u043a\u0438\u0442\u043a\u0430\u0442\u0430, \u043f\u043b\u044a\u0437\u043d\u0438 \u043d\u0430\u0433\u043e\u0440\u0435, \u043f\u0440\u0435\u0432\u044a\u0440\u0442\u0438 \u0434\u043e XEMS."

    const-string v3, "XEMS opens on the band by itself when a workout starts (setting above). By hand: the button below, or on the band \u2014 raise the wrist, swipe up, scroll to XEMS."

    .line 346
    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {p0, v0, v9, p5, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 349
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 350
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 352
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 353
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9, p5, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 354
    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->bind(Landroid/widget/TextView;)V

    .line 355
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v0

    const/16 v5, 0x44

    if-lt v0, v5, :cond_1cc

    .line 358
    const-string v0, "\u041f\u0440\u0435\u0438\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    const-string v5, "Reinstall"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f8
    const-string v5, "bg_screen"

    const v6, -0xd5d5d6

    .line 359
    invoke-static {p0, v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 357
    invoke-static {p0, v0, v5, p4}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 360
    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;

    invoke-direct {v5, p0, v4}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;-><init>(Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 369
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 370
    const-string v3, "\u041e\u0442\u0432\u043e\u0440\u0438 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v4, "Open on the band"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, -0xd182ce

    const/4 v5, -0x1

    invoke-static {p0, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    .line 372
    new-instance v4, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v1, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    :cond_14d
    const-string v0, ""

    invoke-static {p0, v0, v9, p5, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    .line 377
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 378
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 381
    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 382
    const-string v3, ""

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v3, v4, p5, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    .line 383
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430"

    const-string v2, "Test connection"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, -0xd182ce

    const/4 v3, -0x1

    invoke-static {p0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 387
    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    return-void

    .line 324
    :cond_1aa
    const-string v0, "\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v4, "Control from the band"

    .line 325
    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u041f\u043b\u044a\u0437\u043d\u0438 \u0434\u043e \u041c\u0443\u0437\u0438\u043a\u0430: \u043f\u0443\u043b\u0441 \u0438 \u0431\u043b\u043e\u043a; \u25b6 \u0441\u0442\u0430\u0440\u0442/\u043f\u0430\u0443\u0437\u0430, \u23ed \u23ee \u0441\u0438\u043b\u0430 \u00b1."

    const-string v5, "Swipe to Music: HR and block; \u25b6 start/pause, \u23ed \u23ee strength \u00b1."

    .line 326
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isBandRemoteEnabled(Landroid/content/Context;)Z

    move-result v5

    new-instance v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$RemoteToggle;-><init>(Landroid/app/Activity;)V

    .line 324
    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    goto/16 :goto_68

    :cond_1c9
    move v0, v1

    .line 343
    goto/16 :goto_af

    .line 358
    :cond_1cc
    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u0439"

    const-string v5, "Install"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f8
.end method

.method private static addPulsePart(Landroid/app/Activity;Landroid/widget/LinearLayout;II)V
    .registers 14

    .prologue
    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 223
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 224
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 225
    const-string v1, "\u041f\u0443\u043b\u0441"

    const-string v2, "Heart rate"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v9, p2, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    const-string v1, "?"

    const-string v2, "bg_screen"

    const v3, -0xd5d5d6

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {p0, v1, v2, p2}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 228
    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PulseHelpClick;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PulseHelpClick;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    const-string v0, "\u0410\u0432\u0442\u043e-\u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043f\u043e \u043f\u0443\u043b\u0441"

    const-string v1, "Auto control by heart rate"

    .line 233
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041f\u0440\u0438 \u043f\u043e\u043a\u0430\u0447\u0432\u0430\u043d\u0435 \u043a\u044a\u043c \u043f\u0440\u0430\u0433\u0430 \u0441\u0432\u0430\u043b\u044f \u043f\u044a\u0440\u0432\u043e \u0441\u0438\u043b\u0430\u0442\u0430, \u043f\u043e\u0441\u043b\u0435 \u0438\u043c\u043f\u0443\u043b\u0441\u0430, \u043f\u043e\u0441\u043b\u0435 \u0447\u0435\u0441\u0442\u043e\u0442\u0430\u0442\u0430."

    const-string v2, "Near the limit it lowers strength first, then pulse width, then frequency."

    .line 234
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoReduceToggle;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$AutoReduceToggle;-><init>(Landroid/app/Activity;)V

    .line 232
    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 240
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 241
    const-string v1, "\u041f\u0440\u0430\u0433 \u043f\u0443\u043b\u0441"

    const-string v2, "HR limit"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v9, p2, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 242
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->field(Landroid/app/Activity;I)Landroid/widget/EditText;

    move-result-object v1

    .line 244
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 245
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 246
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 247
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isHrThresholdManual(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_103

    :goto_ca
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 249
    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LimitSaver;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LimitSaver;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42a80000    # 84.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42300000    # 44.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    const-string v0, "\u0417\u0435\u043b\u0435\u043d\u043e = \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u0435\u043d \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e. \u0422\u0432\u043e\u044f \u0441\u0442\u043e\u0439\u043d\u043e\u0441\u0442 \u0435 \u0441 \u043f\u0440\u0438\u043e\u0440\u0438\u0442\u0435\u0442; 0 = \u043f\u0430\u043a \u0430\u0432\u0442\u043e\u043c\u0430\u0442\u0438\u0447\u043d\u043e."

    const-string v1, "Green = suggested automatically. Your value has priority; 0 = automatic again."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8, p3, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 256
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 257
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    return-void

    .line 248
    :cond_103
    const p2, -0x994496

    goto :goto_ca
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLicenseSection;->attach(Landroid/app/Activity;Landroid/view/View;)V

    .line 39
    :try_start_3
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    .line 43
    :goto_6
    return-void

    .line 40
    :catch_7
    move-exception v0

    .line 41
    const-string v1, "WearableSettingsSection.attach"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method static bandInfo(Landroid/app/Activity;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 652
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->modelLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5d

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isLinkUp()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 659
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->getBatteryPercent()I

    move-result v0

    .line 660
    if-ltz v0, :cond_41

    .line 661
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

    .line 663
    :cond_41
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus;->isKnownNotWorn()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 664
    const-string v0, " \u00b7 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043d\u0435 \u0435 \u043d\u0430 \u0440\u044a\u043a\u0430\u0442\u0430"

    const-string v3, "not worn"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    :cond_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 656
    :cond_5d
    if-eqz v1, :cond_61

    move-object v0, v1

    goto :goto_17

    .line 657
    :cond_61
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u043d\u0435 \u0435 \u0441\u0434\u0432\u043e\u0435\u043d\u0430 \u0441 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0430"

    const-string v1, "The band is not paired with the phone"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method private static bandRow(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;ZII)Landroid/view/View;
    .registers 18

    .prologue
    .line 158
    const/4 v1, 0x0

    aget-object v4, p2, v1

    .line 159
    const/4 v1, 0x2

    aget-object v1, p2, v1

    if-eqz v1, :cond_138

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 160
    :goto_f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1f

    .line 161
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_13c

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 164
    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2d

    .line 165
    const-string v1, "\u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v2, "Band"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_2d
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableConfig;->roleOfBand(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 169
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 171
    const-string v2, "bg_screen"

    const v3, -0xededee

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 173
    invoke-virtual {v10, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 175
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->row(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 176
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 177
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 178
    const/high16 v5, 0x41800000    # 16.0f

    const/4 v6, 0x1

    move/from16 v0, p4

    invoke-static {p0, v1, v5, v0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    const/high16 v5, 0x41400000    # 12.0f

    const/4 v6, 0x0

    move/from16 v0, p5

    invoke-static {p0, v4, v5, v0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    const-string v3, "\u0417\u0430\u0431\u0440\u0430\u0432\u0438"

    const-string v5, "Forget"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "bg_elevated"

    const v6, -0xe0dcd4

    .line 182
    invoke-static {p0, v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 181
    move/from16 v0, p5

    invoke-static {p0, v3, v5, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v3

    .line 183
    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;

    invoke-direct {v5, p0, p1, v4, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetClick;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x42100000    # 36.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 187
    if-eqz p3, :cond_140

    .line 188
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0418\u0437\u043a\u043b."

    const-string v5, "Off"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u041f\u0443\u043b\u0441"

    const-string v5, "Pulse"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435"

    const-string v5, "Control"

    .line 189
    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "\u041f\u0443\u043b\u0441 + \u0443\u043f\u0440."

    const-string v5, "Pulse + control"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move-object v8, v1

    .line 192
    :goto_ee
    const/4 v1, -0x1

    if-ne v9, v1, :cond_15b

    .line 193
    const/4 v1, 0x0

    move v7, v1

    .line 199
    :goto_f3
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v11, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 201
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 202
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;

    const/4 v2, 0x1

    aget-object v5, p2, v2

    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0, v8, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v10, v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    const/4 v1, -0x1

    if-ne v9, v1, :cond_16d

    .line 206
    const-string v1, "\u041d\u0435 \u0441\u0435 \u043f\u043e\u043b\u0437\u0432\u0430."

    const-string v2, "Not used."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    :goto_11f
    const/high16 v2, 0x41480000    # 12.5f

    const/4 v3, 0x0

    move/from16 v0, p5

    invoke-static {p0, v1, v2, v0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 216
    const/4 v2, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 217
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    return-object v10

    .line 159
    :cond_138
    const-string v1, ""

    goto/16 :goto_f

    .line 162
    :cond_13c
    const-string v1, ""

    goto/16 :goto_1f

    .line 190
    :cond_140
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0418\u0437\u043a\u043b."

    const-string v5, "Off"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u041f\u0443\u043b\u0441"

    const-string v5, "Pulse"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move-object v8, v1

    goto :goto_ee

    .line 194
    :cond_15b
    if-nez p3, :cond_160

    .line 195
    const/4 v1, 0x1

    move v7, v1

    goto :goto_f3

    .line 197
    :cond_160
    const/4 v1, 0x2

    if-ne v9, v1, :cond_166

    const/4 v1, 0x1

    :goto_164
    move v7, v1

    goto :goto_f3

    :cond_166
    const/4 v1, 0x1

    if-ne v9, v1, :cond_16b

    const/4 v1, 0x2

    goto :goto_164

    :cond_16b
    const/4 v1, 0x3

    goto :goto_164

    .line 207
    :cond_16d
    const/4 v1, 0x2

    if-ne v9, v1, :cond_179

    .line 208
    const-string v1, "\u041f\u0443\u043b\u0441 \u0437\u0430 \u2665, AI \u0441\u0435\u0441\u0438\u044f\u0442\u0430 \u0438 \u043a\u0430\u043b\u043e\u0440\u0438\u0438\u0442\u0435. \u041d\u0435 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v2, "Heart rate for \u2665, the AI session and calories. Does not control the training."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11f

    .line 210
    :cond_179
    const/4 v1, 0x1

    if-ne v9, v1, :cond_185

    .line 211
    const-string v1, "\u0421\u0442\u0430\u0440\u0442, \u043f\u0430\u0443\u0437\u0430 \u0438 \u0441\u0438\u043b\u0430 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430. \u041f\u0443\u043b\u0441\u044a\u0442 \u045d \u043d\u0435 \u0441\u0435 \u043f\u043e\u043b\u0437\u0432\u0430."

    const-string v2, "Start, pause and strength from the band. Its heart rate is not used."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11f

    .line 213
    :cond_185
    const-string v1, "\u041f\u0443\u043b\u0441 \u0437\u0430 \u2665 \u0438 AI, \u0438 \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u043e\u0442 \u0440\u044a\u043a\u0430\u0442\u0430."

    const-string v2, "Heart rate for \u2665 and AI, and training control from the wrist."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11f
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 14

    .prologue
    .line 46
    if-eqz p0, :cond_6

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    .line 133
    :cond_6
    :goto_6
    return-void

    .line 49
    :cond_7
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->scrollContent(Landroid/content/Context;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    .line 50
    if-eqz v8, :cond_6

    .line 53
    const-string v0, "xems_band_settings"

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_26

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->needsBand()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v3

    .line 62
    const-string v0, "text_primary"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 63
    const-string v0, "text_secondary"

    const v1, -0x655f5a

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 64
    const-string v0, "bg_elevated"

    const v1, -0xe0dcd4

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 66
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    const-string v1, "xems_band_settings"

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 71
    invoke-virtual {v9, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 73
    const-string v0, "\u0413\u0440\u0438\u0432\u043d\u0438 \u00b7 Xiaomi Smart Band"

    const-string v1, "Bands \u00b7 Xiaomi Smart Band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v4, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    const-string v0, "\u0421\u0434\u0432\u043e\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u0432\u0435\u0434\u043d\u044a\u0436, \u043f\u043e\u0441\u043b\u0435 \u0438\u0437\u0431\u0435\u0440\u0438 \u0437\u0430 \u043a\u0430\u043a\u0432\u043e \u044f \u043f\u043e\u043b\u0437\u0432\u0430\u0448."

    const-string v1, "Pair the band once, then choose what it is used for."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v5, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v6, 0x0

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 79
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->knownBands(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v10

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 85
    const-string v0, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0441\u0434\u0432\u043e\u0435\u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430."

    const-string v2, "No band paired yet."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41700000    # 15.0f

    const/4 v6, 0x0

    invoke-static {p0, v0, v2, v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 87
    const/4 v2, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v0, v2, v6, v7, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    :cond_d3
    const/4 v0, 0x0

    move v6, v0

    move v7, v1

    :goto_d6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_10a

    .line 91
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->roleOfBand(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_ee

    .line 93
    add-int/lit8 v7, v7, 0x1

    .line 95
    :cond_ee
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move-object v0, p0

    move-object v1, p1

    .line 98
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandRow(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;ZII)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_d6

    .line 100
    :cond_10a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_131

    if-eqz v3, :cond_131

    .line 101
    const-string v0, "\u0421 \u0434\u0432\u0435 \u0433\u0440\u0438\u0432\u043d\u0438: \u0435\u0434\u043d\u0430\u0442\u0430 \u0435 \u041f\u0443\u043b\u0441 (\u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430), \u0434\u0440\u0443\u0433\u0430\u0442\u0430 \u0423\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435 (\u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430)."

    const-string v1, "With two bands: one is Pulse (on the client), the other Control (the trainer\'s)."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v5, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 105
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/high16 v11, 0x41000000    # 8.0f

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v0, v1, v2, v6, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 106
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    :cond_131
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_192

    .line 109
    const-string v0, "\u0421\u0434\u0432\u043e\u0438 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "Pair a band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_13f
    const v1, -0x1595d5

    const/4 v2, -0x1

    .line 108
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PairClick;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PairClick;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v6, 0x42480000    # 50.0f

    .line 113
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    if-lez v7, :cond_169

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->usesPulse(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 116
    invoke-static {p0, v9, v4, v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->addPulsePart(Landroid/app/Activity;Landroid/widget/LinearLayout;II)V

    .line 118
    :cond_169
    if-lez v7, :cond_19b

    move-object v0, p0

    move-object v1, v9

    move-object v2, p1

    .line 119
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->addConnectionPart(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View;ZII)V

    .line 125
    :goto_171
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 128
    invoke-virtual {v8, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$DetachListener;-><init>()V

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 130
    if-lez v7, :cond_6

    .line 131
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->scheduleStatus(Landroid/app/Activity;)V

    goto/16 :goto_6

    .line 110
    :cond_192
    const-string v0, "\uff0b \u0421\u0434\u0432\u043e\u0438 \u0434\u0440\u0443\u0433\u0430 \u0433\u0440\u0438\u0432\u043d\u0430"

    const-string v1, "\uff0b Pair another band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13f

    .line 121
    :cond_19b
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    goto :goto_171
.end method

.method private static endTest(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 730
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    .line 731
    const-string v0, "settings"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->release(Landroid/content/Context;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method private static ensureSaved(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 147
    if-nez p2, :cond_3b

    const-string v0, ""

    .line 148
    :goto_4
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 149
    :cond_14
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_19
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->savedKeyFor(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3a

    .line 152
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->normalizeMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->bondedName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {p0, v1, v0, v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->rememberBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_3a
    return-void

    .line 147
    :cond_3b
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static field(Landroid/app/Activity;I)Landroid/widget/EditText;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x41400000    # 12.0f

    .line 531
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 532
    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 533
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 534
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 535
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 536
    const-string v1, "bg_screen"

    const v2, -0xededee

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 537
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 536
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    return-object v0
.end method

.method static isValidKey(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 549
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

    .line 550
    :goto_1a
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 551
    :cond_2a
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    :cond_2f
    const-string v1, "[0-9a-fA-F]{32}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 549
    :cond_36
    const-string v0, ""

    goto :goto_1a
.end method

.method static isValidMac(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 557
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

    .line 558
    :goto_1a
    const-string v1, "[0-9a-fA-F]{12}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 557
    :cond_21
    const-string v0, ""

    goto :goto_1a
.end method

.method private static knownBands(Landroid/app/Activity;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 138
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ensureSaved(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_11
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->hasControlBand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 141
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getControlMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getControlKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ensureSaved(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_22
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->savedBands(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static label(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 524
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, p1, v0, p2, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 525
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 526
    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 527
    return-object v0
.end method

.method private static refreshStatus(Landroid/app/Activity;)V
    .registers 11

    .prologue
    const v1, -0x10acb0

    const v2, -0x994496

    .line 610
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    if-nez p0, :cond_d

    .line 648
    :cond_c
    :goto_c
    return-void

    .line 615
    :cond_d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getBleState()Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->getLastHeartRate()I

    move-result v4

    .line 617
    sget-wide v6, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gtz v0, :cond_27

    const-string v0, "settings"

    .line 618
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isOwnedBy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_27
    const/4 v0, 0x1

    .line 619
    :goto_28
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->isListeningActive()Z

    move-result v5

    .line 620
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 621
    :cond_3c
    const-string v0, "\u041d\u0435 \u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0435\u043d\u0430"

    const-string v1, "Not set up"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 622
    const v0, -0x555556

    move v1, v0

    move-object v3, v2

    .line 643
    :goto_49
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->statusView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 645
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 646
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfoView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfo(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 618
    :cond_61
    const/4 v0, 0x0

    goto :goto_28

    .line 623
    :cond_63
    if-nez v5, :cond_67

    if-eqz v0, :cond_9d

    .line 624
    :cond_67
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 625
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 626
    goto :goto_49

    .line 627
    :cond_73
    if-lez v4, :cond_84

    const-string v0, "streaming"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 628
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    .line 629
    goto :goto_49

    .line 631
    :cond_84
    if-eqz v3, :cond_94

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_94

    .line 632
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 634
    :goto_90
    const/16 v1, -0x339a

    move-object v3, v0

    goto :goto_49

    .line 633
    :cond_94
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435\u2026"

    const-string v1, "Connecting\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_90

    .line 636
    :cond_9d
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 637
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 638
    goto :goto_49

    .line 640
    :cond_a9
    const-string v0, "\u0417\u0430\u043f\u0430\u0437\u0435\u043d\u043e \u2713 \u00b7 \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d\u0430"

    const-string v1, "Saved \u2713 \u00b7 not connected"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    .line 641
    goto :goto_49
.end method

.method private static row(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .registers 3

    .prologue
    .line 517
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 518
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 519
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 520
    return-object v0
.end method

.method private static scheduleStatus(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 586
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->STATUS:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    return-void
.end method

.method private static sideButton(Landroid/app/Activity;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 542
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x42300000    # 44.0f

    .line 543
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 544
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 545
    return-object v0
.end method

.method private static startTest(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 562
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isConfigured(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->isValidMac(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 563
    :cond_10
    const-string v0, "\u0412\u044a\u0432\u0435\u0434\u0438 \u0432\u0430\u043b\u0438\u0434\u0435\u043d MAC \u0438 \u043a\u043b\u044e\u0447 (32 \u0441\u0438\u043c\u0432\u043e\u043b\u0430)"

    const-string v1, "Enter a valid MAC and key (32 chars)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 576
    :goto_1b
    return-void

    .line 566
    :cond_1c
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->hasAllBlePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 567
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$3;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBlePermissions;->ensureConnectPermission(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_1b

    .line 575
    :cond_2b
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->startTestAfterPermission(Landroid/app/Activity;)V

    goto :goto_1b
.end method

.method private static startTestAfterPermission(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    sput-wide v0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->testUntilMs:J

    .line 580
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->settingsFullReconnect(Landroid/app/Activity;)V

    .line 581
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v1, "Connecting to the band\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->toast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 582
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->scheduleStatus(Landroid/app/Activity;)V

    .line 583
    return-void
.end method

.method private static toast(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 736
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_9

    .line 739
    :goto_8
    return-void

    .line 737
    :catch_9
    move-exception v0

    goto :goto_8
.end method
