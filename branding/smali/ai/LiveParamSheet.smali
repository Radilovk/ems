.class public final Lcom/isaigu/gymapp/ai/LiveParamSheet;
.super Ljava/lang/Object;
.source "LiveParamSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;,
        Lcom/isaigu/gymapp/ai/LiveParamSheet$Gone;,
        Lcom/isaigu/gymapp/ai/LiveParamSheet$Close;,
        Lcom/isaigu/gymapp/ai/LiveParamSheet$Step;
    }
.end annotation


# static fields
.field private static final H:Landroid/os/Handler;

.field private static final REFRESH:Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;

.field private static dialog:Landroid/app/Dialog;

.field private static locked:[Landroid/widget/TextView;

.field private static range:Landroid/widget/TextView;

.field private static stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->H:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->REFRESH:Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->REFRESH:Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 24
    sput-object p0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$300()V
    .registers 0

    .prologue
    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->update()V

    return-void
.end method

.method private static build(Landroid/app/Activity;)Landroid/view/View;
    .registers 16

    .prologue
    const/16 v14, 0x10

    const/4 v13, -0x2

    const/4 v12, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 94
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 95
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 98
    const-string v2, "\u041d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0438 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v4, "Impulse settings"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v4, 0x41a00000    # 20.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v4, v5, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v4, "Done"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-static {p0, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 101
    new-instance v4, Lcom/isaigu/gymapp/ai/LiveParamSheet$Close;

    invoke-direct {v4}, Lcom/isaigu/gymapp/ai/LiveParamSheet$Close;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 106
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 107
    invoke-static {p0, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 110
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "Hz"

    aput-object v0, v6, v1

    const-string v0, "ON / OFF"

    const-string v2, "ON / OFF"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v12

    const/4 v0, 0x2

    const-string v2, "\u0412\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v7, "2nd impulse"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    .line 111
    array-length v0, v6

    new-array v0, v0, [Landroid/widget/TextView;

    sput-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->locked:[Landroid/widget/TextView;

    move v0, v1

    .line 112
    :goto_94
    array-length v2, v6

    if-ge v0, v2, :cond_11c

    .line 113
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 114
    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 115
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v8, 0x41600000    # 14.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v2, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v7, v2, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\ud83d\udd12 "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v8, v6, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v8, 0x41580000    # 13.5f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v2, v8, v9, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v1, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const-string v2, "\u2014"

    const/high16 v8, 0x41900000    # 18.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v2, v8, v9, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 120
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    const v8, 0x3f4ccccd    # 0.8f

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 122
    sget-object v8, Lcom/isaigu/gymapp/ai/LiveParamSheet;->locked:[Landroid/widget/TextView;

    aput-object v2, v8, v0

    .line 123
    if-nez v0, :cond_119

    move v2, v1

    :goto_10e
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_94

    .line 123
    :cond_119
    const/16 v2, 0x8

    goto :goto_10e

    .line 125
    :cond_11c
    const-string v0, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430, ON / OFF \u0438 \u0432\u0442\u043e\u0440\u0438 \u0438\u043c\u043f\u0443\u043b\u0441 \u0441\u0435 \u043e\u043f\u0440\u0435\u0434\u0435\u043b\u044f\u0442 \u043e\u0442 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 / AI \u0438 \u043d\u0435 \u0441\u0435 \u043f\u0440\u043e\u043c\u0435\u043d\u044f\u0442."

    const-string v2, "Frequency, ON / OFF and the 2nd impulse are set by the program / AI and cannot be changed."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v2, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 128
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 132
    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 133
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 134
    const-string v2, "\u0428\u0438\u0440\u0438\u043d\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430"

    const-string v5, "Pulse width"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v2, v5, v6, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    const-string v2, "\u2014"

    const-string v5, "\u00b5s"

    const/high16 v6, 0x41f00000    # 30.0f

    new-instance v7, Lcom/isaigu/gymapp/ai/LiveParamSheet$Step;

    invoke-direct {v7}, Lcom/isaigu/gymapp/ai/LiveParamSheet$Step;-><init>()V

    invoke-static {p0, v2, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 136
    sget-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    const/16 v5, 0xa

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const-string v2, ""

    const/high16 v5, 0x41400000    # 12.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v2, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->range:Landroid/widget/TextView;

    .line 138
    sget-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->range:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    sget-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->range:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    const-string v2, "\u0412\u0430\u0436\u0438 \u0432\u0435\u0434\u043d\u0430\u0433\u0430 \u2014 \u0431\u0435\u0437 \u043f\u0430\u0443\u0437\u0430 \u0438 \u0431\u0435\u0437 \u0437\u0430\u043f\u0430\u0437\u0432\u0430\u043d\u0435."

    const-string v5, "Takes effect at once \u2014 no pause, nothing to save."

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v5, 0x41400000    # 12.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v2, v5, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    const/4 v5, 0x6

    .line 141
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 140
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-object v3
.end method

.method static close()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 70
    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->H:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/ai/LiveParamSheet;->REFRESH:Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_11

    .line 73
    :try_start_c
    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_1a

    .line 77
    :cond_11
    :goto_11
    sput-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->dialog:Landroid/app/Dialog;

    .line 78
    sput-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->locked:[Landroid/widget/TextView;

    .line 79
    sput-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 80
    sput-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->range:Landroid/widget/TextView;

    .line 81
    return-void

    .line 74
    :catch_1a
    move-exception v0

    goto :goto_11
.end method

.method public static isOpen()Z
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static open(Landroid/view/View;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 40
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->activityOf(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v2

    .line 41
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->canShowLive()Z

    move-result v3

    if-nez v3, :cond_16

    :cond_14
    move v0, v1

    .line 66
    :cond_15
    :goto_15
    return v0

    .line 44
    :cond_16
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->isOpen()Z

    move-result v1

    if-nez v1, :cond_15

    .line 47
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 48
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 50
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->build(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 54
    :try_start_34
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 55
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    const/high16 v4, 0x443e0000    # 760.0f

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v4, -0x2

    invoke-virtual {v3, v2, v4}, Landroid/view/Window;->setLayout(II)V

    .line 57
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/view/Window;->addFlags(I)V

    .line 58
    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v3, v2}, Landroid/view/Window;->setDimAmount(F)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_55} :catch_6f

    .line 61
    :goto_55
    new-instance v2, Lcom/isaigu/gymapp/ai/LiveParamSheet$Gone;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/LiveParamSheet$Gone;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    sput-object v1, Lcom/isaigu/gymapp/ai/LiveParamSheet;->dialog:Landroid/app/Dialog;

    .line 63
    invoke-static {}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->update()V

    .line 64
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 65
    sget-object v1, Lcom/isaigu/gymapp/ai/LiveParamSheet;->H:Landroid/os/Handler;

    sget-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->REFRESH:Lcom/isaigu/gymapp/ai/LiveParamSheet$Refresh;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15

    .line 59
    :catch_6f
    move-exception v2

    goto :goto_55
.end method

.method private static set(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 200
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_d
    return-void
.end method

.method private static update()V
    .registers 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 182
    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-nez v0, :cond_a

    .line 196
    :cond_9
    :goto_9
    return-void

    .line 185
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->widthRange()[I

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->paramsNow()[I

    move-result-object v1

    .line 187
    if-eqz v0, :cond_59

    .line 188
    sget-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->stepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    aget v3, v0, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u00b5s"

    invoke-virtual {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v2, Lcom/isaigu/gymapp/ai/LiveParamSheet;->range:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u2013 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b5s \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0441\u0442\u044a\u043f\u043a\u0430 "

    const-string v5, "step "

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v0, v0, v9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_59
    if-eqz v1, :cond_9

    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->locked:[Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 192
    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->locked:[Landroid/widget/TextView;

    aget-object v0, v0, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 193
    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->locked:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v1, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/isaigu/gymapp/ai/LiveParamSheet;->locked:[Landroid/widget/TextView;

    aget-object v2, v0, v7

    aget v0, v1, v10

    if-lez v0, :cond_d2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v1, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Hz \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x5

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_cd
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/LiveParamSheet;->set(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d2
    const-string v0, "\u0438\u0437\u043a\u043b\u044e\u0447\u0435\u043d"

    const-string v1, "off"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cd
.end method
