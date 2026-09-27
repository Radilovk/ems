.class public final Lcom/isaigu/gymapp/wearable/PlanScreen;
.super Ljava/lang/Object;
.source "PlanScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/PlanScreen$AddClick;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$RefreshClick;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$ModeIndex;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$RowLong;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$ByName;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$PermClick;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$SettingsFold;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$ToggleOn;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$LeadClick;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$SyncClick;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$Tick;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$NaSave;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$NaPick;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$NaUser;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$NaFilter;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$NewAppt;,
        Lcom/isaigu/gymapp/wearable/PlanScreen$Runnable0;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;

.field static final MIN:J = 0xea60L

.field static final REQ_CALENDAR:I = 0x1c85

.field private static final TICK:Ljava/lang/Runnable;

.field private static content:Landroid/widget/LinearLayout;

.field private static mode:I

.field private static modeHolder:Landroid/widget/LinearLayout;

.field private static picker:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field private static root:Landroid/view/View;

.field private static settingsOpen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->H:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/isaigu/gymapp/wearable/PlanScreen$Tick;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$Tick;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->TICK:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/view/View;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->root:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(I)I
    .registers 1

    .prologue
    .line 39
    sput p0, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    return p0
.end method

.method static synthetic access$300()Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->picker:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 39
    sput-object p0, Lcom/isaigu/gymapp/wearable/PlanScreen;->picker:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object p0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->settingsOpen:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    .prologue
    .line 39
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/PlanScreen;->settingsOpen:Z

    return p0
.end method

.method static activity(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 439
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 440
    :goto_6
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1a

    .line 441
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_13

    .line 442
    check-cast v0, Landroid/app/Activity;

    .line 446
    :goto_10
    return-object v0

    .line 439
    :cond_11
    const/4 v0, 0x0

    goto :goto_6

    .line 444
    :cond_13
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_6

    .line 446
    :cond_1a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v0

    goto :goto_10
.end method

.method private static build(Landroid/content/Context;)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v11, 0x42300000    # 44.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v6, -0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 84
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 85
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 86
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 87
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 89
    invoke-virtual {v1, v8}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 90
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 91
    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 92
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v3, v4, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 93
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 97
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 98
    const-string v4, "\u041f\u043b\u0430\u043d"

    const-string v5, "Plan"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41d00000    # 26.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    const-string v4, "\u0427\u0430\u0441\u043e\u0432\u0435\u0442\u0435 \u043e\u0442 \u043a\u0430\u043b\u0435\u043d\u0434\u0430\u0440\u0430 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430"

    const-string v5, "Appointments from the tablet\'s calendar"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v4, v5, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    .line 101
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v8, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    sput-object v3, Lcom/isaigu/gymapp/wearable/PlanScreen;->modeHolder:Landroid/widget/LinearLayout;

    .line 105
    sget-object v3, Lcom/isaigu/gymapp/wearable/PlanScreen;->modeHolder:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x437a0000    # 250.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const-string v3, "+ \u0427\u0430\u0441"

    const-string v4, "+ Booking"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 107
    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$AddClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/wearable/PlanScreen$AddClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 111
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 112
    const-string v3, "\u21bb"

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v6, 0x2c

    invoke-static {p0, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 113
    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$RefreshClick;

    invoke-direct {v4}, Lcom/isaigu/gymapp/wearable/PlanScreen$RefreshClick;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 115
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 116
    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    .line 120
    sget-object v1, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    sput-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->root:Landroid/view/View;

    .line 122
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V

    .line 123
    sget-object v1, Lcom/isaigu/gymapp/wearable/PlanScreen;->H:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/wearable/PlanScreen;->TICK:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    sget-object v1, Lcom/isaigu/gymapp/wearable/PlanScreen;->H:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/wearable/PlanScreen;->TICK:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    return-object v0
.end method

.method public static create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen;->build(Landroid/content/Context;)Landroid/view/View;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 64
    :goto_8
    return-object v0

    .line 62
    :catch_9
    move-exception v0

    .line 63
    const-string v1, "plan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static emptyCard(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 594
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 595
    sget v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    if-nez v0, :cond_41

    const-string v0, "\u041d\u044f\u043c\u0430 \u0447\u0430\u0441\u043e\u0432\u0435 \u0434\u043d\u0435\u0441"

    const-string v2, "No appointments today"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    :goto_11
    const/high16 v2, 0x41900000    # 18.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    .line 595
    invoke-static {p0, v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 597
    const-string v0, "\u0417\u0430 Acuity: Acuity \u2192 Integrations \u2192 Google Calendar (\u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043d\u0430 \u0447\u0430\u0441\u043e\u0432\u0435\u0442\u0435). \u041d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u2014 \u0441\u044a\u0449\u0438\u044f\u0442 Google \u0430\u043a\u0430\u0443\u043d\u0442 \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0410\u043a\u0430\u0443\u043d\u0442\u0438, \u0441 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043d\u0430 \u043a\u0430\u043b\u0435\u043d\u0434\u0430\u0440\u0430."

    const-string v2, "For Acuity: Acuity \u2192 Integrations \u2192 Google Calendar (appointment sync). On the tablet \u2014 the same Google account in Settings \u2192 Accounts, calendar sync on."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41580000    # 13.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 602
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 603
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 604
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 605
    return-object v1

    .line 596
    :cond_41
    const-string v0, "\u041d\u044f\u043c\u0430 \u0447\u0430\u0441\u043e\u0432\u0435 \u0442\u0430\u0437\u0438 \u0441\u0435\u0434\u043c\u0438\u0446\u0430"

    const-string v2, "No appointments this week"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method static fill(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/isaigu/gymapp/wearable/Schedule$Appt;Ljava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/Schedule$Appt;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 480
    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/wearable/Schedule;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 481
    const/4 v2, 0x0

    .line 482
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d2

    const/16 v0, 0x3c

    if-ge v2, v0, :cond_d2

    .line 483
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 484
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v3, :cond_55

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 485
    :goto_24
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v4, :cond_58

    iget-object v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    :goto_3f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/Schedule;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 482
    :goto_51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 484
    :cond_55
    const-string v3, ""

    goto :goto_24

    .line 485
    :cond_58
    const-string v4, ""

    goto :goto_3f

    .line 488
    :cond_5b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v3, :cond_cd

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_cd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_85
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0x41800000    # 16.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    iget-object v3, p3, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v3, :cond_d0

    iget-object v3, p3, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v8, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v10, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v3, v8, v10

    if-nez v3, :cond_d0

    const/4 v3, 0x1

    :goto_a0
    invoke-static {p0, v4, v6, v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 490
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 491
    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;

    invoke-direct {v4, p3, v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;-><init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 488
    :cond_cd
    const-string v3, ""

    goto :goto_85

    :cond_d0
    const/4 v3, 0x0

    goto :goto_a0

    .line 495
    :cond_d2
    return-void
.end method

.method private static hero(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;J)Landroid/view/View;
    .registers 14

    .prologue
    .line 254
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 255
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 256
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v4, 0x88

    .line 257
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 256
    invoke-static {v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    sub-long/2addr v0, p2

    long-to-double v0, v0

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 259
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_178

    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    cmp-long v0, p2, v0

    if-gtz v0, :cond_178

    const/4 v0, 0x1

    .line 260
    :goto_61
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 261
    if-eqz v0, :cond_17b

    const-string v1, "\u0421\u0435\u0433\u0430"

    const-string v6, "Now"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6f
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    if-eqz v0, :cond_185

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0442\u0435\u0447\u0435 \u043e\u0442 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-long v6, v4

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "running "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-long v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " min"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 266
    :goto_ba
    const-wide/16 v6, 0xf

    cmp-long v0, v4, v6

    if-gtz v0, :cond_232

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_c2
    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 269
    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x42180000    # 38.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {p0, v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 271
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 272
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->name()Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41b00000    # 22.0f

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_236

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_fe
    const/4 v6, 0x1

    invoke-static {p0, v4, v5, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_23a

    const-string v0, "\u041d\u0435 \u0435 \u0440\u0430\u0437\u043f\u043e\u0437\u043d\u0430\u0442 \u2014 \u0438\u0437\u0431\u0435\u0440\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0430"

    const-string v4, "Not recognised \u2014 pick the client"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_112
    const/high16 v4, 0x41580000    # 13.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 276
    const/4 v4, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 277
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 278
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_26b

    const-string v0, "\u0417\u0430\u0440\u0435\u0434\u0438"

    const-string v3, "Load"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_146
    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 281
    new-instance v3, Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;-><init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->root:Landroid/view/View;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen;->activity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_275

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->flags(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)Landroid/view/View;

    move-result-object v0

    .line 286
    :goto_16c
    if-eqz v0, :cond_177

    .line 287
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    :cond_177
    return-object v2

    .line 259
    :cond_178
    const/4 v0, 0x0

    goto/16 :goto_61

    .line 261
    :cond_17b
    const-string v1, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449"

    const-string v6, "Next"

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6f

    .line 264
    :cond_185
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_196

    const-string v0, "\u0441\u0435\u0433\u0430"

    const-string v1, "now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_ba

    :cond_196
    const-wide/16 v0, 0x3c

    cmp-long v0, v4, v0

    if-gez v0, :cond_1d5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0441\u043b\u0435\u0434 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " min"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_ba

    .line 265
    :cond_1d5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0441\u043b\u0435\u0434 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v6, 0x3c

    div-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u0447 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v6, 0x3c

    rem-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043c\u0438\u043d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v6, 0x3c

    div-long v6, v4, v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " h "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v6, 0x3c

    rem-long v6, v4, v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " min"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_ba

    .line 266
    :cond_232
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_c2

    .line 272
    :cond_236
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_fe

    .line 274
    :cond_23a
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_267

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0434\u043e "

    const-string v5, "until "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_112

    :cond_267
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    goto/16 :goto_112

    .line 280
    :cond_26b
    const-string v0, "\u0418\u0437\u0431\u0435\u0440\u0438"

    const-string v3, "Pick"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_146

    .line 285
    :cond_275
    const/4 v0, 0x0

    goto/16 :goto_16c
.end method

.method static nextUp(Landroid/content/Context;Ljava/util/List;J)Lcom/isaigu/gymapp/wearable/Schedule$Appt;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/Schedule$Appt;",
            ">;J)",
            "Lcom/isaigu/gymapp/wearable/Schedule$Appt;"
        }
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 244
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-static {p0, v0, p2, p3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->status(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;J)I

    move-result v0

    .line 245
    if-eqz v0, :cond_26

    const/4 v2, 0x1

    if-eq v0, v2, :cond_26

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    cmp-long v0, v2, p2

    if-lez v0, :cond_2d

    .line 246
    :cond_26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 249
    :goto_2c
    return-object v0

    .line 243
    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 249
    :cond_31
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public static onHidden(Z)Z
    .registers 3

    .prologue
    .line 70
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->root:Landroid/view/View;

    if-nez v0, :cond_6

    .line 71
    const/4 v0, 0x0

    .line 78
    :goto_5
    return v0

    .line 73
    :cond_6
    if-nez p0, :cond_14

    .line 74
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->invalidate()V

    .line 75
    const-string v0, "poke"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->sync(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/isaigu/gymapp/wearable/PlanScreen;->refresh()V

    .line 78
    :cond_14
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static permissionCard(Landroid/content/Context;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 558
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 559
    const-string v1, "\u0414\u043e\u0441\u0442\u044a\u043f \u0434\u043e \u043a\u0430\u043b\u0435\u043d\u0434\u0430\u0440\u0430"

    const-string v2, "Calendar access"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    const-string v1, "\u0427\u0430\u0441\u043e\u0432\u0435\u0442\u0435 \u0441\u0435 \u0447\u0435\u0442\u0430\u0442 \u043e\u0442 \u043a\u0430\u043b\u0435\u043d\u0434\u0430\u0440\u0430 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440 Acuity \u2192 Google Calendar). \u041d\u0438\u0449\u043e \u043d\u0435 \u0441\u0435 \u043f\u0440\u043e\u043c\u0435\u043d\u044f \u0432 \u043a\u0430\u043b\u0435\u043d\u0434\u0430\u0440\u0430."

    const-string v2, "Appointments are read from the tablet\'s calendar (e.g. Acuity \u2192 Google Calendar). Nothing in the calendar is changed."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 564
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 565
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 566
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 567
    const-string v1, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438"

    const-string v2, "Allow"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 568
    new-instance v2, Lcom/isaigu/gymapp/wearable/PlanScreen$PermClick;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/PlanScreen$PermClick;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    return-object v0
.end method

.method static pickClient(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V
    .registers 7

    .prologue
    .line 454
    const-string v0, "\u041a\u043e\u0439 \u043a\u043b\u0438\u0435\u043d\u0442 \u0435 \u0442\u043e\u0432\u0430?"

    const-string v1, "Which client is this?"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    .line 455
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x208

    .line 454
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 456
    sput-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->picker:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 457
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 458
    const-string v2, "\u0422\u044a\u0440\u0441\u0438"

    const-string v3, "Search"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 459
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 460
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 461
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 462
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 464
    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    invoke-static {}, Lcom/isaigu/gymapp/wearable/Schedule;->users()Ljava/util/List;

    move-result-object v3

    .line 466
    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$ByName;

    invoke-direct {v4}, Lcom/isaigu/gymapp/wearable/PlanScreen$ByName;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 467
    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;

    invoke-direct {v4, p0, v2, v3, p1}, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 468
    const-string v1, ""

    invoke-static {p0, v2, v3, p1, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->fill(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/isaigu/gymapp/wearable/Schedule$Appt;Ljava/lang/String;)V

    .line 469
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_9e

    .line 470
    const-string v1, "\u0411\u0435\u0437 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v2, "No client"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 471
    new-instance v2, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;-><init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    :cond_9e
    const v1, 0x3f59999a    # 0.85f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 475
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 476
    return-void
.end method

.method private static pill(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v2, -0x2

    .line 326
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 327
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 329
    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    return-object v0
.end method

.method static refresh()V
    .registers 16

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 162
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->root:Landroid/view/View;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    if-nez v0, :cond_c

    .line 219
    :cond_b
    :goto_b
    return-void

    .line 165
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 167
    :try_start_12
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->modeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 168
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->modeHolder:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "\u0414\u043d\u0435\u0441"

    const-string v7, "Today"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x1

    const-string v5, "\u0421\u0435\u0434\u043c\u0438\u0446\u0430"

    const-string v7, "Week"

    invoke-static {v5, v7}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    sget v3, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    new-instance v5, Lcom/isaigu/gymapp/wearable/PlanScreen$ModeIndex;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/PlanScreen$ModeIndex;-><init>()V

    invoke-static {v8, v1, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v7, -0x2

    invoke-direct {v3, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 172
    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/Schedule;->canRead(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 173
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/PlanScreen;->permissionCard(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/PlanScreen;->settingsCard(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_6a} :catch_6b

    goto :goto_b

    .line 216
    :catch_6b
    move-exception v0

    .line 217
    const-string v1, "plan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 177
    :cond_85
    :try_start_85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 178
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 179
    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 180
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 181
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 182
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 183
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 184
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 185
    sget v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    if-nez v0, :cond_e4

    move v0, v6

    :goto_b1
    int-to-long v0, v0

    const-wide/32 v14, 0x5265c00

    mul-long/2addr v0, v14

    add-long/2addr v0, v12

    .line 186
    invoke-static {v8, v12, v13, v0, v1}, Lcom/isaigu/gymapp/wearable/Schedule;->read(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object v12

    .line 187
    sget v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    if-nez v0, :cond_e6

    invoke-static {v8, v12, v10, v11}, Lcom/isaigu/gymapp/wearable/PlanScreen;->nextUp(Landroid/content/Context;Ljava/util/List;J)Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    move-result-object v0

    move-object v7, v0

    .line 188
    :goto_c4
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/PlanScreen;->emptyCard(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    :cond_d3
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/PlanScreen;->settingsCard(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    .line 185
    :cond_e4
    const/4 v0, 0x7

    goto :goto_b1

    .line 187
    :cond_e6
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_c4

    .line 191
    :cond_e9
    if-eqz v7, :cond_f4

    .line 192
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v8, v7, v10, v11}, Lcom/isaigu/gymapp/wearable/PlanScreen;->hero(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;J)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    :cond_f4
    sget-object v1, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v8, v12, v10, v11}, Lcom/isaigu/gymapp/wearable/PlanScreen;->summary(Landroid/content/Context;Ljava/util/List;J)Landroid/view/View;

    move-result-object v3

    if-eqz v7, :cond_187

    const/16 v0, 0x10

    :goto_fe
    invoke-static {v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    const/4 v0, 0x0

    move v1, v2

    move-object v3, v0

    .line 197
    :goto_108
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d3

    .line 198
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 199
    iget-wide v14, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-virtual {v9, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    const/4 v5, 0x6

    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 201
    if-eqz v3, :cond_122

    if-eq v5, v4, :cond_179

    .line 203
    :cond_122
    sget v3, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    if-ne v3, v6, :cond_14b

    .line 204
    iget-wide v14, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-static {v14, v15}, Lcom/isaigu/gymapp/wearable/NextClient;->day(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 205
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v8, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v13, 0x41800000    # 16.0f

    invoke-static {v8, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    const/4 v14, 0x0

    const/high16 v15, 0x41000000    # 8.0f

    invoke-static {v8, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v3, v4, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 206
    sget-object v4, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    :cond_14b
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 209
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v8, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v13, 0x40800000    # 4.0f

    invoke-static {v8, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v14, 0x40c00000    # 6.0f

    invoke-static {v8, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v14

    const/high16 v15, 0x40800000    # 4.0f

    invoke-static {v8, v15}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v15

    invoke-virtual {v3, v4, v13, v14, v15}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 210
    sget-object v13, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    sget v4, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    if-ne v4, v6, :cond_18a

    move v4, v2

    :goto_171
    invoke-static {v8, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v5

    .line 212
    :cond_179
    if-ne v0, v7, :cond_18d

    move v5, v6

    :goto_17c
    invoke-static {v8, v0, v10, v11, v5}, Lcom/isaigu/gymapp/wearable/PlanScreen;->row(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;JZ)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_183
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_183} :catch_6b

    .line 197
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_108

    :cond_187
    move v0, v2

    .line 194
    goto/16 :goto_fe

    .line 210
    :cond_18a
    const/16 v4, 0xc

    goto :goto_171

    :cond_18d
    move v5, v2

    .line 212
    goto :goto_17c
.end method

.method private static row(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;JZ)Landroid/view/View;
    .registers 13

    .prologue
    .line 335
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 336
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 337
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 338
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 339
    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {p0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41480000    # 12.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {p0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 341
    const/4 v2, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 342
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 345
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->name()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41840000    # 16.5f

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_13d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_60
    const/4 v5, 0x1

    invoke-static {p0, v2, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 346
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_141

    const-string v0, "\u041d\u044f\u043c\u0430 \u0442\u0430\u043a\u044a\u0432 \u043a\u043b\u0438\u0435\u043d\u0442 \u0432 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u2014 \u043d\u0430\u0442\u0438\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v2, "No such client in the app \u2014 tap to pick one"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_96

    .line 350
    const/high16 v2, 0x41480000    # 12.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {p0, v0, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 351
    const/4 v2, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 352
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 353
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    :cond_96
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->status(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;J)I

    move-result v4

    .line 359
    packed-switch v4, :pswitch_data_1de

    .line 377
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    sub-long/2addr v0, p2

    const-wide/32 v6, 0xea60

    div-long/2addr v0, v6

    .line 378
    const-wide/16 v6, 0x3c

    cmp-long v2, v0, v6

    if-gez v2, :cond_187

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0441\u043b\u0435\u0434 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u043c\u0438\u043d"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_ec
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    move-object v2, v0

    .line 383
    :goto_ef
    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    if-eqz p4, :cond_1d6

    .line 386
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 388
    :goto_10d
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    const/4 v0, 0x2

    if-eq v4, v0, :cond_123

    const/4 v0, 0x3

    if-ne v4, v0, :cond_129

    .line 390
    :cond_123
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 392
    :cond_129
    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 393
    new-instance v0, Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;-><init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    new-instance v0, Lcom/isaigu/gymapp/wearable/PlanScreen$RowLong;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/wearable/PlanScreen$RowLong;-><init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 395
    return-object v3

    .line 345
    :cond_13d
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_60

    .line 348
    :cond_141
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_151

    const-string v0, ""

    goto/16 :goto_74

    :cond_151
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    goto/16 :goto_74

    .line 361
    :pswitch_155
    const-string v0, "\u0441\u0435\u0433\u0430"

    const-string v1, "now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move v1, v0

    .line 363
    goto :goto_ef

    .line 365
    :pswitch_161
    const-string v0, "\u2713 \u043f\u0440\u043e\u0432\u0435\u0434\u0435\u043d\u0430"

    const-string v1, "\u2713 held"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move v1, v0

    .line 367
    goto :goto_ef

    .line 369
    :pswitch_16d
    const-string v0, "\u2717 \u043f\u0440\u043e\u043f\u0443\u0441\u043d\u0430\u0442\u0430"

    const-string v1, "\u2717 missed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    move v1, v0

    .line 371
    goto/16 :goto_ef

    .line 373
    :pswitch_17a
    const-string v0, "? \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v1, "? client"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    move v1, v0

    .line 375
    goto/16 :goto_ef

    .line 379
    :cond_187
    const-wide/16 v6, 0x5a0

    cmp-long v2, v0, v6

    if-gez v2, :cond_1cc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0441\u043b\u0435\u0434 "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v6, 0x3c

    div-long v6, v0, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u0447"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x3c

    div-long/2addr v0, v6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ec

    :cond_1cc
    const-string v0, "\u043f\u0440\u0435\u0434\u0441\u0442\u043e\u0438"

    const-string v1, "to come"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ec

    .line 387
    :cond_1d6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/16 :goto_10d

    .line 359
    :pswitch_data_1de
    .packed-switch 0x1
        :pswitch_155
        :pswitch_161
        :pswitch_16d
        :pswitch_17a
    .end packed-switch
.end method

.method private static settingsCard(Landroid/content/Context;)Landroid/view/View;
    .registers 13

    .prologue
    .line 620
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 621
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 622
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 623
    const-string v0, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438"

    const-string v4, "Settings"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v4, 0x41800000    # 16.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 624
    const-string v0, "xems_client_sync"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "studio"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->enabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u043a\u043b\u0438\u0435\u043d\u0442: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->lead(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u043c\u0438\u043d \u043f\u0440\u0435\u0434\u0438 \u0447\u0430\u0441\u0430"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->lead(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " min before"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_78
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 628
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 \u043a\u043e\u0434 \u043d\u0430 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e "

    const-string v7, " \u00b7 studio code "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v5, 0x41480000    # 12.5f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    .line 625
    invoke-static {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 629
    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 630
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 631
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->settingsOpen:Z

    if-eqz v0, :cond_f6

    const-string v0, "\u2303"

    :goto_cd
    const/high16 v3, 0x41a00000    # 20.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x1

    invoke-static {p0, v0, v3, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 633
    new-instance v0, Lcom/isaigu/gymapp/wearable/PlanScreen$SettingsFold;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$SettingsFold;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 635
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->settingsOpen:Z

    if-nez v0, :cond_f9

    move-object v0, v2

    .line 700
    :goto_e9
    return-object v0

    .line 627
    :cond_ea
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u043a\u043b\u0438\u0435\u043d\u0442: \u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d\u043e"

    const-string v6, "Next client: off"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    .line 628
    :cond_f3
    const-string v0, ""

    goto :goto_9b

    .line 632
    :cond_f6
    const-string v0, "\u2304"

    goto :goto_cd

    .line 638
    :cond_f9
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v1, "Next client"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    const-string v0, "\u041f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0439 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v1, "Offer the next client"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041f\u0440\u0435\u0434\u0438 \u0447\u0430\u0441\u0430, \u043a\u043e\u0433\u0430\u0442\u043e \u043d\u0438\u0449\u043e \u043d\u0435 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u2014 \u0441 \u0432\u044a\u043f\u0440\u043e\u0441; \u0437\u0430\u0440\u0435\u0436\u0434\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0432 \u0441\u0432\u043e\u0431\u043e\u0434\u0435\u043d \u043a\u043e\u0441\u0442\u044e\u043c \u0441 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 \u0438\u043b\u0438 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0438\u0442\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438."

    const-string v3, "Before the appointment, when nothing is training \u2014 asks first; loads the client into a free suit with the last or the recommended settings."

    .line 640
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->enabled(Landroid/content/Context;)Z

    move-result v3

    new-instance v5, Lcom/isaigu/gymapp/wearable/PlanScreen$ToggleOn;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/wearable/PlanScreen$ToggleOn;-><init>(Landroid/content/Context;)V

    .line 639
    invoke-static {p0, v0, v1, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 643
    const-string v0, "\u041a\u043e\u043b\u043a\u043e \u043c\u0438\u043d\u0443\u0442\u0438 \u043f\u0440\u0435\u0434\u0438 \u0447\u0430\u0441\u0430"

    const-string v1, "Minutes before the appointment"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {p0, v0, v1, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 644
    const/4 v1, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 645
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 646
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/widget/LinearLayout;

    .line 647
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 648
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->lead(Landroid/content/Context;)I

    move-result v5

    .line 649
    const/4 v0, 0x5

    new-array v6, v0, [I

    fill-array-data v6, :array_352

    .line 650
    const/4 v0, 0x0

    :goto_168
    array-length v1, v6

    if-ge v0, v1, :cond_1a6

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v6, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " \u043c\u0438\u043d"

    const-string v8, " min"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aget v1, v6, v0

    if-ne v1, v5, :cond_1a4

    const/4 v1, 0x1

    :goto_18b
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v7, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 652
    new-instance v7, Lcom/isaigu/gymapp/wearable/PlanScreen$LeadClick;

    aget v8, v6, v0

    invoke-direct {v7, v8}, Lcom/isaigu/gymapp/wearable/PlanScreen$LeadClick;-><init>(I)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {p0, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_168

    .line 651
    :cond_1a4
    const/4 v1, 0x0

    goto :goto_18b

    .line 655
    :cond_1a6
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->calendars(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 656
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_24a

    .line 657
    const-string v0, "\u041a\u0430\u043b\u0435\u043d\u0434\u0430\u0440"

    const-string v1, "Calendar"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {p0, v0, v1, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 658
    const/4 v1, 0x0

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 659
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 660
    const/4 v0, 0x1

    new-array v5, v0, [Landroid/widget/LinearLayout;

    .line 661
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->calendarId(Landroid/content/Context;)J

    move-result-wide v6

    .line 663
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v1, "All"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_246

    const/4 v0, 0x1

    :goto_1f3
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v1, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 664
    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;

    const-wide/16 v8, -0x1

    invoke-direct {v1, v8, v9}, Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 666
    const/4 v0, 0x0

    move v1, v0

    :goto_20b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24a

    .line 667
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;

    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;->name:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;

    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;->id:J

    cmp-long v0, v10, v6

    if-nez v0, :cond_248

    const/4 v0, 0x1

    :goto_226
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v8, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v8

    .line 668
    new-instance v9, Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;

    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;->id:J

    invoke-direct {v9, v10, v11}, Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;-><init>(J)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    const/4 v0, 0x0

    aget-object v0, v5, v0

    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 666
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20b

    .line 663
    :cond_246
    const/4 v0, 0x0

    goto :goto_1f3

    .line 667
    :cond_248
    const/4 v0, 0x0

    goto :goto_226

    .line 672
    :cond_24a
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0435 \u0440\u0430\u0437\u043f\u043e\u0437\u043d\u0430\u0432\u0430 \u043f\u043e \u0438\u043c\u0435\u0439\u043b, \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0438\u043b\u0438 \u0438\u043c\u0435 \u043e\u0442 \u0447\u0430\u0441\u0430. \u0417\u0430\u0434\u0440\u044a\u0436 \u0440\u0435\u0434, \u0437\u0430 \u0434\u0430 \u0441\u043c\u0435\u043d\u0438\u0448 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v1, "The client is found by e-mail, phone or name in the appointment. Hold a row to change the client."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41480000    # 12.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v5, 0x0

    invoke-static {p0, v0, v1, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 675
    const/4 v1, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 676
    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 677
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 678
    const-string v0, "\u041f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0438\u0442\u0435"

    const-string v1, "Client app"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 680
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 681
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_341

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u043e\u0434 \u043d\u0430 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e: "

    const-string v6, "Studio code: "

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    :goto_2ac
    const/high16 v6, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 683
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34b

    const/4 v1, 0x1

    .line 681
    :goto_2b7
    invoke-static {p0, v0, v6, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 684
    const-string v0, "status"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/PlanScreen;->sync(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041f\u0440\u043e\u0444\u0438\u043b\u0438 \u043e\u0442 \u043a\u043b\u0438\u0435\u043d\u0442\u0438\u0442\u0435: "

    const-string v6, "Client profiles: "

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_34e

    :goto_2d7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41480000    # 12.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {p0, v0, v1, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 687
    const/4 v1, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v4, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 688
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 689
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v4, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    const-string v0, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0438\u0440\u0430\u0439"

    const-string v1, "Sync now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 691
    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$SyncClick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$SyncClick;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 692
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 693
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 694
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442\u0438\u0442\u0435 \u043f\u043e\u043f\u044a\u043b\u0432\u0430\u0442 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u0441\u0438 \u0432 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0437\u0430 \u0437\u0430\u043f\u0438\u0441\u0432\u0430\u043d\u0435 (\u043a\u043e\u0434\u044a\u0442 \u043d\u0430 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0435 \u0432\u0433\u0440\u0430\u0434\u0435\u043d \u0432 \u043d\u0435\u0433\u043e). \u041d\u043e\u0432\u0438\u0442\u0435 \u043a\u043b\u0438\u0435\u043d\u0442\u0438 \u0438 \u043f\u0440\u043e\u043c\u0435\u043d\u0438\u0442\u0435 \u0438\u0434\u0432\u0430\u0442 \u0442\u0443\u043a \u0441\u0430\u043c\u0438; \u0434\u0430\u043d\u043d\u0438\u0442\u0435, \u043a\u043e\u0438\u0442\u043e \u0442\u0438 \u0441\u0438 \u043f\u0440\u043e\u043c\u0435\u043d\u0438\u043b \u043f\u043e-\u043a\u044a\u0441\u043d\u043e, \u043d\u0435 \u0441\u0435 \u043f\u0440\u0435\u0437\u0430\u043f\u0438\u0441\u0432\u0430\u0442."

    const-string v1, "Clients fill in their profile in the booking app (it carries the studio code). New clients and changes arrive here by themselves; what you changed later is not overwritten."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41480000    # 12.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 698
    const/4 v1, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 699
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, v2

    .line 700
    goto/16 :goto_e9

    .line 682
    :cond_341
    const-string v0, "\u041a\u043e\u0434\u044a\u0442 \u043d\u0430 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0438\u0434\u0432\u0430 \u043e\u0442 \u0441\u044a\u0440\u0432\u044a\u0440\u0430 \u0437\u0430 \u043b\u0438\u0446\u0435\u043d\u0437\u0430 (\u0434\u043e 24 \u0447)."

    const-string v1, "The studio code comes from the license server (within 24 h)."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2ac

    .line 683
    :cond_34b
    const/4 v1, 0x0

    goto/16 :goto_2b7

    .line 685
    :cond_34e
    const-string v0, ""

    goto :goto_2d7

    .line 649
    nop

    :array_352
    .array-data 4
        0x5
        0xa
        0xf
        0x14
        0x1e
    .end array-data
.end method

.method static status(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;J)I
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_7

    .line 226
    const/4 v2, 0x4

    .line 238
    :cond_6
    :goto_6
    return v2

    .line 228
    :cond_7
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->history(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 229
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    .line 230
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "start"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 231
    iget-wide v6, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    const-wide/32 v8, 0x2932e0

    sub-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_38

    iget-wide v6, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gtz v0, :cond_38

    .line 232
    const/4 v2, 0x2

    goto :goto_6

    .line 229
    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 235
    :cond_3c
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    const-wide/32 v4, 0x1b7740

    add-long/2addr v0, v4

    cmp-long v0, p2, v0

    if-lez v0, :cond_48

    .line 236
    const/4 v2, 0x3

    goto :goto_6

    .line 238
    :cond_48
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->lead(Landroid/content/Context;)I

    move-result v3

    int-to-long v4, v3

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    cmp-long v0, p2, v0

    if-ltz v0, :cond_6

    const/4 v2, 0x1

    goto :goto_6
.end method

.method private static summary(Landroid/content/Context;Ljava/util/List;J)Landroid/view/View;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/Schedule$Appt;",
            ">;J)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 293
    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 296
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 297
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-static {p0, v0, p2, p3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->status(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;J)I

    move-result v0

    .line 298
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1f

    .line 299
    add-int/lit8 v5, v5, 0x1

    .line 296
    :cond_1b
    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 300
    :cond_1f
    const/4 v6, 0x3

    if-ne v0, v6, :cond_25

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 302
    :cond_25
    const/4 v6, 0x4

    if-eq v0, v6, :cond_1b

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 306
    :cond_2b
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 307
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v6, v0, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_f8

    const-string v0, " \u0447\u0430\u0441"

    :goto_4d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v7, :cond_fc

    const-string v1, " booking"

    :goto_55
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 310
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 312
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    if-lez v5, :cond_a9

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043f\u0440\u043e\u0432\u0435\u0434\u0435\u043d\u0438"

    const-string v2, " held"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->pill(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    :cond_a9
    if-lez v4, :cond_d3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2717 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043f\u0440\u043e\u043f\u0443\u0441\u043d\u0430\u0442\u0438"

    const-string v2, " missed"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->pill(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    :cond_d3
    if-lez v3, :cond_f7

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043f\u0440\u0435\u0434\u0441\u0442\u043e\u044f\u0442"

    const-string v2, " to come"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->pill(Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    :cond_f7
    return-object v6

    .line 308
    :cond_f8
    const-string v0, " \u0447\u0430\u0441\u0430"

    goto/16 :goto_4d

    :cond_fc
    const-string v1, " bookings"

    goto/16 :goto_55
.end method

.method static sync(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 706
    :try_start_1
    const-string v1, "com.isaigu.gymapp.widget.XemsClientSync"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 707
    if-nez p1, :cond_19

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 709
    :goto_18
    return-object v0

    .line 707
    :cond_19
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2f} :catch_31

    move-result-object v0

    goto :goto_18

    .line 708
    :catch_31
    move-exception v1

    goto :goto_18
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
