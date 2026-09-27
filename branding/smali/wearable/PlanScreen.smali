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

.method static synthetic access$300()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->picker:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 39
    sput-object p0, Lcom/isaigu/gymapp/wearable/PlanScreen;->picker:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object p0
.end method

.method static activity(Landroid/view/View;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 354
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 355
    :goto_6
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1a

    .line 356
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_13

    .line 357
    check-cast v0, Landroid/app/Activity;

    .line 361
    :goto_10
    return-object v0

    .line 354
    :cond_11
    const/4 v0, 0x0

    goto :goto_6

    .line 359
    :cond_13
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_6

    .line 361
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

    .line 509
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 510
    sget v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    if-nez v0, :cond_41

    const-string v0, "\u041d\u044f\u043c\u0430 \u0447\u0430\u0441\u043e\u0432\u0435 \u0434\u043d\u0435\u0441"

    const-string v2, "No appointments today"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    :goto_11
    const/high16 v2, 0x41900000    # 18.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    .line 510
    invoke-static {p0, v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 512
    const-string v0, "\u0417\u0430 Acuity: Acuity \u2192 Integrations \u2192 Google Calendar (\u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043d\u0430 \u0447\u0430\u0441\u043e\u0432\u0435\u0442\u0435). \u041d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 \u2014 \u0441\u044a\u0449\u0438\u044f\u0442 Google \u0430\u043a\u0430\u0443\u043d\u0442 \u0432 \u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u2192 \u0410\u043a\u0430\u0443\u043d\u0442\u0438, \u0441 \u0432\u043a\u043b\u044e\u0447\u0435\u043d\u0430 \u0441\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0430\u0446\u0438\u044f \u043d\u0430 \u043a\u0430\u043b\u0435\u043d\u0434\u0430\u0440\u0430."

    const-string v2, "For Acuity: Acuity \u2192 Integrations \u2192 Google Calendar (appointment sync). On the tablet \u2014 the same Google account in Settings \u2192 Accounts, calendar sync on."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41580000    # 13.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 517
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 518
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 519
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    return-object v1

    .line 511
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
    .line 394
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 395
    invoke-static/range {p4 .. p4}, Lcom/isaigu/gymapp/wearable/Schedule;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 396
    const/4 v2, 0x0

    .line 397
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_d2

    const/16 v0, 0x3c

    if-ge v2, v0, :cond_d2

    .line 398
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 399
    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v3, :cond_55

    iget-object v3, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 400
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

    .line 397
    :goto_51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 399
    :cond_55
    const-string v3, ""

    goto :goto_24

    .line 400
    :cond_58
    const-string v4, ""

    goto :goto_3f

    .line 403
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

    .line 405
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

    .line 406
    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;

    invoke-direct {v4, p3, v0}, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;-><init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 403
    :cond_cd
    const-string v3, ""

    goto :goto_85

    :cond_d0
    const/4 v3, 0x0

    goto :goto_a0

    .line 410
    :cond_d2
    return-void
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

    .line 473
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 474
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

    .line 475
    const-string v1, "\u0427\u0430\u0441\u043e\u0432\u0435\u0442\u0435 \u0441\u0435 \u0447\u0435\u0442\u0430\u0442 \u043e\u0442 \u043a\u0430\u043b\u0435\u043d\u0434\u0430\u0440\u0430 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430 (\u043d\u0430\u043f\u0440\u0438\u043c\u0435\u0440 Acuity \u2192 Google Calendar). \u041d\u0438\u0449\u043e \u043d\u0435 \u0441\u0435 \u043f\u0440\u043e\u043c\u0435\u043d\u044f \u0432 \u043a\u0430\u043b\u0435\u043d\u0434\u0430\u0440\u0430."

    const-string v2, "Appointments are read from the tablet\'s calendar (e.g. Acuity \u2192 Google Calendar). Nothing in the calendar is changed."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 479
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 480
    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 481
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 482
    const-string v1, "\u0420\u0430\u0437\u0440\u0435\u0448\u0438"

    const-string v2, "Allow"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 483
    new-instance v2, Lcom/isaigu/gymapp/wearable/PlanScreen$PermClick;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/PlanScreen$PermClick;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    return-object v0
.end method

.method static pickClient(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V
    .registers 7

    .prologue
    .line 369
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

    .line 370
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x208

    .line 369
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 371
    sput-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->picker:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 372
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 373
    const-string v2, "\u0422\u044a\u0440\u0441\u0438"

    const-string v3, "Search"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 374
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 375
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 376
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 377
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 379
    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-static {}, Lcom/isaigu/gymapp/wearable/Schedule;->users()Ljava/util/List;

    move-result-object v3

    .line 381
    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$ByName;

    invoke-direct {v4}, Lcom/isaigu/gymapp/wearable/PlanScreen$ByName;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 382
    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;

    invoke-direct {v4, p0, v2, v3, p1}, Lcom/isaigu/gymapp/wearable/PlanScreen$Filter;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 383
    const-string v1, ""

    invoke-static {p0, v2, v3, p1, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->fill(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;Lcom/isaigu/gymapp/wearable/Schedule$Appt;Ljava/lang/String;)V

    .line 384
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v1, :cond_9e

    .line 385
    const-string v1, "\u0411\u0435\u0437 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v2, "No client"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 386
    new-instance v2, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/isaigu/gymapp/wearable/PlanScreen$Pick;-><init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/bean/TrainUser;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    :cond_9e
    const v1, 0x3f59999a    # 0.85f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 390
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 391
    return-void
.end method

.method static refresh()V
    .registers 16

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 159
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->root:Landroid/view/View;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    if-nez v0, :cond_c

    .line 212
    :cond_b
    :goto_b
    return-void

    .line 162
    :cond_c
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 164
    :try_start_12
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->modeHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 165
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->modeHolder:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "\u0414\u043d\u0435\u0441"

    const-string v8, "Today"

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v3, 0x1

    const-string v5, "\u0421\u0435\u0434\u043c\u0438\u0446\u0430"

    const-string v8, "Week"

    invoke-static {v5, v8}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    sget v3, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    new-instance v5, Lcom/isaigu/gymapp/wearable/PlanScreen$ModeIndex;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/PlanScreen$ModeIndex;-><init>()V

    invoke-static {v7, v1, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v8, -0x2

    invoke-direct {v3, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 169
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/Schedule;->canRead(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 170
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/PlanScreen;->permissionCard(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/PlanScreen;->settingsCard(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_6a} :catch_6b

    goto :goto_b

    .line 209
    :catch_6b
    move-exception v0

    .line 210
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

    .line 174
    :cond_85
    :try_start_85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 175
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 176
    invoke-virtual {v10, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 177
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 178
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 179
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 180
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 181
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 182
    sget v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    if-nez v0, :cond_db

    move v0, v6

    :goto_b1
    int-to-long v0, v0

    const-wide/32 v14, 0x5265c00

    mul-long/2addr v0, v14

    add-long/2addr v0, v12

    .line 183
    invoke-static {v7, v12, v13, v0, v1}, Lcom/isaigu/gymapp/wearable/Schedule;->read(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object v11

    .line 184
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 185
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/PlanScreen;->emptyCard(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    :cond_ca
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/PlanScreen;->settingsCard(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    .line 182
    :cond_db
    const/4 v0, 0x7

    goto :goto_b1

    .line 187
    :cond_dd
    sget-object v0, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-static {v7, v11, v8, v9}, Lcom/isaigu/gymapp/wearable/PlanScreen;->summary(Landroid/content/Context;Ljava/util/List;J)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    const/4 v0, 0x0

    move v1, v2

    move-object v3, v0

    .line 190
    :goto_e9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_ca

    .line 191
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 192
    iget-wide v12, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-virtual {v10, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 193
    const/4 v5, 0x6

    invoke-virtual {v10, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 194
    if-eqz v3, :cond_103

    if-eq v5, v4, :cond_15a

    .line 196
    :cond_103
    sget v3, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    if-ne v3, v6, :cond_12c

    .line 197
    iget-wide v12, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-static {v12, v13}, Lcom/isaigu/gymapp/wearable/NextClient;->day(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    .line 198
    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v7, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    const/4 v13, 0x0

    const/high16 v14, 0x41000000    # 8.0f

    invoke-static {v7, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v3, v4, v12, v13, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 199
    sget-object v4, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    :cond_12c
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 202
    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v7, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v7, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    const/high16 v14, 0x40800000    # 4.0f

    invoke-static {v7, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v14

    invoke-virtual {v3, v4, v12, v13, v14}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 203
    sget-object v12, Lcom/isaigu/gymapp/wearable/PlanScreen;->content:Landroid/widget/LinearLayout;

    sget v4, Lcom/isaigu/gymapp/wearable/PlanScreen;->mode:I

    if-ne v4, v6, :cond_165

    move v4, v2

    :goto_152
    invoke-static {v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v5

    .line 205
    :cond_15a
    invoke-static {v7, v0, v8, v9}, Lcom/isaigu/gymapp/wearable/PlanScreen;->row(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;J)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_161
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_161} :catch_6b

    .line 190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e9

    .line 203
    :cond_165
    const/16 v4, 0xc

    goto :goto_152
.end method

.method private static row(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;J)Landroid/view/View;
    .registers 16

    .prologue
    const/high16 v11, 0x41480000    # 12.5f

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v7, 0x40400000    # 3.0f

    const-wide/16 v8, 0x3c

    const/4 v6, 0x0

    .line 257
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 258
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    .line 259
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 260
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 261
    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v5, 0x1

    invoke-static {p0, v1, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v11, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 263
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 267
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->name()Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41840000    # 16.5f

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_10e

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    :goto_5f
    const/4 v5, 0x1

    invoke-static {p0, v2, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_112

    const-string v0, "\u041d\u044f\u043c\u0430 \u0442\u0430\u043a\u044a\u0432 \u043a\u043b\u0438\u0435\u043d\u0442 \u0432 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u2014 \u043d\u0430\u0442\u0438\u0441\u043d\u0438, \u0437\u0430 \u0434\u0430 \u0438\u0437\u0431\u0435\u0440\u0435\u0448"

    const-string v2, "No such client in the app \u2014 tap to pick one"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8d

    .line 272
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v11, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 273
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 274
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 275
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    :cond_8d
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    invoke-static {p0, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->status(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;J)I

    move-result v0

    .line 281
    packed-switch v0, :pswitch_data_1a2

    .line 299
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    sub-long/2addr v0, p2

    const-wide/32 v4, 0xea60

    div-long/2addr v0, v4

    .line 300
    cmp-long v2, v0, v8

    if-gez v2, :cond_156

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0441\u043b\u0435\u0434 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u043c\u0438\u043d"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_e0
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    move-object v2, v0

    .line 305
    :goto_e3
    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 307
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 306
    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->ripple(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    new-instance v0, Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/wearable/PlanScreen$RowClick;-><init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    new-instance v0, Lcom/isaigu/gymapp/wearable/PlanScreen$RowLong;

    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/wearable/PlanScreen$RowLong;-><init>(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 310
    return-object v3

    .line 267
    :cond_10e
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_5f

    .line 270
    :cond_112
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    const-string v0, ""

    goto/16 :goto_73

    :cond_122
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    goto/16 :goto_73

    .line 283
    :pswitch_126
    const-string v0, "\u0441\u0435\u0433\u0430"

    const-string v1, "now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    move v1, v0

    .line 285
    goto :goto_e3

    .line 287
    :pswitch_132
    const-string v0, "\u2713 \u043f\u0440\u043e\u0432\u0435\u0434\u0435\u043d\u0430"

    const-string v1, "\u2713 held"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    move v1, v0

    .line 289
    goto :goto_e3

    .line 291
    :pswitch_13e
    const-string v0, "\u2717 \u043f\u0440\u043e\u043f\u0443\u0441\u043d\u0430\u0442\u0430"

    const-string v1, "\u2717 missed"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    move v1, v0

    .line 293
    goto :goto_e3

    .line 295
    :pswitch_14a
    const-string v0, "? \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v1, "? client"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    move v1, v0

    .line 297
    goto :goto_e3

    .line 301
    :cond_156
    const-wide/16 v4, 0x5a0

    cmp-long v2, v0, v4

    if-gez v2, :cond_197

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0441\u043b\u0435\u0434 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v4, v0, v8

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u0447"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long/2addr v0, v8

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e0

    :cond_197
    const-string v0, "\u043f\u0440\u0435\u0434\u0441\u0442\u043e\u0438"

    const-string v1, "to come"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e0

    .line 281
    nop

    :pswitch_data_1a2
    .packed-switch 0x1
        :pswitch_126
        :pswitch_132
        :pswitch_13e
        :pswitch_14a
    .end packed-switch
.end method

.method private static settingsCard(Landroid/content/Context;)Landroid/view/View;
    .registers 13

    .prologue
    .line 524
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 525
    const-string v0, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v1, "Next client"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 526
    const-string v0, "\u041f\u0440\u0435\u0434\u043b\u0430\u0433\u0430\u0439 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0438\u044f \u043a\u043b\u0438\u0435\u043d\u0442"

    const-string v1, "Offer the next client"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u041f\u0440\u0435\u0434\u0438 \u0447\u0430\u0441\u0430, \u043a\u043e\u0433\u0430\u0442\u043e \u043d\u0438\u0449\u043e \u043d\u0435 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u2014 \u0441 \u0432\u044a\u043f\u0440\u043e\u0441; \u0437\u0430\u0440\u0435\u0436\u0434\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u0432 \u0441\u0432\u043e\u0431\u043e\u0434\u0435\u043d \u043a\u043e\u0441\u0442\u044e\u043c \u0441 \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0442\u0435 \u0438\u043b\u0438 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u0447\u0430\u043d\u0438\u0442\u0435 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438."

    const-string v3, "Before the appointment, when nothing is training \u2014 asks first; loads the client into a free suit with the last or the recommended settings."

    .line 527
    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->enabled(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Lcom/isaigu/gymapp/wearable/PlanScreen$ToggleOn;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/PlanScreen$ToggleOn;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-static {p0, v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 530
    const-string v0, "\u041a\u043e\u043b\u043a\u043e \u043c\u0438\u043d\u0443\u0442\u0438 \u043f\u0440\u0435\u0434\u0438 \u0447\u0430\u0441\u0430"

    const-string v1, "Minutes before the appointment"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 531
    const/4 v1, 0x0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 532
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/widget/LinearLayout;

    .line 534
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 535
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->lead(Landroid/content/Context;)I

    move-result v4

    .line 536
    const/4 v0, 0x5

    new-array v5, v0, [I

    fill-array-data v5, :array_264

    .line 537
    const/4 v0, 0x0

    :goto_6d
    array-length v1, v5

    if-ge v0, v1, :cond_ab

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v5, v0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " \u043c\u0438\u043d"

    const-string v7, " min"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget v1, v5, v0

    if-ne v1, v4, :cond_a9

    const/4 v1, 0x1

    :goto_90
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v6, v1, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 539
    new-instance v6, Lcom/isaigu/gymapp/wearable/PlanScreen$LeadClick;

    aget v7, v5, v0

    invoke-direct {v6, v7}, Lcom/isaigu/gymapp/wearable/PlanScreen$LeadClick;-><init>(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {p0, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 538
    :cond_a9
    const/4 v1, 0x0

    goto :goto_90

    .line 542
    :cond_ab
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->calendars(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 543
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_14f

    .line 544
    const-string v0, "\u041a\u0430\u043b\u0435\u043d\u0434\u0430\u0440"

    const-string v1, "Calendar"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {p0, v0, v1, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 545
    const/4 v1, 0x0

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 546
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    const/4 v0, 0x1

    new-array v4, v0, [Landroid/widget/LinearLayout;

    .line 548
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 549
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->calendarId(Landroid/content/Context;)J

    move-result-wide v6

    .line 550
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v1, "All"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_14b

    const/4 v0, 0x1

    :goto_f8
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v1, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 551
    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;

    const-wide/16 v8, -0x1

    invoke-direct {v1, v8, v9}, Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    const/4 v1, 0x0

    aget-object v1, v4, v1

    invoke-static {p0, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 553
    const/4 v0, 0x0

    move v1, v0

    :goto_110
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_14f

    .line 554
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;->name:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;

    iget-wide v8, v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;->id:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_14d

    const/4 v0, 0x1

    :goto_12b
    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v5, v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v5

    .line 555
    new-instance v8, Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;

    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/Schedule$Cal;->id:J

    invoke-direct {v8, v10, v11}, Lcom/isaigu/gymapp/wearable/PlanScreen$CalClick;-><init>(J)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 553
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_110

    .line 550
    :cond_14b
    const/4 v0, 0x0

    goto :goto_f8

    .line 554
    :cond_14d
    const/4 v0, 0x0

    goto :goto_12b

    .line 559
    :cond_14f
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0441\u0435 \u0440\u0430\u0437\u043f\u043e\u0437\u043d\u0430\u0432\u0430 \u043f\u043e \u0438\u043c\u0435\u0439\u043b, \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0438\u043b\u0438 \u0438\u043c\u0435 \u043e\u0442 \u0447\u0430\u0441\u0430. \u0417\u0430\u0434\u0440\u044a\u0436 \u0440\u0435\u0434, \u0437\u0430 \u0434\u0430 \u0441\u043c\u0435\u043d\u0438\u0448 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v1, "The client is found by e-mail, phone or name in the appointment. Hold a row to change the client."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41480000    # 12.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 562
    const/4 v1, 0x0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 563
    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 564
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
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

    .line 566
    const-string v0, "xems_client_sync"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "studio"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 568
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 569
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_253

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041a\u043e\u0434 \u043d\u0430 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e: "

    const-string v6, "Studio code: "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    :goto_1c0
    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 571
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25d

    const/4 v1, 0x1

    .line 569
    :goto_1cb
    invoke-static {p0, v0, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 572
    const-string v0, "status"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/PlanScreen;->sync(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041f\u0440\u043e\u0444\u0438\u043b\u0438 \u043e\u0442 \u043a\u043b\u0438\u0435\u043d\u0442\u0438\u0442\u0435: "

    const-string v6, "Client profiles: "

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_260

    :goto_1eb
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41480000    # 12.5f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x0

    invoke-static {p0, v0, v1, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 575
    const/4 v1, 0x0

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 576
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 577
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    const-string v0, "\u0421\u0438\u043d\u0445\u0440\u043e\u043d\u0438\u0437\u0438\u0440\u0430\u0439"

    const-string v1, "Sync now"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 579
    new-instance v1, Lcom/isaigu/gymapp/wearable/PlanScreen$SyncClick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/PlanScreen$SyncClick;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442\u0438\u0442\u0435 \u043f\u043e\u043f\u044a\u043b\u0432\u0430\u0442 \u043f\u0440\u043e\u0444\u0438\u043b\u0430 \u0441\u0438 \u0432 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u0437\u0430 \u0437\u0430\u043f\u0438\u0441\u0432\u0430\u043d\u0435 (\u043a\u043e\u0434\u044a\u0442 \u043d\u0430 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0435 \u0432\u0433\u0440\u0430\u0434\u0435\u043d \u0432 \u043d\u0435\u0433\u043e). \u041d\u043e\u0432\u0438\u0442\u0435 \u043a\u043b\u0438\u0435\u043d\u0442\u0438 \u0438 \u043f\u0440\u043e\u043c\u0435\u043d\u0438\u0442\u0435 \u0438\u0434\u0432\u0430\u0442 \u0442\u0443\u043a \u0441\u0430\u043c\u0438; \u0434\u0430\u043d\u043d\u0438\u0442\u0435, \u043a\u043e\u0438\u0442\u043e \u0442\u0438 \u0441\u0438 \u043f\u0440\u043e\u043c\u0435\u043d\u0438\u043b \u043f\u043e-\u043a\u044a\u0441\u043d\u043e, \u043d\u0435 \u0441\u0435 \u043f\u0440\u0435\u0437\u0430\u043f\u0438\u0441\u0432\u0430\u0442."

    const-string v1, "Clients fill in their profile in the booking app (it carries the studio code). New clients and changes arrive here by themselves; what you changed later is not overwritten."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41480000    # 12.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 586
    const/4 v1, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 587
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    return-object v2

    .line 570
    :cond_253
    const-string v0, "\u041a\u043e\u0434\u044a\u0442 \u043d\u0430 \u0441\u0442\u0443\u0434\u0438\u043e\u0442\u043e \u0438\u0434\u0432\u0430 \u043e\u0442 \u0441\u044a\u0440\u0432\u044a\u0440\u0430 \u0437\u0430 \u043b\u0438\u0446\u0435\u043d\u0437\u0430 (\u0434\u043e 24 \u0447)."

    const-string v5, "The studio code comes from the license server (within 24 h)."

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c0

    .line 571
    :cond_25d
    const/4 v1, 0x0

    goto/16 :goto_1cb

    .line 573
    :cond_260
    const-string v0, ""

    goto :goto_1eb

    .line 536
    nop

    :array_264
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

    .line 218
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v0, :cond_7

    .line 219
    const/4 v2, 0x4

    .line 231
    :cond_6
    :goto_6
    return v2

    .line 221
    :cond_7
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/NextPlan;->history(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 222
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    .line 223
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "start"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 224
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

    .line 225
    const/4 v2, 0x2

    goto :goto_6

    .line 222
    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 228
    :cond_3c
    iget-wide v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->end:J

    const-wide/32 v4, 0x1b7740

    add-long/2addr v0, v4

    cmp-long v0, p2, v0

    if-lez v0, :cond_48

    .line 229
    const/4 v2, 0x3

    goto :goto_6

    .line 231
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

    .line 235
    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 238
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 239
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-static {p0, v0, p2, p3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->status(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;J)I

    move-result v0

    .line 240
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1f

    .line 241
    add-int/lit8 v5, v5, 0x1

    .line 238
    :cond_1b
    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 242
    :cond_1f
    const/4 v6, 0x3

    if-ne v0, v6, :cond_25

    .line 243
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 244
    :cond_25
    const/4 v6, 0x4

    if-eq v0, v6, :cond_1b

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 248
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_c6

    const-string v0, " \u0447\u0430\u0441"

    :goto_40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v7, :cond_ca

    const-string v1, " appointment"

    :goto_48
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043f\u0440\u043e\u0432\u0435\u0434\u0435\u043d\u0438"

    const-string v5, " held"

    .line 249
    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez v4, :cond_ce

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u00b7 "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u043f\u0440\u043e\u043f\u0443\u0441\u043d\u0430\u0442\u0438"

    const-string v5, " missed"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    if-lez v3, :cond_d1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u043f\u0440\u0435\u0434\u0441\u0442\u043e\u044f\u0442"

    const-string v4, " to come"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/PlanScreen;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ac
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    const/high16 v1, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 252
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 253
    return-object v0

    .line 248
    :cond_c6
    const-string v0, " \u0447\u0430\u0441\u0430"

    goto/16 :goto_40

    :cond_ca
    const-string v1, " appointments"

    goto/16 :goto_48

    .line 249
    :cond_ce
    const-string v0, ""

    goto :goto_87

    .line 250
    :cond_d1
    const-string v0, ""

    goto :goto_ac
.end method

.method static sync(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 594
    :try_start_1
    const-string v1, "com.isaigu.gymapp.widget.XemsClientSync"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 595
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

    .line 597
    :goto_18
    return-object v0

    .line 595
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

    .line 596
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
