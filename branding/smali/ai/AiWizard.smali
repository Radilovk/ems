.class public final Lcom/isaigu/gymapp/ai/AiWizard;
.super Ljava/lang/Object;
.source "AiWizard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiWizard$Nav;,
        Lcom/isaigu/gymapp/ai/AiWizard$NumOpen;,
        Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;,
        Lcom/isaigu/gymapp/ai/AiWizard$SayKey;,
        Lcom/isaigu/gymapp/ai/AiWizard$Draft;,
        Lcom/isaigu/gymapp/ai/AiWizard$SayClick;,
        Lcom/isaigu/gymapp/ai/AiWizard$Phrase;,
        Lcom/isaigu/gymapp/ai/AiWizard$PadState;,
        Lcom/isaigu/gymapp/ai/AiWizard$PadKey;,
        Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;,
        Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;
    }
.end annotation


# static fields
.field static final LABEL_DP:I = 0x60

.field static final N_CLOSE:I = 0x2

.field static final N_EDIT:I = 0x3

.field static final ROW_DP:I = 0x36

.field static editClient:Z

.field private static healthBox:Landroid/widget/LinearLayout;

.field private static healthDlg:Landroid/app/Dialog;

.field private static pad:Landroid/app/Dialog;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->pad:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 37
    sput-object p0, Lcom/isaigu/gymapp/ai/AiWizard;->pad:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$100()Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 1

    .prologue
    .line 37
    sput-object p0, Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$202(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 37
    sput-object p0, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private static big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    const/high16 v4, 0x41000000    # 8.0f

    const/16 v6, 0x11

    const/4 v5, 0x1

    .line 448
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 449
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 450
    const/4 v1, 0x0

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 451
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    const/high16 v1, 0x41b00000    # 22.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p1, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 453
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 454
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 455
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 457
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 458
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 459
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    return-object v0
.end method

.method static build(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 11

    .prologue
    const/high16 v8, 0x41b00000    # 22.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 50
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 51
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 52
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 53
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->header(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 55
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 56
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->client(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 57
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->training(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 58
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->health(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 59
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->today(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 60
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x3f8f5c29    # 1.12f

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 62
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 63
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->plan(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
.end method

.method private static chipP(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 253
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 254
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 255
    return-object v0
.end method

.method private static client(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 16

    .prologue
    const/high16 v13, 0x42580000    # 54.0f

    const-wide/16 v10, 0x0

    const/16 v12, 0x11

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v4

    .line 104
    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiCoach;->bmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)D

    move-result-wide v6

    .line 105
    cmpl-double v0, v6, v10

    if-lez v0, :cond_fa

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%.1f"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v5, v3

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_24
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v1

    if-nez v1, :cond_108

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiWizard;->editClient:Z

    if-nez v1, :cond_108

    iget v1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    if-lez v1, :cond_108

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    cmpl-double v1, v8, v10

    if-lez v1, :cond_108

    .line 108
    const-string v1, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v5, "Client"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 109
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v7, :cond_fe

    const-string v1, "\u0436\u0435\u043d\u0430"

    const-string v7, "female"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_57
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "  \u00b7  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " \u0433"

    const-string v7, " y"

    .line 110
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "  \u00b7  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " \u0441\u043c  \u00b7  "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u043a\u0433  \u00b7  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u0418\u0422\u041c "

    const-string v6, "BMI "

    .line 111
    invoke-static {v4, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    const/high16 v1, 0x41880000    # 17.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 114
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 115
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->grow()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u270e  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041f\u0440\u043e\u043c\u0435\u043d\u0438"

    const-string v2, "Edit"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v3, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$Nav;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard$Nav;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x42300000    # 44.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    :goto_f9
    return-void

    .line 105
    :cond_fa
    const-string v0, "\u2014"

    goto/16 :goto_24

    .line 109
    :cond_fe
    const-string v1, "\u043c\u044a\u0436"

    const-string v7, "male"

    invoke-static {v1, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_57

    .line 121
    :cond_108
    const-string v1, "\u041a\u043b\u0438\u0435\u043d\u0442"

    const-string v5, "Client"

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 122
    const/4 v1, 0x2

    new-array v8, v1, [Ljava/lang/String;

    const-string v1, "\u041c\u044a\u0436"

    const-string v9, "Male"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    const-string v1, "\u0416\u0435\u043d\u0430"

    const-string v9, "Female"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    .line 123
    iget-object v1, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v9, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v9, :cond_20b

    move v1, v2

    :goto_132
    new-instance v9, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v9, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 122
    invoke-static {p0, v8, v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 124
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x43300000    # 176.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "\u0433\u043e\u0434."

    const-string v9, "yrs"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v1, v8, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->num(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->numP(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "\u0441\u043c"

    invoke-static {p0, v1, v8, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->num(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->numP(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\u043a\u0433"

    const/4 v8, 0x2

    invoke-static {p0, v1, v4, v8}, Lcom/isaigu/gymapp/ai/AiWizard;->num(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->numP(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 129
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 130
    const/high16 v8, 0x41900000    # 18.0f

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    cmpl-double v1, v6, v10

    if-ltz v1, :cond_20e

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_1cf
    invoke-static {p0, v0, v8, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 132
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const-string v0, "\u0418\u0422\u041c"

    const-string v1, "BMI"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41300000    # 11.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x42680000    # 58.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f9

    :cond_20b
    move v1, v3

    .line 123
    goto/16 :goto_132

    .line 130
    :cond_20e
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_1cf
.end method

.method private static colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 464
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 465
    int-to-float v1, p2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 466
    return-object v0
.end method

.method private static fill(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 470
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 471
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 472
    return-object v0
.end method

.method private static freeTraining(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 411
    sget-object v3, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    .line 412
    if-nez v3, :cond_27

    .line 413
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_1e

    const-string v0, "AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u0442\u0430\u2026"

    const-string v1, "The AI is writing the exercises\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    :goto_12
    const/high16 v1, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 413
    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    :cond_1d
    return-void

    .line 414
    :cond_1e
    const-string v0, "AI \u0449\u0435 \u0441\u044a\u0441\u0442\u0430\u0432\u0438 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f\u0442\u0430 \u0441\u043b\u0435\u0434 \u043c\u0430\u043b\u043a\u043e."

    const-string v1, "The AI will write the exercises in a moment."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 418
    :cond_27
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a3

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    :goto_31
    const/high16 v1, 0x41b00000    # 22.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 419
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 420
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 421
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiWorkout;->lines(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)Ljava/util/List;

    move-result-object v4

    move v1, v2

    .line 423
    :goto_49
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    if-nez v1, :cond_ac

    const/4 v0, 0x6

    :goto_79
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    .line 426
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9f

    .line 427
    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v5, v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    :cond_9f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    .line 418
    :cond_a3
    const-string v0, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "AI workout"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 424
    :cond_ac
    const/16 v0, 0x8

    goto :goto_79
.end method

.method private static grow()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 97
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    return-object v0
.end method

.method private static header(Landroid/content/Context;)Landroid/view/View;
    .registers 7

    .prologue
    const/high16 v5, 0x41900000    # 18.0f

    const/4 v4, 0x1

    .line 71
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 72
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2726 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "AI training"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v5, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "\u0413\u043e\u0441\u0442"

    const-string v2, "Guest"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_3e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   \u00b7   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_57
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v5, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 77
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 78
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const-string v0, "\u2715"

    const/4 v2, 0x3

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 80
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    new-instance v2, Lcom/isaigu/gymapp/ai/AiWizard$Nav;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiWizard$Nav;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-object v1

    .line 74
    :cond_9b
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->leaderName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 75
    :cond_a0
    const-string v0, ""

    goto :goto_57
.end method

.method private static health(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 11

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 206
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v0

    .line 207
    const-string v1, "\u0417\u0434\u0440\u0430\u0432\u0435"

    const-string v2, "Health"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {p0, p1, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 208
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 209
    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 210
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWizard;->healthLabels(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0417\u0434\u0440\u0430\u0432/\u0430"

    const-string v4, "Healthy"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    invoke-static {p0, v0, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 213
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiWizard;->chipP(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0418\u043c\u0430 \u043d\u0435\u0449\u043e"

    const-string v4, "Something"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v0, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiWizard;->chipP(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    :goto_89
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->grow()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    return-void

    .line 219
    :cond_91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 221
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b6

    const-string v1, ", "

    :goto_ae
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9a

    :cond_b6
    const-string v1, ""

    goto :goto_ae

    .line 223
    :cond_b9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u26a0  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v0, v7, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 225
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 226
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const/high16 v1, 0x43c80000    # 400.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 228
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiWizard;->chipP(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    const-string v0, "\u270e"

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v0, v6, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 230
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiWizard$HealthOpen;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-static {p0, v8}, Lcom/isaigu/gymapp/ai/AiWizard;->chipP(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_89
.end method

.method static healthLabels(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/ai/AutoModel$Input;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 239
    :goto_7
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_20

    .line 240
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 241
    sget-object v3, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 244
    :cond_20
    :goto_20
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_39

    .line 245
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 246
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 249
    :cond_39
    return-object v2
.end method

.method static healthView(Landroid/content/Context;)Landroid/view/View;
    .registers 13

    .prologue
    const/high16 v11, 0x42600000    # 56.0f

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v1, 0x0

    .line 600
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v3

    .line 601
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 602
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v0, v2, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 603
    const-string v0, "\u041a\u0430\u043a\u0432\u043e \u0438\u043c\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442?"

    const-string v2, "What does the client have?"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x41a00000    # 20.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x1

    invoke-static {p0, v0, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    move v0, v1

    .line 605
    :goto_40
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_9f

    .line 606
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v6, v2, v0

    .line 607
    iget-object v2, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v2, v7, :cond_6a

    const-string v2, "postpartum"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, "diastasis"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    const-string v2, "menopause"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 605
    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 610
    :cond_6a
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v7

    .line 611
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_9c

    const-string v2, "\u2713 "

    :goto_77
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v2, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 612
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 613
    new-instance v7, Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;

    invoke-direct {v7, v6}, Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_67

    .line 611
    :cond_9c
    const-string v2, ""

    goto :goto_77

    .line 616
    :cond_9f
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    const-string v0, "\u041d\u0435 \u0441\u0435 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u0441 EMS \u043f\u0440\u0438"

    const-string v2, "No EMS with"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    move v0, v1

    .line 619
    :goto_c3
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_112

    .line 620
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v6, v2, v0

    .line 621
    iget-object v2, v3, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v2, v7, :cond_dd

    const-string v2, "pregnancy"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 619
    :goto_da
    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    .line 624
    :cond_dd
    invoke-static {v3, v6}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v7

    .line 625
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_10f

    const-string v2, "\u2298 "

    :goto_ea
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v2, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 626
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 627
    new-instance v7, Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;

    invoke-direct {v7, v6}, Lcom/isaigu/gymapp/ai/AiWizard$HealthKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    invoke-virtual {v5, v2}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_da

    .line 625
    :cond_10f
    const-string v2, ""

    goto :goto_ea

    .line 630
    :cond_112
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 632
    const-string v2, "\u041d\u0438\u0449\u043e \u2014 \u0437\u0434\u0440\u0430\u0432/\u0430"

    const-string v3, "Nothing \u2014 healthy"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 633
    new-instance v3, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v1, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2713  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v5, "Done"

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 636
    new-instance v3, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;

    invoke-direct {v3, v1}, Lcom/isaigu/gymapp/ai/AiWizard$HealthDone;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v1, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 638
    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 639
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    const/16 v1, 0x12

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    return-object v4
.end method

.method static label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 442
    new-instance v0, Ljava/util/Locale;

    const-string v1, "bg"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 443
    const v1, 0x3d75c28f    # 0.06f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 444
    return-object v0
.end method

.method static lastAiWord()Ljava/lang/String;
    .registers 3

    .prologue
    .line 401
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->chat()Ljava/util/List;

    move-result-object v2

    .line 402
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_b
    if-ltz v1, :cond_24

    .line 403
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v0, :cond_20

    .line 404
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    .line 407
    :goto_1f
    return-object v0

    .line 402
    :cond_20
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_b

    .line 407
    :cond_24
    const-string v0, ""

    goto :goto_1f
.end method

.method private static num(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .registers 10

    .prologue
    const/4 v5, 0x1

    .line 147
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 148
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 149
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const/high16 v1, 0x41b00000    # 22.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p1, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 151
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$NumOpen;

    invoke-direct {v1, p3}, Lcom/isaigu/gymapp/ai/AiWizard$NumOpen;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 158
    return-object v0
.end method

.method private static numP(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 140
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 141
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 142
    return-object v0
.end method

.method private static offline(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 371
    const-string v0, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430"

    const-string v1, "No AI"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static openHealth(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 574
    if-nez p0, :cond_3

    .line 589
    :goto_2
    return-void

    .line 577
    :cond_3
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 578
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 579
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    .line 580
    sget-object v1, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->healthView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    sget-object v1, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 583
    :try_start_20
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 584
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x44570000    # 860.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_3b} :catch_41

    .line 587
    :goto_3b
    sput-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->healthDlg:Landroid/app/Dialog;

    .line 588
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 585
    :catch_41
    move-exception v1

    goto :goto_3b
.end method

.method static openPad(Landroid/app/Activity;I)V
    .registers 6

    .prologue
    .line 480
    if-nez p0, :cond_3

    .line 493
    :goto_2
    return-void

    .line 483
    :cond_3
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 484
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 485
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiWizard;->padView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 487
    :try_start_13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 488
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x43aa0000    # 340.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2e} :catch_34

    .line 491
    :goto_2e
    sput-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->pad:Landroid/app/Dialog;

    .line 492
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 489
    :catch_34
    move-exception v1

    goto :goto_2e
.end method

.method static padView(Landroid/content/Context;I)Landroid/view/View;
    .registers 15

    .prologue
    const/4 v12, 0x3

    const/4 v2, 0x2

    const/high16 v7, 0x41900000    # 18.0f

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 497
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v4

    .line 498
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 499
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 500
    if-nez p1, :cond_e8

    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v3, "Age"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 502
    :goto_2e
    if-nez p1, :cond_100

    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    .line 503
    :goto_32
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x42300000    # 44.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {p0, v0, v3, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 505
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 506
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    new-instance v6, Lcom/isaigu/gymapp/ai/AiWizard$PadState;

    invoke-direct {v6, p1, v0}, Lcom/isaigu/gymapp/ai/AiWizard$PadState;-><init>(ILandroid/widget/TextView;)V

    .line 508
    const/16 v0, 0xc

    new-array v7, v0, [Ljava/lang/String;

    const-string v0, "1"

    aput-object v0, v7, v1

    const-string v0, "2"

    aput-object v0, v7, v8

    const-string v0, "3"

    aput-object v0, v7, v2

    const-string v0, "4"

    aput-object v0, v7, v12

    const/4 v0, 0x4

    const-string v3, "5"

    aput-object v3, v7, v0

    const/4 v0, 0x5

    const-string v3, "6"

    aput-object v3, v7, v0

    const/4 v0, 0x6

    const-string v3, "7"

    aput-object v3, v7, v0

    const/4 v0, 0x7

    const-string v3, "8"

    aput-object v3, v7, v0

    const/16 v0, 0x8

    const-string v3, "9"

    aput-object v3, v7, v0

    const/16 v0, 0x9

    const-string v3, "\u232b"

    aput-object v3, v7, v0

    const/16 v0, 0xa

    const-string v3, "0"

    aput-object v3, v7, v0

    const/16 v0, 0xb

    const-string v3, "\u2713"

    aput-object v3, v7, v0

    move v4, v1

    .line 509
    :goto_a6
    const/4 v0, 0x4

    if-ge v4, v0, :cond_125

    .line 510
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    move v3, v1

    .line 511
    :goto_ae
    if-ge v3, v12, :cond_118

    .line 512
    mul-int/lit8 v0, v4, 0x3

    add-int/2addr v0, v3

    aget-object v9, v7, v0

    .line 513
    const-string v0, "\u2713"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    move v0, v1

    :goto_be
    invoke-static {p0, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v10

    .line 514
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 515
    new-instance v0, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;

    invoke-direct {v0, v6, v9}, Lcom/isaigu/gymapp/ai/AiWizard$PadKey;-><init>(Lcom/isaigu/gymapp/ai/AiWizard$PadState;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 517
    if-nez v3, :cond_111

    move v0, v1

    :goto_df
    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 518
    invoke-virtual {v8, v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_ae

    .line 500
    :cond_e8
    if-ne p1, v8, :cond_f5

    .line 501
    const-string v0, "\u0420\u044a\u0441\u0442, \u0441\u043c"

    const-string v3, "Height, cm"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2e

    :cond_f5
    const-string v0, "\u0422\u0435\u0433\u043b\u043e, \u043a\u0433"

    const-string v3, "Weight, kg"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_2e

    .line 502
    :cond_100
    if-ne p1, v8, :cond_106

    iget v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    goto/16 :goto_32

    :cond_106
    iget-wide v6, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    goto/16 :goto_32

    :cond_10f
    move v0, v2

    .line 513
    goto :goto_be

    .line 517
    :cond_111
    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    goto :goto_df

    .line 520
    :cond_118
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a6

    .line 522
    :cond_125
    return-object v5
.end method

.method private static plan(Landroid/content/Context;)Landroid/view/View;
    .registers 15

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x4

    const/high16 v11, 0x41600000    # 14.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v1

    .line 301
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v2

    .line 302
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->tile(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 303
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v5, v0, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 304
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->status(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 306
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 307
    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 308
    const/4 v7, 0x6

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_9e

    .line 310
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiWizard;->freeTraining(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 335
    :cond_50
    :goto_50
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->lastAiWord()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_75

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v1, :cond_75

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWizard;->offline(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 337
    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    :cond_75
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    if-eqz v0, :cond_234

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v0, :cond_234

    .line 340
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 341
    sget-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->pending:[Ljava/lang/String;

    array-length v7, v2

    move v0, v3

    :goto_86
    if-ge v0, v7, :cond_22d

    aget-object v8, v2, v0

    .line 342
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v8, v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v9

    .line 343
    new-instance v10, Lcom/isaigu/gymapp/ai/AiTrain$Quick;

    invoke-direct {v10, v8, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Quick;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-virtual {v1, v9}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 311
    :cond_9e
    if-eqz v2, :cond_50

    .line 312
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v7, 0x41c00000    # 24.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v7, v8, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 314
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 315
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v7, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v0, v7, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v0

    .line 317
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 318
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, v0, v3

    aget v10, v0, v4

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x3c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " \u043c\u0438\u043d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v10, "active"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/isaigu/gymapp/ai/AiWizard;->big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {p0, v9, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    aget v0, v0, v9

    div-int/lit8 v0, v0, 0x3c

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " \u043c\u0438\u043d"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "\u043e\u0442\u043f\u0443\u0441\u043a\u0430\u043d\u0435"

    const-string v9, "cool-down"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/ai/AiWizard;->big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {p0, v8, v13}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v0, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    iget v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    if-le v0, v9, :cond_21d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u2013"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, v2, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_147
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "\u0443\u0441\u0435\u0449\u0430\u043d\u0435 \u043e\u0442 10"

    const-string v9, "feel of 10"

    .line 321
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 320
    invoke-static {p0, v0, v8}, Lcom/isaigu/gymapp/ai/AiWizard;->big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 321
    invoke-static {p0, v8, v13}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 320
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiTrain;->mainStep(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v7

    .line 324
    if-eqz v7, :cond_1f3

    .line 325
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    if-lez v0, :cond_221

    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 326
    :goto_183
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    if-lez v1, :cond_225

    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    .line 327
    :goto_189
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    if-lez v2, :cond_229

    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    .line 328
    :goto_18f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " Hz  \u00b7  "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v8, "on"

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u043f\u0430\u0443\u0437\u0430"

    const-string v2, "pause"

    .line 329
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u00b7  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v7, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 328
    invoke-static {p0, v0, v11, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 329
    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 328
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    :cond_1f3
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v0, v1, v2, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_50

    .line 320
    :cond_21d
    const-string v0, ""

    goto/16 :goto_147

    .line 325
    :cond_221
    iget v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    goto/16 :goto_183

    .line 326
    :cond_225
    iget v1, v7, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    goto/16 :goto_189

    .line 327
    :cond_229
    iget v2, v7, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    goto/16 :goto_18f

    .line 346
    :cond_22d
    invoke-static {p0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    :cond_234
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->advice()[Ljava/lang/String;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_26b

    aget-object v1, v0, v12

    if-eqz v1, :cond_26b

    aget-object v1, v0, v12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26b

    .line 350
    const-string v1, "\u041f\u0440\u0435\u0434\u0438 \u0441\u0442\u0430\u0440\u0442\u0430"

    const-string v2, "Before the start"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    aget-object v0, v0, v12

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v11, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    :cond_26b
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_277

    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    if-eqz v0, :cond_2df

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-nez v0, :cond_2df

    :cond_277
    move v1, v4

    .line 354
    :goto_278
    if-eqz v1, :cond_2e1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u25b6   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0421\u0442\u0430\u0440\u0442"

    const-string v4, "Start"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_295
    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 356
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 357
    new-instance v2, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    if-nez v1, :cond_2b2

    .line 359
    const v1, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 360
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 362
    :cond_2b2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v4, 0x42800000    # 64.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    const-string v0, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 0 \u2014 \u043a\u0430\u0447\u0432\u0430\u0448 \u044f \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v1, "Strength starts at 0 \u2014 raise it during the session."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 365
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 366
    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    return-object v5

    :cond_2df
    move v1, v3

    .line 353
    goto :goto_278

    .line 355
    :cond_2e1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2726  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f\u2026"

    const-string v4, "The AI is writing\u2026"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_295
.end method

.method static refreshHealth()V
    .registers 2

    .prologue
    .line 592
    sget-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_18

    .line 593
    sget-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 594
    sget-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiWizard;->healthBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiWizard;->healthView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 596
    :cond_18
    return-void
.end method

.method static reset()V
    .registers 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiWizard;->editClient:Z

    .line 45
    return-void
.end method

.method private static row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;
    .registers 9

    .prologue
    .line 88
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 89
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 90
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 91
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42c00000    # 96.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-static {p0, p3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-object v0
.end method

.method private static status(Landroid/content/Context;)Landroid/view/View;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 378
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->lastAiWord()Ljava/lang/String;

    move-result-object v0

    .line 379
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v1, :cond_35

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AI \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430\u2026"

    const-string v2, "The AI is tuning it\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 393
    :goto_26
    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {p0, v1, v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 394
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 395
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 396
    return-object v0

    .line 382
    :cond_35
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiWizard;->offline(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 383
    const-string v0, "\u0411\u0435\u0437 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 AI \u2014 \u043f\u043b\u0430\u043d\u044a\u0442 \u0435 \u043f\u043e \u0430\u043b\u0433\u043e\u0440\u0438\u0442\u044a\u043c\u0430"

    const-string v1, "No AI link \u2014 the plan follows the algorithm"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_26

    .line 385
    :cond_46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8e

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u041d\u0430\u0433\u043b\u0430\u0441\u0435\u043d\u043e \u043e\u0442 AI"

    const-string v2, "Tuned by the AI"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  \u00b7  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiTrain;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    goto :goto_26

    .line 387
    :cond_8b
    const-string v0, ""

    goto :goto_80

    .line 390
    :cond_8e
    const-string v0, "\u041f\u043b\u0430\u043d \u043f\u043e \u0430\u043b\u0433\u043e\u0440\u0438\u0442\u044a\u043c\u0430 \u2014 AI \u0433\u043e \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u0441\u043b\u0435\u0434 \u0438\u0437\u0431\u043e\u0440\u0430"

    const-string v1, "The algorithm\'s plan \u2014 the AI tunes it after a choice"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_26
.end method

.method static tile(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41400000    # 12.0f

    .line 435
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 436
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 437
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 438
    return-object v0
.end method

.method private static today(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 13

    .prologue
    const/high16 v10, 0x41900000    # 18.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x42580000    # 54.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v1, 0x0

    .line 261
    const-string v0, "\u0414\u043d\u0435\u0441"

    const-string v2, "Today"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    invoke-static {p0, p1, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 262
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 263
    const-string v0, "\u043a\u0430\u0436\u0438 \u043d\u0430 AI \u2014 \u201e\u0443\u043c\u043e\u0440\u0435\u043d\u0430 \u0435, \u0431\u043e\u043b\u0438 \u044f \u043a\u043e\u043b\u044f\u043d\u043e\u0442\u043e\u201c"

    const-string v4, "tell the AI \u2014 \u201ctired, knee hurts\u201d"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 264
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 266
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 267
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 268
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 269
    const/16 v0, 0x4001

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 270
    const v0, 0x12000004

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 271
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v4, 0x41d80000    # 27.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v0, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 273
    new-instance v0, Lcom/isaigu/gymapp/ai/AiWizard$SayKey;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiWizard$SayKey;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 274
    sget-object v0, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_128

    const-string v0, "\u27a4"

    :goto_89
    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 275
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 276
    new-instance v4, Lcom/isaigu/gymapp/ai/AiWizard$Draft;

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/ai/AiWizard$Draft;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    new-instance v4, Lcom/isaigu/gymapp/ai/AiWizard$SayClick;

    invoke-direct {v4, v3}, Lcom/isaigu/gymapp/ai/AiWizard$SayClick;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v1, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 280
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 281
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 284
    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "\u0443\u043c\u043e\u0440\u0435\u043d/\u0430 \u0435"

    const-string v4, "tired"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    const-string v4, "\u043d\u0435 \u0435 \u044f\u043b/\u0430"

    const-string v5, "has not eaten"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    const-string v4, "\u043f\u043e-\u043b\u0435\u043a\u043e \u0434\u043d\u0435\u0441"

    const-string v5, "lighter today"

    .line 285
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "\u0441\u0430\u043c\u043e 20 \u043c\u0438\u043d\u0443\u0442\u0438"

    const-string v5, "only 20 minutes"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "\u043f\u043e\u0432\u0435\u0447\u0435 \u043a\u043e\u0440\u0435\u043c"

    const-string v5, "more abs"

    .line 286
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "\u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v5, "more glutes"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 287
    array-length v4, v3

    move v0, v1

    :goto_110
    if-ge v0, v4, :cond_12c

    aget-object v5, v3, v0

    .line 288
    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v5, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v6

    .line 289
    new-instance v7, Lcom/isaigu/gymapp/ai/AiWizard$Phrase;

    invoke-direct {v7, v5}, Lcom/isaigu/gymapp/ai/AiWizard$Phrase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    invoke-virtual {v2, v6}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_110

    .line 274
    :cond_128
    const-string v0, "\ud83c\udfa4"

    goto/16 :goto_89

    .line 292
    :cond_12c
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 293
    const/high16 v1, 0x42c00000    # 96.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 294
    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    return-void
.end method

.method private static training(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    const/high16 v12, 0x42580000    # 54.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v4

    .line 165
    const-string v0, "\u0426\u0435\u043b"

    const-string v2, "Goal"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xc

    invoke-static {p0, p1, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 166
    const/4 v0, 0x3

    new-array v6, v0, [Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aput-object v0, v6, v1

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aput-object v0, v6, v3

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aput-object v0, v6, v10

    .line 167
    array-length v0, v6

    new-array v7, v0, [Ljava/lang/String;

    move v0, v1

    move v2, v1

    .line 169
    :goto_2d
    array-length v8, v6

    if-ge v0, v8, :cond_42

    .line 170
    aget-object v8, v6, v0

    invoke-static {v8}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 171
    iget-object v8, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aget-object v9, v6, v0

    if-ne v8, v9, :cond_3f

    move v2, v0

    .line 169
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 175
    :cond_42
    new-instance v0, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v0, v10}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    invoke-static {p0, v7, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 176
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v2, v1, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 175
    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    const-string v0, "\u0412\u0438\u0434"

    const-string v2, "Kind"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {p0, p1, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 179
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_157

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_157

    move v0, v3

    .line 180
    :goto_82
    if-eqz v0, :cond_15d

    .line 181
    new-array v5, v10, [Ljava/lang/String;

    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430 \u00b7 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v6, "Active \u00b7 exercises"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u00b7 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v6, "Passive \u00b7 at rest"

    .line 182
    invoke-static {v0, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v6, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v6, :cond_15a

    move v0, v3

    :goto_a1
    new-instance v6, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 181
    invoke-static {p0, v5, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v1, v6, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 181
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    :goto_b7
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 191
    const-string v0, "\u041e\u043f\u0438\u0442 \u0441 EMS"

    const-string v2, "EMS before"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {p0, p1, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 192
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "\u041f\u044a\u0440\u0432\u0438 \u043f\u044a\u0442"

    const-string v6, "First time"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v5, "\u041d\u044f\u043a\u043e\u043b\u043a\u043e \u043f\u044a\u0442\u0438"

    const-string v6, "A few"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "\u0420\u0435\u0434\u043e\u0432\u043d\u043e"

    const-string v6, "Regularly"

    .line 193
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v10

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/AiCoach;->experienceOf(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v4

    new-instance v5, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    invoke-direct {v5, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 192
    invoke-static {p0, v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v1, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 192
    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    :cond_105
    const-string v0, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v2, "Program"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {p0, p1, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->row(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;I)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 198
    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v5, "Ready program"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2726 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "AI \u044f \u0441\u044a\u0441\u0442\u0430\u0432\u044f"

    const-string v6, "The AI writes it"

    .line 199
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    sget-boolean v4, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v4, :cond_185

    :goto_140
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 198
    invoke-static {p0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 200
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v1, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 198
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    return-void

    :cond_157
    move v0, v1

    .line 179
    goto/16 :goto_82

    :cond_15a
    move v0, v1

    .line 182
    goto/16 :goto_a1

    .line 185
    :cond_15d
    iget-object v0, v4, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v5, :cond_17c

    const-string v0, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u00b7 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v5, "Passive \u00b7 at rest"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_16b
    const/high16 v5, 0x41800000    # 16.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 185
    invoke-static {p0, v0, v5, v6, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 186
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiWizard;->grow()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 185
    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b7

    .line 186
    :cond_17c
    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430 \u00b7 \u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v5, "Active \u00b7 exercises"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16b

    :cond_185
    move v3, v1

    .line 199
    goto :goto_140
.end method
