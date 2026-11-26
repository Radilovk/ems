.class public final Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;
.super Ljava/lang/Object;
.source "VrHitPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Test;,
        Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Done;,
        Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Dismiss;,
        Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;,
        Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Feel;
    }
.end annotation


# static fields
.field private static activity:Landroid/app/Activity;

.field private static sDepth:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field private static sHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field private static sMLevel:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field private static sMMs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field private static sPct:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field private static shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$102(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 18
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object p0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 1

    .prologue
    .line 18
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sPct:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    return-object p0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 1

    .prologue
    .line 18
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    return-object p0
.end method

.method static synthetic access$402(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 1

    .prologue
    .line 18
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sDepth:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    return-object p0
.end method

.method static synthetic access$502(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 1

    .prologue
    .line 18
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMLevel:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    return-object p0
.end method

.method static synthetic access$602(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 1

    .prologue
    .line 18
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMMs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    return-object p0
.end method

.method private static mastogoColumn(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    const/16 v6, 0xe

    const/4 v4, 0x3

    const/high16 v5, 0x41b00000    # 22.0f

    .line 88
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 89
    const-string v1, "Mastogo"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    const-string v1, "\u0421\u0438\u043b\u0430 \u043d\u0430 \u0443\u0434\u0430\u0440\u0430"

    const-string v2, "Hit strength"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;-><init>(I)V

    invoke-static {p0, v1, v2, v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMLevel:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 92
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMLevel:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    const-string v1, "\u0423\u0441\u0435\u0449\u0430\u043d\u0435"

    const-string v2, "Feel"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u0423\u0434\u0430\u0440"

    const-string v4, "Hit"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u041a\u043b\u0438\u043a"

    const-string v4, "Click"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u0423\u0431\u043e\u0436\u0434\u0430\u043d\u0435"

    const-string v4, "Stab"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 95
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mastogoFeel()I

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Feel;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Feel;-><init>()V

    .line 94
    invoke-static {p0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    const-string v1, "\u0414\u044a\u043b\u0436\u0438\u043d\u0430"

    const-string v2, "Length"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;-><init>(I)V

    invoke-static {p0, v1, v2, v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMMs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 98
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMMs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->show()V

    .line 100
    return-object v0
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 10

    .prologue
    const/high16 v8, 0x41480000    # 12.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 30
    if-nez p0, :cond_9

    .line 69
    :goto_8
    return-void

    .line 33
    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->load(Landroid/content/Context;)V

    .line 34
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_17

    .line 36
    :try_start_10
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_fa

    .line 40
    :cond_17
    :goto_17
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->activity:Landroid/app/Activity;

    .line 41
    const-string v0, "\u0423\u0434\u0430\u0440 \u0432\u044a\u0432 VR"

    const-string v1, "A hit in VR"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/16 v2, 0x410

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 42
    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 43
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 45
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->suitColumn(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 48
    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 49
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->mastogoColumn(Landroid/app/Activity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const-string v1, "\u041a\u0430\u0447\u0432\u0430\u043d\u0435 (ramp up) \u0432\u044a\u0432 VR \u043d\u044f\u043c\u0430 \u2014 \u0443\u0434\u0430\u0440\u044a\u0442 \u0441\u0435 \u0443\u0441\u0435\u0449\u0430 \u0432\u0435\u0434\u043d\u0430\u0433\u0430. \u0421\u043f\u0430\u0434\u0430\u043d\u0435\u0442\u043e \u0435 \u0432 \u043f\u0430\u043d\u0435\u043b\u0430 \u201eVR\u201c. \u0413\u0440\u0430\u043d\u0438\u0446\u0438\u0442\u0435 \u0437\u0430 \u0431\u0435\u0437\u043e\u043f\u0430\u0441\u043d\u043e\u0441\u0442 \u0432\u0430\u0436\u0430\u0442 \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u043e \u0442\u0443\u043a."

    const-string v2, "No ramp up in VR \u2014 a hit is felt at once. The fall is in the VR sheet. The absolute limits apply to everything here."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v1, v8, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 54
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const-string v1, "\u0422\u0415\u0421\u0422: \u0435\u0434\u0438\u043d \u0443\u0434\u0430\u0440"

    const-string v2, "TEST: one hit"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 57
    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Test;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Test;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43700000    # 240.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    const-string v1, "\u2713 \u041f\u0430\u0437\u0438 \u0441\u0435 \u0441\u0430\u043c\u043e"

    const-string v2, "\u2713 Saved by itself"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v1, v8, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 60
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v5, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 62
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 63
    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 65
    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Done;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Done;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Dismiss;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Dismiss;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 68
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_8

    .line 37
    :catch_fa
    move-exception v0

    goto/16 :goto_17
.end method

.method static show()V
    .registers 4

    .prologue
    .line 105
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sPct:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-eqz v0, :cond_28

    .line 106
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sPct:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->pct()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u043e\u0442 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430"

    const-string v3, "of the trainer\'s strength"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_28
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-eqz v0, :cond_47

    .line 109
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->hz()I

    move-result v0

    .line 110
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-nez v0, :cond_a2

    const-string v0, "\u043a\u0430\u043a\u0442\u043e \u0432 \u0440\u0435\u0434\u0430"

    const-string v2, "as the row"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    const-string v2, "\u0441\u0430\u043c\u043e \u0434\u043e\u043a\u0430\u0442\u043e \u0442\u0440\u0430\u0435 \u0443\u0434\u0430\u0440\u044a\u0442"

    const-string v3, "only while the hit lasts"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_47
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sDepth:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-eqz v0, :cond_66

    .line 113
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->depth()I

    move-result v0

    .line 114
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sDepth:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-nez v0, :cond_b6

    const-string v0, "\u043a\u0430\u043a\u0442\u043e \u0432 \u0440\u0435\u0434\u0430"

    const-string v2, "as the row"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5b
    const-string v2, "50\u2013400, \u043d\u0430 \u0441\u0442\u044a\u043f\u043a\u0438 \u043f\u043e 50"

    const-string v3, "50\u2013400, steps of 50"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_66
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMLevel:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-eqz v0, :cond_7f

    .line 117
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMLevel:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mastogoLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u043e\u0442 25 (\u043d\u0430\u0439-\u0441\u0438\u043b\u043d\u043e)"

    const-string v3, "of 25 (strongest)"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_7f
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMMs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-eqz v0, :cond_a1

    .line 120
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMMs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mastogoMs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_a1
    return-void

    .line 110
    :cond_a2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Hz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 114
    :cond_b6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b5s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5b
.end method

.method private static suitColumn(Landroid/app/Activity;)Landroid/widget/LinearLayout;
    .registers 8

    .prologue
    const/16 v6, 0xe

    const/high16 v5, 0x41b00000    # 22.0f

    .line 72
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 73
    const-string v1, "\u041a\u043e\u0441\u0442\u044e\u043c XEMS"

    const-string v2, "XEMS suit"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    const-string v1, "\u0421\u0438\u043b\u0430 \u043d\u0430 \u0443\u0434\u0430\u0440\u0430"

    const-string v2, "Hit strength"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;-><init>(I)V

    invoke-static {p0, v1, v2, v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sPct:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 76
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sPct:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    const-string v1, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    const-string v2, "Frequency"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;-><init>(I)V

    invoke-static {p0, v1, v2, v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 79
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    const-string v1, "\u0414\u044a\u043b\u0431\u043e\u0447\u0438\u043d\u0430 (\u0448\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430)"

    const-string v2, "Depth (pulse width)"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;-><init>(I)V

    invoke-static {p0, v1, v2, v5, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sDepth:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 82
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sDepth:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->show()V

    .line 84
    return-object v0
.end method

.method private static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
