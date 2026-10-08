.class public final Lcom/isaigu/gymapp/wearable/vr/VrPanel;
.super Ljava/lang/Object;
.source "VrPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;,
        Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;,
        Lcom/isaigu/gymapp/wearable/vr/VrPanel$Dismiss;,
        Lcom/isaigu/gymapp/wearable/vr/VrPanel$Toggle;,
        Lcom/isaigu/gymapp/wearable/vr/VrPanel$Pick;,
        Lcom/isaigu/gymapp/wearable/vr/VrPanel$Step;,
        Lcom/isaigu/gymapp/wearable/vr/VrPanel$Chip;
    }
.end annotation


# static fields
.field private static final CHANNEL:[I

.field private static final MAIN:Landroid/os/Handler;

.field private static final REFRESH_MS:J = 0x96L

.field public static final TINT:I = -0xa39440

.field private static activity:Landroid/app/Activity;

.field private static counts:Landroid/widget/TextView;

.field private static feel:Landroid/widget/LinearLayout;

.field private static floorStepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field private static game:Landroid/widget/TextView;

.field private static hero:Landroid/widget/TextView;

.field private static heroRow:Landroid/view/View;

.field private static heroUnit:Landroid/widget/TextView;

.field private static levelBox:Landroid/view/View;

.field private static levelFill:Landroid/view/View;

.field private static next:Landroid/widget/TextView;

.field private static refresh:Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;

.field private static reset:Landroid/widget/TextView;

.field private static shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->CHANNEL:[I

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->MAIN:Landroid/os/Handler;

    return-void

    .line 34
    nop

    :array_16
    .array-data 4
        0x3
        0x2
        0x9
        0x8
        0x1
        0x7
        0x6
        0x5
        0x0
        0x4
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->refresh:Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;

    return-object v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;)Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->refresh:Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;

    return-object p0
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 29
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->refreshNow()V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()V
    .registers 0

    .prologue
    .line 29
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->updateReset()V

    return-void
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object v0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object p0
.end method

.method static synthetic access$402(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->feel:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500()Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->floorStepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    return-object v0
.end method

.method static synthetic access$502(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->floorStepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    return-object p0
.end method

.method static synthetic access$602(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->heroRow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$702(Landroid/view/View;)Landroid/view/View;
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->levelBox:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$802(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900()V
    .registers 0

    .prologue
    .line 29
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->fillFeel()V

    return-void
.end method

.method private static build(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 96
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v0, :cond_f

    .line 98
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_100

    .line 102
    :cond_f
    :goto_f
    sput-object p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->activity:Landroid/app/Activity;

    .line 103
    const-string v0, "VR \u0445\u0430\u043f\u0442\u0438\u043a\u0430"

    const-string v1, "VR haptics"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/16 v2, 0x410

    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 104
    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 105
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->info:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 109
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 110
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 111
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->nowColumn(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->feel:Landroid/widget/LinearLayout;

    .line 113
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 114
    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 115
    sget-object v3, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->feel:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->fillFeel()V

    .line 119
    const-string v1, "\u041f\u043e \u043f\u043e\u0434\u0440\u0430\u0437\u0431\u0438\u0440\u0430\u043d\u0435"

    const-string v2, "Defaults"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->reset:Landroid/widget/TextView;

    .line 120
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->reset:Landroid/widget/TextView;

    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->reset:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->updateReset()V

    .line 123
    const-string v1, "\u2713 \u041f\u0430\u0437\u0438 \u0441\u0435 \u0441\u0430\u043c\u043e, \u0437\u0430 \u0432\u0441\u0438\u0447\u043a\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0438"

    const-string v2, "\u2713 Saved by itself, for every client"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41480000    # 12.5f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 125
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 126
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 127
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 128
    iget-object v3, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const-string v1, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 130
    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;

    invoke-direct {v2, v4}, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Click;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v2, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Dismiss;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Dismiss;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 134
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 135
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->refresh:Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;

    .line 136
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->MAIN:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->refresh:Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void

    .line 99
    :catch_100
    move-exception v0

    goto/16 :goto_f
.end method

.method private static channelNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 256
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u041f\u0440\u0430\u0441\u0435\u0446"

    const-string v3, "Calf"

    .line 257
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u041f\u0440\u0435\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Front thigh"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0417\u0430\u0434\u043d\u043e \u0431\u0435\u0434\u0440\u043e"

    const-string v3, "Back thigh"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u0421\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v3, "Glutes"

    .line 258
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u041a\u043e\u0440\u0435\u043c"

    const-string v3, "Abs"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u041a\u0440\u044a\u0441\u0442"

    const-string v3, "Lower back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u0413\u0440\u044a\u0431"

    const-string v3, "Back"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u0422\u0440\u0430\u043f\u0435\u0446"

    const-string v3, "Traps"

    .line 259
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u0413\u044a\u0440\u0434\u0438"

    const-string v3, "Chest"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u0420\u044a\u0446\u0435"

    const-string v3, "Arms"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 256
    return-object v0
.end method

.method private static fillFeel()V
    .registers 15

    .prologue
    const/high16 v14, 0x40800000    # 4.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 197
    sget-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->activity:Landroid/app/Activity;

    .line 198
    sget-object v5, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->feel:Landroid/widget/LinearLayout;

    .line 199
    if-eqz v4, :cond_f

    if-nez v5, :cond_10

    .line 246
    :cond_f
    :goto_f
    return-void

    .line 202
    :cond_10
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 203
    const-string v0, "\u041a\u043e\u0438 \u0443\u0434\u0430\u0440\u0438 \u043c\u0438\u043d\u0430\u0432\u0430\u0442"

    const-string v2, "Which hits pass"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "\u0421\u0430\u043c\u043e \u0441\u0438\u043b\u043d\u0438"

    const-string v3, "Strong only"

    .line 205
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "\u041d\u043e\u0440\u043c\u0430\u043b\u043d\u043e"

    const-string v3, "Normal"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    const-string v2, "\u0412\u0441\u0438\u0447\u043a\u0438"

    const-string v3, "All"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v12

    .line 206
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity()I

    move-result v2

    new-instance v3, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Pick;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Pick;-><init>(I)V

    .line 204
    invoke-static {v4, v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 210
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 211
    const-string v3, "\u041d\u0430\u0439-\u0441\u043b\u0430\u0431 \u0443\u0434\u0430\u0440"

    const-string v6, "Weakest hit"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floorPercent()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "\u043e\u0442 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430"

    const-string v7, "of the trainer\'s strength"

    .line 213
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41b00000    # 22.0f

    new-instance v8, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Step;

    invoke-direct {v8}, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Step;-><init>()V

    .line 212
    invoke-static {v4, v3, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v3

    .line 214
    iget-object v6, v3, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    sput-object v3, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->floorStepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 216
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v3, v1, v6, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 218
    const-string v3, "\u041d\u0430\u0440\u0430\u0441\u0442\u0432\u0430\u043d\u0435"

    const-string v6, "Rise"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "\u0420\u044f\u0437\u043a\u043e"

    const-string v7, "Sharp"

    .line 220
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    const-string v6, "\u0421\u0440\u0435\u0434\u043d\u043e"

    const-string v7, "Medium"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v11

    const-string v6, "\u041c\u0435\u043a\u043e"

    const-string v7, "Soft"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v12

    .line 221
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smoothIndex()I

    move-result v6

    new-instance v7, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Pick;

    invoke-direct {v7, v11}, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Pick;-><init>(I)V

    .line 219
    invoke-static {v4, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const v7, 0x3f99999a    # 1.2f

    invoke-direct {v3, v1, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 223
    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 224
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    const/16 v2, 0x12

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    const-string v0, "\u041f\u043e\u0447\u0438\u0432\u0430\u0442 \u0432\u044a\u0432 VR"

    const-string v2, "Rest in VR"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x12

    invoke-static {v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->channelNames()[Ljava/lang/String;

    move-result-object v6

    move v3, v1

    .line 229
    :goto_122
    if-ge v3, v12, :cond_1a6

    .line 230
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 231
    mul-int/lit8 v0, v3, 0x5

    move v2, v0

    :goto_12b
    mul-int/lit8 v0, v3, 0x5

    add-int/lit8 v0, v0, 0x5

    if-ge v2, v0, :cond_195

    .line 232
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->CHANNEL:[I

    aget v8, v0, v2

    .line 233
    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->rests(I)Z

    move-result v9

    .line 234
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_18b

    const-string v0, "\u2298 "

    :goto_142
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v10, v6, v2

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {v4, v0, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v9

    .line 235
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 236
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {v9, v12, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 237
    invoke-static {v4, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v4, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v9, v0, v1, v10, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 238
    new-instance v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Chip;

    invoke-direct {v0, v8}, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Chip;-><init>(I)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v8, v1, v0, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 240
    rem-int/lit8 v0, v2, 0x5

    const/4 v10, 0x4

    if-ne v0, v10, :cond_18e

    move v0, v1

    :goto_182
    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 241
    invoke-virtual {v7, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12b

    .line 234
    :cond_18b
    const-string v0, ""

    goto :goto_142

    .line 240
    :cond_18e
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    goto :goto_182

    .line 243
    :cond_195
    if-nez v3, :cond_1a3

    move v0, v1

    :goto_198
    invoke-static {v4, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_122

    .line 243
    :cond_1a3
    const/16 v0, 0x8

    goto :goto_198

    .line 245
    :cond_1a6
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->updateReset()V

    goto/16 :goto_f
.end method

.method private static hint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 315
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 316
    const-string v0, "\u0418\u0433\u0440\u0430\u0442\u0430 \u043d\u0435 \u043f\u0438\u043f\u0430 \u0441\u0438\u043b\u0430\u0442\u0430, \u0434\u043e\u043a\u0430\u0442\u043e \u043d\u0435 \u044f \u0432\u043a\u043b\u044e\u0447\u0438\u0448 \u043f\u0430\u043a"

    const-string v1, "The game leaves the strength alone until you switch it on"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_e
    return-object v0

    .line 318
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isYieldedToMusic()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 319
    const-string v0, "\u041c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0432\u043e\u0434\u0438 \u0441\u0438\u043b\u0430\u0442\u0430 \u2014 \u0441\u043f\u0440\u0438 \u043f\u043b\u0435\u0439\u044a\u0440\u0430, \u0437\u0430 \u0434\u0430 \u043f\u043e\u0435\u043c\u0435 \u0438\u0433\u0440\u0430\u0442\u0430"

    const-string v1, "Music drives the strength \u2014 stop the player to let the game lead"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 321
    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isDriving()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 322
    const-string v0, "\u0423\u0434\u0430\u0440\u0438\u0442\u0435 \u0432 \u0438\u0433\u0440\u0430\u0442\u0430 \u0434\u0432\u0438\u0436\u0430\u0442 \u0441\u0438\u043b\u0430\u0442\u0430 \u0434\u043e \u0442\u0430\u0432\u0430\u043d\u0430 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430"

    const-string v1, "Hits in the game move the strength up to the trainer\'s ceiling"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 324
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 325
    const-string v0, "\u041f\u0443\u0441\u043d\u0438 \u0440\u0435\u0434\u0430 \u2014 \u0438\u0433\u0440\u0430\u0442\u0430 \u0449\u0435 \u043f\u043e\u0435\u043c\u0435 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v1, "Start the row \u2014 the game takes over the strength"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 327
    :cond_3c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->isListening()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 328
    const-string v0, "\u041f\u0443\u0441\u043d\u0438 \u043f\u043e\u0434\u0433\u043e\u0442\u0432\u0435\u043d\u0430\u0442\u0430 \u0438\u0433\u0440\u0430 \u0432 \u0448\u043b\u0435\u043c\u0430"

    const-string v1, "Start the prepared game on the headset"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 330
    :cond_4b
    const-string v0, "\u041e\u0442\u0432\u043e\u0440\u0438 \u0435\u043a\u0440\u0430\u043d\u0430 \u201e\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u201c \u2014 \u0442\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u0441\u043b\u0443\u0448\u0430 \u043e\u0442\u0442\u0430\u043c"

    const-string v1, "Open the Training screen \u2014 the tablet listens there"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method private static nowColumn(Landroid/app/Activity;)Landroid/view/View;
    .registers 15

    .prologue
    const/high16 v13, 0x41500000    # 13.0f

    const/high16 v12, 0x41400000    # 12.0f

    const v11, -0xa39440

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 142
    const-string v3, "\u0421\u0435\u0433\u0430"

    const-string v4, "Now"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 145
    const-string v4, ""

    const/high16 v5, 0x41880000    # 17.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v4, v5, v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->game:Landroid/widget/TextView;

    .line 146
    sget-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->game:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 147
    sget-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->game:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 150
    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 151
    sput-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->heroRow:Landroid/view/View;

    .line 152
    const-string v5, "\u2014"

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {p0, v5, v6, v11, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->hero:Landroid/widget/TextView;

    .line 153
    sget-object v5, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->hero:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    const-string v5, ""

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v5, v13, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->heroUnit:Landroid/widget/TextView;

    .line 155
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 158
    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 159
    sget-object v6, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->heroUnit:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const/16 v5, 0xa

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 164
    sput-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->levelBox:Landroid/view/View;

    .line 165
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 166
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    .line 167
    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-static {v7, v6, v1, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->levelFill:Landroid/view/View;

    .line 169
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v9, 0x2

    new-array v9, v9, [I

    const/16 v10, 0xaa

    .line 170
    invoke-static {v11, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v10

    aput v10, v9, v1

    aput v11, v9, v0

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 171
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 172
    sget-object v6, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->levelFill:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    sget-object v6, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->levelFill:Landroid/view/View;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v1, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    const-string v5, "\u0441\u0438\u043b\u0430 \u043e\u0442 \u0438\u0433\u0440\u0430\u0442\u0430"

    const-string v6, "strength from the game"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v5, v12, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 176
    const/4 v6, 0x4

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    const/4 v5, 0x6

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    const-string v4, ""

    const/high16 v5, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v4, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->next:Landroid/widget/TextView;

    .line 181
    sget-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->next:Landroid/widget/TextView;

    const/4 v5, 0x0

    const v6, 0x3f933333    # 1.15f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 182
    sget-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->next:Landroid/widget/TextView;

    const/16 v5, 0xa

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    const-string v4, ""

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v4, v13, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->counts:Landroid/widget/TextView;

    .line 185
    sget-object v4, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->counts:Landroid/widget/TextView;

    const/16 v5, 0xc

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    const-string v3, "\u0418\u0433\u0440\u0430\u0442\u0430 \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v4, "The game drives the strength"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u0418\u0437\u043a\u043b\u044e\u0447\u0438 \u0437\u0430 \u043c\u043e\u043c\u0435\u043d\u0442 \u2014 \u0440\u0435\u0434\u044a\u0442 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430 \u0441\u044a\u0441 \u0441\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0442\u0440\u0435\u043d\u044c\u043e\u0440\u0430"

    const-string v5, "Switch off for a moment \u2014 the row goes on at the trainer\'s strength"

    .line 189
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->isPaused()Z

    move-result v5

    if-nez v5, :cond_15a

    :goto_147
    new-instance v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Toggle;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Toggle;-><init>()V

    .line 188
    invoke-static {p0, v3, v4, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->toggleRow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnToggle;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 191
    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-object v2

    :cond_15a
    move v0, v1

    .line 190
    goto :goto_147
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 57
    if-nez p0, :cond_3

    .line 66
    :goto_2
    return-void

    .line 61
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->load(Landroid/content/Context;)V

    .line 62
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->build(Landroid/app/Activity;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_2

    .line 63
    :catch_a
    move-exception v0

    .line 64
    const-string v1, "VrPanel.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static refreshNow()V
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 266
    sget-object v5, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 267
    if-eqz v5, :cond_10

    iget-object v0, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 311
    :cond_10
    :goto_10
    return-void

    .line 270
    :cond_11
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tileState()I

    move-result v6

    .line 273
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 274
    const-string v0, "\u23f8 \u041f\u0430\u0443\u0437\u0430"

    const-string v1, "\u23f8 Paused"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 286
    :goto_25
    iget-object v7, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v7, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-static {v7, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 288
    iget-object v0, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->game:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_149

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->shortAppName()Ljava/lang/String;

    move-result-object v0

    :goto_40
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveApplied()I

    move-result v1

    .line 292
    if-ne v6, v2, :cond_153

    if-ltz v1, :cond_153

    move v0, v2

    .line 293
    :goto_4c
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->hero:Landroid/widget/TextView;

    if-eqz v0, :cond_156

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_63
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->heroUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_15a

    const-string v1, "\u0432 \u043a\u043e\u0441\u0442\u044e\u043c\u0430"

    const-string v5, "in the suit"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_72
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->heroRow:Landroid/view/View;

    if-eqz v0, :cond_15e

    move v1, v3

    :goto_7a
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->levelBox:Landroid/view/View;

    if-eqz v0, :cond_82

    move v4, v3

    :cond_82
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 297
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->next:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->hint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    sget-object v2, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->next:Landroid/widget/TextView;

    if-eqz v0, :cond_161

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    :goto_94
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->next:Landroid/widget/TextView;

    const/4 v2, 0x2

    if-eqz v0, :cond_165

    const/high16 v0, 0x41500000    # 13.0f

    :goto_9e
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 300
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->levelFill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveLevel()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 302
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->levelFill:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 303
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_cf

    .line 304
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 305
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->levelFill:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    :cond_cf
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->counts:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_169

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->hitsPassed()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u0443\u0434\u0430\u0440\u0430 \u043c\u0438\u043d\u0430\u0445\u0430"

    const-string v3, " hits passed"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   \u2298 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->hitsDropped()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043e\u0442\u0440\u044f\u0437\u0430\u043d\u0438"

    const-string v3, " dropped"

    .line 309
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_114
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 276
    :cond_119
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isDriving()Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 277
    const-string v0, "\u25cf \u0412\u043e\u0434\u0438 \u0441\u0438\u043b\u0430\u0442\u0430"

    const-string v1, "\u25cf Driving"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto/16 :goto_25

    .line 279
    :cond_12b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 280
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0430\u043d"

    const-string v1, "Linked"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_25

    .line 283
    :cond_13d
    const-string v0, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v1, "Not linked"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    goto/16 :goto_25

    .line 290
    :cond_149
    const-string v0, "\u041d\u044f\u043c\u0430 \u0438\u0433\u0440\u0430"

    const-string v5, "No game"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_40

    :cond_153
    move v0, v3

    .line 292
    goto/16 :goto_4c

    .line 293
    :cond_156
    const-string v1, ""

    goto/16 :goto_63

    .line 294
    :cond_15a
    const-string v1, ""

    goto/16 :goto_72

    :cond_15e
    move v1, v4

    .line 295
    goto/16 :goto_7a

    .line 298
    :cond_161
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_94

    .line 299
    :cond_165
    const/high16 v0, 0x41800000    # 16.0f

    goto/16 :goto_9e

    .line 310
    :cond_169
    const-string v0, ""

    goto :goto_114
.end method

.method public static status()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 71
    const-string v0, "\u23f8 \u041d\u0430 \u043f\u0430\u0443\u0437\u0430"

    const-string v1, "\u23f8 Paused"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_e
    return-object v0

    .line 73
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 74
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isYieldedToMusic()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 75
    const-string v0, "\u0427\u0430\u043a\u0430 \u2014 \u043c\u0443\u0437\u0438\u043a\u0430\u0442\u0430 \u0432\u043e\u0434\u0438"

    const-string v1, "Waiting \u2014 music leads"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 77
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u25cf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->shortAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 79
    :cond_3c
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrBridge;->isListening()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "\u0427\u0430\u043a\u0430 \u0438\u0433\u0440\u0430\u0442\u0430"

    const-string v1, "Waiting for the game"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_4b
    const-string v0, "\u041d\u044f\u043c\u0430 \u0448\u043b\u0435\u043c"

    const-string v1, "No headset"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static tileState()I
    .registers 2

    .prologue
    const/4 v0, 0x2

    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 90
    :cond_7
    :goto_7
    return v0

    .line 87
    :cond_8
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isLinked()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 88
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isDriving()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    .line 90
    :cond_16
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 334
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static updateReset()V
    .registers 2

    .prologue
    .line 249
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->reset:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    .line 250
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->reset:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1f

    const v0, 0x3ecccccd    # 0.4f

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 251
    sget-object v1, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->reset:Landroid/widget/TextView;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->isDefault()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 253
    :cond_1e
    return-void

    .line 250
    :cond_1f
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f

    .line 251
    :cond_22
    const/4 v0, 0x0

    goto :goto_1b
.end method
