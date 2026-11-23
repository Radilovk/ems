.class public final Lcom/isaigu/gymapp/ai/AiCoachUi;
.super Ljava/lang/Object;
.source "AiCoachUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$Step;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$Health;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$Quick;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$ScrollDown;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$SendKey;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$SendClick;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$Save;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$CloseLive;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$Answered;,
        Lcom/isaigu/gymapp/ai/AiCoachUi$OpenLive;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field static final P_EXP:I = 0x1

.field static final P_GOAL:I = 0x2

.field static final P_HEALTH:I = 0x4

.field static final P_MODE:I = 0x3

.field static final P_SEX:I = 0x0

.field static final S_AGE:I = 0x0

.field static final S_HEIGHT:I = 0x1

.field static final S_WEIGHT:I = 0x2

.field private static busy:Z

.field private static healthOpen:Z

.field private static lastChanges:Ljava/lang/String;

.field private static liveDialog:Landroid/app/Dialog;

.field private static panelBox:Landroid/widget/LinearLayout;

.field private static panelLive:Z

.field private static pending:[Ljava/lang/String;

.field private static seq:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->MAIN:Landroid/os/Handler;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->lastChanges:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)[Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 2

    .prologue
    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoachUi;->goalsFor(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/isaigu/gymapp/ai/AiCoachUi;->healthOpen:Z

    return p0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelLive:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/EditText;Z)V
    .registers 2

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiCoachUi;->fire(Landroid/widget/EditText;Z)V

    return-void
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sput-object p0, Lcom/isaigu/gymapp/ai/AiCoachUi;->lastChanges:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()V
    .registers 0

    .prologue
    .line 42
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->refreshPanel()V

    return-void
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static closeLive()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 309
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->liveDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 311
    :try_start_5
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->liveDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_13

    .line 315
    :cond_a
    :goto_a
    sput-object v1, Lcom/isaigu/gymapp/ai/AiCoachUi;->liveDialog:Landroid/app/Dialog;

    .line 316
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelLive:Z

    if-eqz v0, :cond_12

    .line 317
    sput-object v1, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelBox:Landroid/widget/LinearLayout;

    .line 319
    :cond_12
    return-void

    .line 312
    :catch_13
    move-exception v0

    goto :goto_a
.end method

.method private static fill(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V
    .registers 13

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 193
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 194
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2726 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AI \u0442\u0440\u0435\u043d\u044c\u043e\u0440"

    const-string v3, "AI coach"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiCoachUi;->busy:Z

    if-eqz v1, :cond_54

    .line 198
    const-string v1, "\u043f\u0438\u0448\u0435\u2026"

    const-string v2, "typing\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    :cond_54
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 204
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->chat()Ljava/util/List;

    move-result-object v6

    .line 205
    const/4 v0, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    :goto_70
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10c

    .line 206
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;

    .line 207
    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->text:Ljava/lang/String;

    const/high16 v3, 0x41700000    # 15.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x0

    invoke-static {p0, v2, v3, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 208
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x41000000    # 8.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v7, v2, v3, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 209
    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v2, :cond_ed

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    :goto_a8
    const/high16 v3, 0x41600000    # 14.0f

    .line 210
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v8, v3

    iget-boolean v3, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v3, :cond_f6

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    :goto_b5
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    .line 209
    invoke-static {v2, v8, v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v8, -0x2

    invoke-direct {v3, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 213
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 214
    iget-boolean v2, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v2, :cond_ff

    const v2, 0x800003

    :goto_d8
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 215
    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/AiCoach$Turn;->ai:Z

    if-eqz v0, :cond_103

    .line 216
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 220
    :goto_e6
    invoke-virtual {v5, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_70

    .line 209
    :cond_ed
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v3, 0x26

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto :goto_a8

    .line 210
    :cond_f6
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v9, 0x80

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    goto :goto_b5

    .line 214
    :cond_ff
    const v2, 0x800005

    goto :goto_d8

    .line 218
    :cond_103
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_e6

    .line 222
    :cond_10c
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13a

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoachUi;->lastChanges:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    :cond_13a
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->pending:[Ljava/lang/String;

    if-eqz v0, :cond_16d

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->busy:Z

    if-nez v0, :cond_16d

    .line 226
    new-instance v1, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 227
    sget-object v2, Lcom/isaigu/gymapp/ai/AiCoachUi;->pending:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_14b
    if-ge v0, v3, :cond_164

    aget-object v6, v2, v0

    .line 228
    const/4 v7, 0x0

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v7

    .line 229
    new-instance v8, Lcom/isaigu/gymapp/ai/AiCoachUi$Quick;

    invoke-direct {v8, v6}, Lcom/isaigu/gymapp/ai/AiCoachUi$Quick;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {v1, v7}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_14b

    .line 232
    :cond_164
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    :cond_16d
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 235
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 236
    if-eqz p2, :cond_270

    const/high16 v0, 0x43700000    # 240.0f

    :goto_177
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 235
    invoke-virtual {p1, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance v0, Lcom/isaigu/gymapp/ai/AiCoachUi$ScrollDown;

    invoke-direct {v0, v4}, Lcom/isaigu/gymapp/ai/AiCoachUi$ScrollDown;-><init>(Landroid/widget/ScrollView;)V

    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 239
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 240
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 241
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 242
    if-eqz p2, :cond_274

    const-string v0, "\u201e\u043f\u043e-\u043b\u0435\u043a\u043e\u201c, \u201e\u043f\u043e-\u0434\u044a\u043b\u0433\u0438 \u043f\u043e\u0447\u0438\u0432\u043a\u0438\u201c, \u201e\u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u0433\u043e \u0431\u043e\u043b\u0438\u201c\u2026"

    const-string v3, "\u201csofter\u201d, \u201clonger rests\u201d, \u201cback hurts\u201d\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a1
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 245
    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 246
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 247
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 248
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 249
    const/16 v0, 0x4001

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 250
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 251
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 253
    new-instance v0, Lcom/isaigu/gymapp/ai/AiCoachUi$SendKey;

    invoke-direct {v0, v2, p2}, Lcom/isaigu/gymapp/ai/AiCoachUi$SendKey;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 254
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    const-string v0, "\u27a4"

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 256
    new-instance v3, Lcom/isaigu/gymapp/ai/AiCoachUi$SendClick;

    invoke-direct {v3, v2, p2}, Lcom/isaigu/gymapp/ai/AiCoachUi$SendClick;-><init>(Landroid/widget/EditText;Z)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 258
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 259
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->adviceLines()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_297

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_281

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_27e

    const-string v1, "\n"

    :goto_262
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\u2022 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24e

    .line 236
    :cond_270
    const/high16 v0, 0x43660000    # 230.0f

    goto/16 :goto_177

    .line 244
    :cond_274
    const-string v0, "\u041d\u0430\u043f\u0438\u0448\u0438 \u0438\u043b\u0438 \u043a\u0430\u0436\u0438 \u043d\u0435\u0449\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430\u2026"

    const-string v3, "Write or say something about the client\u2026"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a1

    .line 266
    :cond_27e
    const-string v1, ""

    goto :goto_262

    .line 268
    :cond_281
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    :cond_297
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isGuest()Z

    move-result v0

    if-nez v0, :cond_310

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->learned()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_310

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->learned()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2d8

    const-string v1, ", "

    :goto_2c8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->nameOf(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b4

    :cond_2d8
    const-string v1, ""

    goto :goto_2c8

    .line 275
    :cond_2db
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u043f\u0430\u0437\u0438 \u0432 \u043f\u0440\u043e\u0444\u0438\u043b\u0430: "

    const-string v3, "Save to the profile: "

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/isaigu/gymapp/ai/AiCoachUi$Save;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/AiCoachUi$Save;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    :cond_310
    return-void
.end method

.method private static fire(Landroid/widget/EditText;Z)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 544
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 546
    :goto_10
    :try_start_10
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 547
    if-eqz v0, :cond_26

    .line 548
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_26} :catch_32

    .line 552
    :cond_26
    :goto_26
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p1, v4}, Lcom/isaigu/gymapp/ai/AiCoachUi;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 553
    return-void

    .line 544
    :cond_2e
    const-string v0, ""

    move-object v1, v0

    goto :goto_10

    .line 550
    :catch_32
    move-exception v0

    goto :goto_26
.end method

.method private static goalsFor(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)[Lcom/isaigu/gymapp/ai/AiModel$Goal;
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v1, :cond_1e

    .line 152
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/isaigu/gymapp/ai/AiModel$Goal;

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    aput-object v2, v0, v1

    .line 154
    :goto_1d
    return-object v0

    :cond_1e
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->values()[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v0

    goto :goto_1d
.end method

.method static intake(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 13

    .prologue
    .line 70
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 71
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v2

    .line 72
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 74
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 75
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "\u041c\u044a\u0436"

    const-string v6, "Male"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "\u0416\u0435\u043d\u0430"

    const-string v6, "Female"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 76
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v5, :cond_1f6

    const/4 v0, 0x0

    :goto_2f
    new-instance v5, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;-><init>(I)V

    .line 75
    invoke-static {p0, v4, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 78
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v5, "Age"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->age:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u0433."

    const-string v7, "y"

    .line 79
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41b00000    # 22.0f

    new-instance v8, Lcom/isaigu/gymapp/ai/AiCoachUi$Step;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/isaigu/gymapp/ai/AiCoachUi$Step;-><init>(I)V

    invoke-static {p0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 78
    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/ai/AiCoachUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 79
    invoke-static {v5, v6, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 78
    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const-string v0, "\u0420\u044a\u0441\u0442"

    const-string v5, "Height"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    iget v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    if-lez v0, :cond_1f9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->heightCm:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a2
    const-string v6, "cm"

    const/high16 v7, 0x41b00000    # 22.0f

    new-instance v8, Lcom/isaigu/gymapp/ai/AiCoachUi$Step;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/isaigu/gymapp/ai/AiCoachUi$Step;-><init>(I)V

    invoke-static {p0, v0, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 80
    invoke-static {p0, v5, v0}, Lcom/isaigu/gymapp/ai/AiCoachUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xa

    .line 82
    invoke-static {v5, v6, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 80
    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const-string v0, "\u0422\u0435\u0433\u043b\u043e"

    const-string v5, "Weight"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->weightKg:D

    .line 84
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kg"

    const/high16 v7, 0x41b00000    # 22.0f

    new-instance v8, Lcom/isaigu/gymapp/ai/AiCoachUi$Step;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/isaigu/gymapp/ai/AiCoachUi$Step;-><init>(I)V

    invoke-static {p0, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    .line 83
    invoke-static {p0, v0, v5}, Lcom/isaigu/gymapp/ai/AiCoachUi;->labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xa

    .line 84
    invoke-static {v5, v6, p0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 83
    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoach;->bmi(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)D

    move-result-wide v4

    .line 87
    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_165

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0418\u0422\u041c "

    const-string v7, "BMI "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "%.1f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u00b7 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiCoach;->bmiClass(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x41600000    # 14.0f

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_1fd

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    :goto_157
    const/4 v4, 0x1

    .line 88
    invoke-static {p0, v6, v7, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v4, 0x8

    .line 89
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 88
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_165
    const-string v0, "\u041e\u043f\u0438\u0442 \u0441 EMS"

    const-string v4, "EMS experience"

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "\u041f\u044a\u0440\u0432\u0438 \u043f\u044a\u0442"

    const-string v6, "First time"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "\u041d\u044f\u043a\u043e\u043b\u043a\u043e \u043f\u044a\u0442\u0438"

    const-string v6, "A few times"

    .line 93
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "\u0420\u0435\u0434\u043e\u0432\u043d\u043e"

    const-string v6, "Regularly"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x0

    .line 94
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoach;->experienceOf(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-instance v5, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;-><init>(I)V

    .line 92
    invoke-static {p0, v0, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v4, 0x4

    .line 94
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 92
    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 98
    const-string v0, "\u0426\u0435\u043b"

    const-string v1, "Goal"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoachUi;->goalsFor(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)[Lcom/isaigu/gymapp/ai/AiModel$Goal;

    move-result-object v5

    .line 100
    array-length v0, v5

    new-array v6, v0, [Ljava/lang/String;

    .line 101
    const/4 v1, 0x0

    .line 102
    const/4 v0, 0x0

    :goto_1e1
    array-length v7, v5

    if-ge v0, v7, :cond_201

    .line 103
    aget-object v7, v5, v0

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiText;->goal(Lcom/isaigu/gymapp/ai/AiModel$Goal;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 104
    aget-object v7, v5, v0

    iget-object v8, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v7, v8, :cond_1f3

    move v1, v0

    .line 102
    :cond_1f3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e1

    .line 76
    :cond_1f6
    const/4 v0, 0x1

    goto/16 :goto_2f

    .line 81
    :cond_1f9
    const-string v0, "\u2014"

    goto/16 :goto_a2

    .line 89
    :cond_1fd
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_157

    .line 108
    :cond_201
    new-instance v0, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;-><init>(I)V

    invoke-static {p0, v6, v1, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AiModel$Mode;->PASSIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiModel;->isAllowed(Lcom/isaigu/gymapp/ai/AiModel$Goal;Lcom/isaigu/gymapp/ai/AiModel$Mode;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    const/4 v0, 0x1

    .line 110
    :goto_228
    if-eqz v0, :cond_25d

    .line 111
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430 \u00b7 \u0441 \u0434\u0432\u0438\u0436\u0435\u043d\u0438\u0435"

    const-string v6, "Active \u00b7 with movement"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    const/4 v0, 0x1

    const-string v5, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u00b7 \u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v6, "Passive \u00b7 at rest"

    .line 112
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->mode:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    sget-object v5, Lcom/isaigu/gymapp/ai/AiModel$Mode;->ACTIVE:Lcom/isaigu/gymapp/ai/AiModel$Mode;

    if-ne v0, v5, :cond_2e8

    const/4 v0, 0x0

    :goto_24a
    new-instance v5, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;-><init>(I)V

    .line 111
    invoke-static {p0, v1, v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0xa

    .line 113
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 111
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    :cond_25d
    const-string v0, "\u0417\u0434\u0440\u0430\u0432\u0435"

    const-string v1, "Health"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiCoach;->anyHealth(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Z

    move-result v0

    if-nez v0, :cond_27c

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->healthOpen:Z

    if-eqz v0, :cond_2eb

    :cond_27c
    const/4 v0, 0x1

    .line 117
    :goto_27d
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "\u041d\u044f\u043c\u0430\u043c \u043f\u0440\u043e\u0431\u043b\u0435\u043c\u0438"

    const-string v7, "None"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "\u0418\u043c\u0430\u043c"

    const-string v7, "I have"

    .line 118
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    if-eqz v0, :cond_2ed

    const/4 v1, 0x1

    :goto_299
    new-instance v6, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lcom/isaigu/gymapp/ai/AiCoachUi$Pick;-><init>(I)V

    .line 117
    invoke-static {p0, v5, v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v5, 0x4

    .line 118
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 117
    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    if-eqz v0, :cond_3a0

    .line 120
    new-instance v5, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v5, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v0, 0x0

    :goto_2b3
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_329

    .line 122
    const-string v1, "postpartum"

    sget-object v6, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2dc

    const-string v1, "diastasis"

    sget-object v6, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2dc

    const-string v1, "menopause"

    sget-object v6, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v6, v6, v0

    .line 123
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ef

    :cond_2dc
    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v6, :cond_2ef

    .line 121
    :goto_2e2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b3

    .line 109
    :cond_2e5
    const/4 v0, 0x0

    goto/16 :goto_228

    .line 112
    :cond_2e8
    const/4 v0, 0x1

    goto/16 :goto_24a

    .line 116
    :cond_2eb
    const/4 v0, 0x0

    goto :goto_27d

    .line 118
    :cond_2ed
    const/4 v1, 0x0

    goto :goto_299

    .line 126
    :cond_2ef
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;)Z

    move-result v6

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_326

    const-string v1, "\u2713 "

    :goto_300
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v1, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 128
    new-instance v6, Lcom/isaigu/gymapp/ai/AiCoachUi$Health;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-direct {v6, v7}, Lcom/isaigu/gymapp/ai/AiCoachUi$Health;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {v5, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_2e2

    .line 127
    :cond_326
    const-string v1, ""

    goto :goto_300

    .line 131
    :cond_329
    const/4 v0, 0x0

    :goto_32a
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_37e

    .line 132
    const-string v1, "pregnancy"

    sget-object v6, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_344

    iget-object v1, v2, Lcom/isaigu/gymapp/ai/AiModel$SessionInput;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v6, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v6, :cond_344

    .line 131
    :goto_341
    add-int/lit8 v0, v0, 0x1

    goto :goto_32a

    .line 135
    :cond_344
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;)Z

    move-result v6

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_37b

    const-string v1, "\u2298 "

    :goto_355
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v1, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 137
    new-instance v6, Lcom/isaigu/gymapp/ai/AiCoachUi$Health;

    sget-object v7, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-direct {v6, v7}, Lcom/isaigu/gymapp/ai/AiCoachUi$Health;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v5, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_341

    .line 136
    :cond_37b
    const-string v1, ""

    goto :goto_355

    .line 140
    :cond_37e
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const-string v0, "\u0414\u0440\u0443\u0433\u043e \u2014 \u043d\u0430\u043f\u0438\u0448\u0438 \u0433\u043e \u043d\u0430 AI \u0432 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0441\u0442\u044a\u043f\u043a\u0430."

    const-string v1, "Anything else \u2014 tell the AI on the next step."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v5, 0x0

    invoke-static {p0, v0, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x6

    .line 142
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 141
    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    :cond_3a0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v5, 0x3fa00000    # 1.25f

    invoke-direct {v0, v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 145
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 146
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    return-void
.end method

.method private static labeled(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .registers 5

    .prologue
    .line 158
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 159
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-object v0
.end method

.method static onAnswer(Lcom/isaigu/gymapp/ai/AiCoach$Reply;IZ)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 339
    sget v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->seq:I

    if-eq p1, v0, :cond_6

    .line 366
    :goto_5
    return-void

    .line 342
    :cond_6
    sput-boolean v4, Lcom/isaigu/gymapp/ai/AiCoachUi;->busy:Z

    .line 343
    if-nez p0, :cond_24

    .line 344
    new-instance v0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;-><init>()V

    .line 345
    const-string v1, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 AI \u2014 \u043f\u043b\u0430\u043d\u044a\u0442 \u043e\u0441\u0442\u0430\u0432\u0430. \u041e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v2, "No AI connection \u2014 the plan stays. Try again."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->reply:Ljava/lang/String;

    .line 346
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 347
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->lastChanges:Ljava/lang/String;

    .line 348
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->refreshPanel()V

    goto :goto_5

    .line 351
    :cond_24
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiCoach;->aiSaid(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)V

    .line 352
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->advice:[Ljava/lang/String;

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->isGuest()Z

    move-result v0

    if-nez v0, :cond_46

    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_46

    .line 354
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->coachUserId()J

    move-result-wide v2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->adviceLines()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/isaigu/gymapp/ai/AiProfile;->saveAdvice(Landroid/content/Context;JLjava/util/List;)V

    .line 356
    :cond_46
    invoke-virtual {p0}, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->hasQuestion()Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AiCoach$Reply;->options:Ljava/util/List;

    new-array v1, v4, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_56
    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->pending:[Ljava/lang/String;

    .line 357
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiCoach;->apply(Lcom/isaigu/gymapp/ai/AiCoach$Reply;Lcom/isaigu/gymapp/ai/AiModel$SessionInput;)Ljava/util/List;

    move-result-object v2

    .line 358
    if-eqz p2, :cond_cf

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiSession;->coachLive(Lcom/isaigu/gymapp/ai/AiCoach$Reply;)Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/AiBrief;->line(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d2

    const-string v1, ""

    :goto_86
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_92
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AiCoachUi;->lastChanges:Ljava/lang/String;

    .line 360
    if-nez p2, :cond_d8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d8

    .line 361
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiUi;->rerender()V

    .line 365
    :goto_a7
    const-string v3, "coach"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_dc

    const-string v1, "live "

    :goto_b2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 356
    :cond_cd
    const/4 v0, 0x0

    goto :goto_56

    .line 358
    :cond_cf
    const-string v0, ""

    goto :goto_66

    .line 359
    :cond_d2
    const-string v1, " \u00b7 "

    goto :goto_86

    :cond_d5
    const-string v1, ""

    goto :goto_92

    .line 363
    :cond_d8
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->refreshPanel()V

    goto :goto_a7

    .line 365
    :cond_dc
    const-string v1, "plan "

    goto :goto_b2
.end method

.method static openLive(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x41000000    # 8.0f

    .line 285
    if-nez p0, :cond_6

    .line 306
    :goto_5
    return-void

    .line 288
    :cond_6
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->closeLive()V

    .line 289
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 291
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 292
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 293
    invoke-static {p0, v6}, Lcom/isaigu/gymapp/ai/AiCoachUi;->panel(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    const-string v2, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v3, "Close"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 295
    new-instance v3, Lcom/isaigu/gymapp/ai/AiCoachUi$CloseLive;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/AiCoachUi$CloseLive;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const/4 v3, 0x6

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 299
    :try_start_4f
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x44200000    # 640.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 301
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x800035

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_75} :catch_7b

    .line 304
    :goto_75
    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->liveDialog:Landroid/app/Dialog;

    .line 305
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_5

    .line 302
    :catch_7b
    move-exception v1

    goto :goto_75
.end method

.method static panel(Landroid/content/Context;Z)Landroid/view/View;
    .registers 3

    .prologue
    .line 183
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 184
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 185
    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelBox:Landroid/widget/LinearLayout;

    .line 186
    sput-boolean p1, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelLive:Z

    .line 187
    invoke-static {p0, v0, p1}, Lcom/isaigu/gymapp/ai/AiCoachUi;->fill(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V

    .line 188
    return-object v0
.end method

.method static planJson()Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 380
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getPlan()Lcom/isaigu/gymapp/ai/AiModel$Plan;

    move-result-object v3

    .line 381
    if-nez v3, :cond_a

    .line 382
    const/4 v0, 0x0

    .line 392
    :goto_9
    return-object v0

    .line 384
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"min\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->totalS:I

    int-to-double v4, v1

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"cr10\":\""

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"phases\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 386
    const/4 v0, 0x0

    move v1, v0

    :goto_3d
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_ad

    .line 387
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;

    .line 388
    if-lez v1, :cond_aa

    const-string v2, ","

    :goto_51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "{\"id\":\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\",\"min\":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->durationS:I

    int-to-double v6, v5

    div-double/2addr v6, v8

    .line 389
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",\"hz\":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->hz:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",\"on\":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v5, v5, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->onS:I

    .line 390
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ",\"off\":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->a:Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;

    iget v0, v0, Lcom/isaigu/gymapp/ai/AiModel$CycleSpec;->offS:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3d

    .line 388
    :cond_aa
    const-string v2, ""

    goto :goto_51

    .line 392
    :cond_ad
    const-string v0, "]}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9
.end method

.method private static refreshPanel()V
    .registers 4

    .prologue
    .line 369
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    .line 371
    :try_start_4
    sget-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelBox:Landroid/widget/LinearLayout;

    sget-boolean v2, Lcom/isaigu/gymapp/ai/AiCoachUi;->panelLive:Z

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/ai/AiCoachUi;->fill(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_11} :catch_12

    .line 376
    :cond_11
    :goto_11
    return-void

    .line 372
    :catch_12
    move-exception v0

    .line 373
    const-string v1, "coach"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "panel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public static reset()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->busy:Z

    .line 60
    sput-boolean v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->healthOpen:Z

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->lastChanges:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->pending:[Ljava/lang/String;

    .line 63
    sget v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->seq:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->seq:I

    .line 64
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->closeLive()V

    .line 65
    return-void
.end method

.method static runJson()Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 397
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getEngine()Lcom/isaigu/gymapp/ai/AiEngine;

    move-result-object v1

    .line 398
    if-nez v1, :cond_c

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"phase\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    if-eqz v0, :cond_a2

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->phase()Lcom/isaigu/gymapp/ai/AiModel$Phase;

    move-result-object v0

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiModel$Phase;->id:Lcom/isaigu/gymapp/ai/AiModel$PhaseId;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AiModel$PhaseId;->name()Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"min_done\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 402
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getElapsedPlanS()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"state\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getState()Lcom/isaigu/gymapp/ai/AiEngine$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiEngine$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"tune\":{\"on\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneOn()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"off\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneOff()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"hz_pct\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneHz()D

    move-result-wide v2

    sub-double/2addr v2, v6

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\"rest_pct\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 404
    invoke-virtual {v1}, Lcom/isaigu/gymapp/ai/AiEngine;->getTuneRest()D

    move-result-wide v2

    sub-double/2addr v2, v6

    mul-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 401
    :cond_a2
    const-string v0, ""

    goto :goto_27
.end method

.method static send(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 324
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiCoachUi;->busy:Z

    if-eqz v1, :cond_12

    .line 336
    :cond_11
    :goto_11
    return-void

    .line 327
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 328
    if-nez p3, :cond_1b

    .line 329
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AiCoach;->userSaid(Ljava/lang/String;)V

    .line 331
    :cond_1b
    sput-object v0, Lcom/isaigu/gymapp/ai/AiCoachUi;->pending:[Ljava/lang/String;

    .line 332
    const/4 v2, 0x1

    sput-boolean v2, Lcom/isaigu/gymapp/ai/AiCoachUi;->busy:Z

    .line 333
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->refreshPanel()V

    .line 334
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getInput()Lcom/isaigu/gymapp/ai/AiModel$SessionInput;

    move-result-object v2

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->planJson()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_31

    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoachUi;->runJson()Ljava/lang/String;

    move-result-object v0

    :cond_31
    invoke-static {v2, v1, v3, v0, p2}, Lcom/isaigu/gymapp/ai/AiCoach;->requestFields(Lcom/isaigu/gymapp/ai/AiModel$SessionInput;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/ai/AiCoachUi;->seq:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/isaigu/gymapp/ai/AiCoachUi;->seq:I

    invoke-direct {v2, v3, v0, v4, p2}, Lcom/isaigu/gymapp/ai/AiCoachUi$Ask;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    const-string v0, "xems-coach"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_11
.end method

.method static split(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 168
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 169
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/ai/AiCoachUi;->panel(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v1

    .line 171
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 172
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->chat()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    sget-boolean v1, Lcom/isaigu/gymapp/ai/AiCoachUi;->busy:Z

    if-nez v1, :cond_41

    .line 175
    const-string v1, "\u041d\u0430\u0447\u0430\u043b\u043e: \u043f\u0440\u0435\u0434\u043b\u043e\u0436\u0438 \u043f\u043b\u0430\u043d \u0438 \u0441\u044a\u0432\u0435\u0442\u0438 \u0437\u0430 \u0434\u043d\u0435\u0441."

    const-string v2, "Start: suggest the plan and today\'s advice."

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v4, v2}, Lcom/isaigu/gymapp/ai/AiCoachUi;->send(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 178
    :cond_41
    return-object v0
.end method
