.class public final Lcom/isaigu/gymapp/ai/AiWizard;
.super Ljava/lang/Object;
.source "AiWizard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AiWizard$Nav;,
        Lcom/isaigu/gymapp/ai/AiWizard$StepClick;,
        Lcom/isaigu/gymapp/ai/AiWizard$AddPhrase;,
        Lcom/isaigu/gymapp/ai/AiWizard$Choose;
    }
.end annotation


# static fields
.field static final ASK:I = 0x3

.field static final CLIENT:I = 0x0

.field static final HEALTH:I = 0x2

.field static final N_BACK:I = 0x0

.field static final N_CLOSE:I = 0x2

.field static final N_NEXT:I = 0x1

.field static final SUMMARY:I = 0x4

.field static final TITLES:[Ljava/lang/String;

.field static final TRAINING:I = 0x1

.field static step:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u041a\u043b\u0438\u0435\u043d\u0442"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0417\u0434\u0440\u0430\u0432\u0435"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u041a\u0430\u0436\u0438 \u043d\u0430 AI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u0413\u043e\u0442\u043e\u0432\u043e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AiWizard;->TITLES:[Ljava/lang/String;

    .line 38
    sput v3, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ask(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, -0x2

    const/high16 v10, 0x41900000    # 18.0f

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 258
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 259
    const-string v0, "\u041e\u0449\u0435 \u043d\u0435\u0449\u043e \u0437\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430? (\u043f\u043e \u0436\u0435\u043b\u0430\u043d\u0438\u0435)"

    const-string v3, "Anything else about the client? (optional)"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 261
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 262
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 263
    const-string v4, "\u043d\u0430\u043f\u0440. \u201e\u0434\u043d\u0435\u0441 \u0435 \u0443\u043c\u043e\u0440\u0435\u043d\u0430, \u0431\u043e\u043b\u044f\u0442 \u044f \u043a\u043e\u043b\u0435\u043d\u0435\u0442\u0435, \u0438\u0441\u043a\u0430 \u043f\u043e\u0432\u0435\u0447\u0435 \u043a\u043e\u0440\u0435\u043c\u201c"

    const-string v5, "e.g. \u201ctired today, knees hurt, wants more abs\u201d"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 265
    sget-object v4, Lcom/isaigu/gymapp/ai/AiTrain;->draft:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v3, v10}, Landroid/widget/EditText;->setTextSize(F)V

    .line 267
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 268
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 269
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMinLines(I)V

    .line 270
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 271
    const v4, 0x800033

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 272
    const v4, 0x24001

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 273
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 274
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 276
    sput-object v3, Lcom/isaigu/gymapp/ai/AiTrain;->intakeField:Landroid/widget/EditText;

    .line 277
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    const-string v3, "\ud83c\udfa4"

    invoke-static {p0, v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 279
    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 280
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Mic;

    invoke-direct {v4, v1}, Lcom/isaigu/gymapp/ai/AiTrain$Mic;-><init>(Z)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 282
    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 283
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    const/4 v3, 0x6

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    new-instance v3, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v3, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 286
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "\u0434\u043d\u0435\u0441 \u0435 \u0443\u043c\u043e\u0440\u0435\u043d/\u0430"

    const-string v5, "tired today"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "\u043d\u0435 \u0435 \u0437\u0430\u043a\u0443\u0441\u0438\u043b/\u0430"

    const-string v5, "no breakfast"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    const/4 v0, 0x2

    const-string v5, "\u0431\u043e\u043b\u044f\u0442 \u0433\u043e/\u044f \u043a\u043e\u043b\u0435\u043d\u0435\u0442\u0435"

    const-string v6, "knees hurt"

    .line 287
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const-string v5, "\u043a\u0440\u044a\u0441\u0442\u044a\u0442 \u0433\u043e/\u044f \u0431\u043e\u043b\u0438"

    const-string v6, "low back hurts"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "\u043f\u043e\u0432\u0435\u0447\u0435 \u043a\u043e\u0440\u0435\u043c"

    const-string v6, "more abs"

    .line 288
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "\u043f\u043e\u0432\u0435\u0447\u0435 \u0441\u0435\u0434\u0430\u043b\u0438\u0449\u0435"

    const-string v6, "more glutes"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "\u043f\u043e-\u043b\u0435\u043a\u043e \u0434\u043d\u0435\u0441"

    const-string v6, "lighter today"

    .line 289
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x7

    const-string v5, "\u0441\u0430\u043c\u043e 20 \u043c\u0438\u043d\u0443\u0442\u0438"

    const-string v6, "only 20 minutes"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 290
    array-length v5, v4

    move v0, v1

    :goto_12c
    if-ge v0, v5, :cond_157

    aget-object v6, v4, v0

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v7, v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v7

    .line 292
    new-instance v8, Lcom/isaigu/gymapp/ai/AiWizard$AddPhrase;

    invoke-direct {v8, v6}, Lcom/isaigu/gymapp/ai/AiWizard$AddPhrase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-virtual {v3, v7}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_12c

    .line 295
    :cond_157
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 299
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 300
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WakeListener;->enrolled(Landroid/content/Context;)Z

    move-result v2

    .line 301
    const-string v3, "\ud83c\udf99"

    const/high16 v4, 0x42080000    # 34.0f

    if-eqz v2, :cond_1eb

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_17b
    invoke-static {p0, v3, v4, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    if-eqz v2, :cond_1ee

    const-string v0, "\u201e\u0422\u0440\u0435\u043d\u0435\u0440, \u2026\u201c \u0440\u0430\u0431\u043e\u0442\u0438"

    const-string v3, "\u201cTrainer, \u2026\u201d is on"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_18c
    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 302
    invoke-static {p0, v0, v3, v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 304
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 305
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    if-eqz v2, :cond_1f7

    const-string v0, "\u0417\u0430\u043f\u0438\u0448\u0438 \u043f\u0430\u043a"

    const-string v2, "Record again"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1ac
    const/4 v2, 0x2

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 308
    new-instance v2, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x433e0000    # 190.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 310
    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 311
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43700000    # 240.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v2, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 313
    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 314
    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    return-void

    .line 301
    :cond_1eb
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_17b

    .line 303
    :cond_1ee
    const-string v0, "\u0413\u043b\u0430\u0441\u043e\u0432\u043e \u0443\u043f\u0440\u0430\u0432\u043b\u0435\u043d\u0438\u0435: \u043d\u0430\u0443\u0447\u0438 \u201e\u0422\u0440\u0435\u043d\u0435\u0440\u201c"

    const-string v3, "Voice control: teach \u201cTrainer\u201d"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18c

    .line 306
    :cond_1f7
    const-string v0, "\u041d\u0430\u0443\u0447\u0438 (30 s)"

    const-string v2, "Teach (30 s)"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1ac
.end method

.method private static big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v5, 0x1

    .line 432
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 433
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 434
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 435
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

    .line 436
    const/high16 v1, 0x41d00000    # 26.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p1, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 437
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 438
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    const/high16 v1, 0x41400000    # 12.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 440
    return-object v0
.end method

.method static build(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    const/4 v7, -0x1

    const/high16 v3, 0x41b00000    # 22.0f

    const/high16 v4, 0x41600000    # 14.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 45
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 46
    sget v0, Lcom/isaigu/gymapp/ai/AiTrain;->view:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6a

    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 47
    const/4 v0, 0x4

    sput v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    .line 51
    :cond_19
    :goto_19
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoUi;->nativeCard(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 52
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

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
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 56
    sget v2, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    packed-switch v2, :pswitch_data_84

    .line 61
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->summary(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 63
    :goto_4c
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->footer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void

    .line 48
    :cond_6a
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    .line 49
    const/4 v0, 0x3

    sput v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    goto :goto_19

    .line 57
    :pswitch_73
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->client(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_4c

    .line 58
    :pswitch_77
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->training(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_4c

    .line 59
    :pswitch_7b
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->health(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_4c

    .line 60
    :pswitch_7f
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->ask(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    goto :goto_4c

    .line 56
    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_73
        :pswitch_77
        :pswitch_7b
        :pswitch_7f
    .end packed-switch
.end method

.method private static choice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/16 v5, 0x11

    .line 445
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 446
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 447
    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 448
    if-eqz p3, :cond_7a

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    const/16 v1, 0x2a

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    :goto_2b
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    int-to-float v4, v1

    .line 449
    if-eqz p3, :cond_7d

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    move v2, v1

    :goto_37
    if-eqz p3, :cond_81

    const/high16 v1, 0x40000000    # 2.0f

    :goto_3b
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 448
    invoke-static {v0, v4, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 450
    const/high16 v1, 0x41a00000    # 20.0f

    if-eqz p3, :cond_84

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    :goto_4c
    invoke-static {p0, p1, v1, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 451
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 452
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 453
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    if-eqz p2, :cond_6f

    .line 455
    const/high16 v0, 0x41500000    # 13.0f

    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v2, 0x0

    invoke-static {p0, p2, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 456
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 457
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    :cond_6f
    if-eqz p4, :cond_87

    .line 460
    new-instance v0, Lcom/isaigu/gymapp/ai/AiWizard$Choose;

    invoke-direct {v0, p4, p5}, Lcom/isaigu/gymapp/ai/AiWizard$Choose;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    :cond_79
    :goto_79
    return-object v3

    .line 448
    :cond_7a
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    goto :goto_2b

    .line 449
    :cond_7d
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    move v2, v1

    goto :goto_37

    :cond_81
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_3b

    .line 450
    :cond_84
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_4c

    .line 461
    :cond_87
    if-nez p3, :cond_79

    .line 462
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_79
.end method

.method private static client(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 10

    .prologue
    .line 128
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v6

    .line 129
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 130
    const-string v0, "\u041f\u043e\u043b"

    const-string v1, "Sex"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    const-string v0, "\u041c\u044a\u0436"

    const-string v1, "Male"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v3, :cond_16e

    const/4 v3, 0x1

    :goto_27
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiWizard;->choice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x6

    const/high16 v2, 0x3f800000    # 1.0f

    .line 132
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;IF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 131
    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    const-string v0, "\u0416\u0435\u043d\u0430"

    const-string v1, "Female"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v3, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v3, :cond_171

    const/4 v3, 0x1

    :goto_4d
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiWizard;->choice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    .line 134
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;IF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 133
    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x433e0000    # 190.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    const-string v0, "\u0412\u044a\u0437\u0440\u0430\u0441\u0442"

    const-string v1, "Age"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u0433\u043e\u0434\u0438\u043d\u0438"

    const-string v3, "years"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->number(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x12

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    const-string v0, "\u0420\u044a\u0441\u0442"

    const-string v1, "Height"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/isaigu/gymapp/ai/AutoModel$Input;->heightCm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cm"

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->number(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xe

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    const-string v0, "\u0422\u0435\u0433\u043b\u043e"

    const-string v1, "Weight"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v6, Lcom/isaigu/gymapp/ai/AutoModel$Input;->weightKg:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kg"

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->number(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xe

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiCoach;->bmi(Lcom/isaigu/gymapp/ai/AutoModel$Input;)D

    move-result-wide v2

    .line 140
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->tile(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 141
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    const-string v0, "\u0418\u0422\u041c"

    const-string v1, "BMI"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_174

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_13f
    const/high16 v5, 0x42200000    # 40.0f

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    cmpl-double v0, v2, v6

    if-ltz v0, :cond_178

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 144
    :goto_149
    const/4 v6, 0x1

    .line 143
    invoke-static {p0, v1, v5, v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiCoach;->bmiClass(D)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    const v0, 0x3f4ccccd    # 0.8f

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void

    .line 131
    :cond_16e
    const/4 v3, 0x0

    goto/16 :goto_27

    .line 133
    :cond_171
    const/4 v3, 0x0

    goto/16 :goto_4d

    .line 143
    :cond_174
    const-string v0, "\u2014"

    move-object v1, v0

    goto :goto_13f

    .line 144
    :cond_178
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_149
.end method

.method private static colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 468
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 469
    int-to-float v1, p2

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 470
    return-object v0
.end method

.method private static fill(Landroid/content/Context;IF)Landroid/widget/LinearLayout$LayoutParams;
    .registers 6

    .prologue
    .line 474
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 475
    int-to-float v1, p1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 476
    return-object v0
.end method

.method private static footer(Landroid/content/Context;)Landroid/view/View;
    .registers 10

    .prologue
    const/high16 v8, 0x42600000    # 56.0f

    const/4 v7, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 99
    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 100
    sget v2, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    if-lez v2, :cond_4b

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2039  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u041d\u0430\u0437\u0430\u0434"

    const-string v5, "Back"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 102
    new-instance v4, Lcom/isaigu/gymapp/ai/AiWizard$Nav;

    invoke-direct {v4, v1}, Lcom/isaigu/gymapp/ai/AiWizard$Nav;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x432a0000    # 170.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :cond_4b
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    sget v2, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_d7

    .line 108
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "\u0413\u043e\u0442\u043e\u0432\u0430 \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0430"

    const-string v5, "Ready program"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const-string v4, "\u2726 \u041d\u043e\u0432\u0430 \u043e\u0442 AI"

    const-string v5, "\u2726 New by the AI"

    .line 109
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    sget-boolean v4, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v4, :cond_d5

    :goto_7a
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 108
    invoke-static {p0, v2, v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x43be0000    # 380.0f

    .line 110
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u25b6  "

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

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 112
    new-instance v1, Lcom/isaigu/gymapp/ai/AiTrain$Act;

    invoke-direct {v1, v7}, Lcom/isaigu/gymapp/ai/AiTrain$Act;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x435c0000    # 220.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 115
    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    :goto_d4
    return-object v3

    :cond_d5
    move v0, v1

    .line 109
    goto :goto_7a

    .line 117
    :cond_d7
    sget v2, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    if-ne v2, v7, :cond_119

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2726  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u041d\u0430\u0433\u043b\u0430\u0441\u0438 \u0441 AI"

    const-string v5, "Tune with AI"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_f6
    sget v4, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    if-ne v4, v7, :cond_135

    :goto_fa
    invoke-static {p0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 119
    new-instance v2, Lcom/isaigu/gymapp/ai/AiWizard$Nav;

    invoke-direct {v2, v0}, Lcom/isaigu/gymapp/ai/AiWizard$Nav;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x43820000    # 260.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d4

    .line 117
    :cond_119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041d\u0430\u043f\u0440\u0435\u0434"

    const-string v5, "Next"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  \u203a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f6

    :cond_135
    move v1, v0

    .line 118
    goto :goto_fa
.end method

.method private static freeTraining(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 391
    sget-object v3, Lcom/isaigu/gymapp/ai/AiTrain;->freePlan:Lcom/isaigu/gymapp/ai/AiWorkout$Plan;

    .line 392
    if-nez v3, :cond_3a

    .line 393
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AI \u0441\u044a\u0441\u0442\u0430\u0432\u044f \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430\u2026"

    const-string v3, "The AI is writing the workout\u2026"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    :goto_25
    const/high16 v1, 0x41800000    # 16.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 393
    invoke-static {p0, v0, v1, v3, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    :goto_30
    return-void

    .line 394
    :cond_31
    const-string v0, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u201e\u2726 \u041d\u043e\u0432\u0430 \u043e\u0442 AI\u201c, \u0437\u0430 \u0434\u0430 \u044f \u0441\u044a\u0441\u0442\u0430\u0432\u0438."

    const-string v1, "Tap \u201c\u2726 New by the AI\u201d to write it."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 398
    :cond_3a
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ba

    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->title:Ljava/lang/String;

    :goto_44
    const/high16 v1, 0x41a00000    # 20.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v4, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 399
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 400
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 401
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 403
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/AiWorkout;->lines(Lcom/isaigu/gymapp/ai/AiWorkout$Plan;)Ljava/util/List;

    move-result-object v5

    move v1, v2

    .line 404
    :goto_60
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c6

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ". "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v6, 0x41600000    # 14.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    if-nez v1, :cond_c3

    const/4 v0, 0x4

    :goto_90
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    iget-object v0, v3, Lcom/isaigu/gymapp/ai/AiWorkout$Plan;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AiWorkout$Item;->how:Ljava/lang/String;

    .line 407
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b6

    .line 408
    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v6, v7, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    :cond_b6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_60

    .line 398
    :cond_ba
    const-string v0, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v1, "AI workout"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_44

    .line 405
    :cond_c3
    const/16 v0, 0x8

    goto :goto_90

    .line 411
    :cond_c6
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 412
    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 413
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_30
.end method

.method private static header(Landroid/content/Context;)Landroid/view/View;
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v9, 0x40c00000    # 6.0f

    const/4 v8, 0x1

    const/high16 v7, 0x40800000    # 4.0f

    .line 71
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 72
    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2726 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "AI \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v4, "AI training"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v1, v5, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 74
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " / 5 \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/isaigu/gymapp/ai/AiWizard;->TITLES:[Ljava/lang/String;

    sget v4, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v5, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 76
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    move v1, v0

    .line 79
    :goto_72
    const/4 v0, 0x5

    if-ge v1, v0, :cond_b4

    .line 80
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 82
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 83
    sget v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    if-gt v1, v0, :cond_b1

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    :goto_8f
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 84
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    invoke-static {p0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 87
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_72

    .line 83
    :cond_b1
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    goto :goto_8f

    .line 89
    :cond_b4
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    const-string v0, "  \u2715"

    const/high16 v1, 0x41a00000    # 20.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 91
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 92
    new-instance v1, Lcom/isaigu/gymapp/ai/AiWizard$Nav;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/ai/AiWizard$Nav;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    return-object v2
.end method

.method private static health(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 11

    .prologue
    .line 212
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v7

    .line 213
    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiCoach;->anyHealth(Lcom/isaigu/gymapp/ai/AutoModel$Input;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->healthOpen:Z

    if-eqz v0, :cond_a6

    :cond_e
    const/4 v0, 0x1

    move v6, v0

    .line 214
    :goto_10
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2713 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0417\u0434\u0440\u0430\u0432"

    const-string v2, "Healthy"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u043d\u0438\u0449\u043e \u0437\u0430 \u043e\u0442\u0431\u0435\u043b\u044f\u0437\u0432\u0430\u043d\u0435"

    const-string v2, "nothing to note"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v6, :cond_aa

    const/4 v3, 0x1

    :goto_3a
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiWizard;->choice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 216
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;IF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 215
    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const-string v0, "\u0418\u043c\u0430 \u043f\u0440\u043e\u0431\u043b\u0435\u043c"

    const-string v1, "Has an issue"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u0438\u0437\u0431\u0435\u0440\u0438 \u043a\u043e\u0435"

    const-string v2, "pick which"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    const/4 v5, 0x1

    move-object v0, p0

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiWizard;->choice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    .line 218
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;IF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 217
    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    if-nez v6, :cond_ac

    .line 221
    const-string v0, "\u0410\u043a\u043e \u0438\u043c\u0430 \u043d\u0435\u0449\u043e \u2014 \u0431\u043e\u043b\u043a\u0438, \u0434\u0438\u0430\u0431\u0435\u0442, \u043a\u0440\u044a\u0432\u043d\u043e, \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442, \u043b\u0435\u043a\u0430\u0440\u0441\u0442\u0432\u0430 \u2014 \u0438\u0437\u0431\u0435\u0440\u0438 \u201e\u0418\u043c\u0430 \u043f\u0440\u043e\u0431\u043b\u0435\u043c\u201c.\n\u0414\u0440\u0443\u0433\u043e \u043c\u043e\u0436\u0435\u0448 \u0434\u0430 \u043a\u0430\u0436\u0435\u0448 \u043d\u0430 AI \u043d\u0430 \u0441\u043b\u0435\u0434\u0432\u0430\u0449\u0430\u0442\u0430 \u0441\u0442\u044a\u043f\u043a\u0430."

    const-string v1, "If there is anything \u2014 pain, diabetes, blood pressure, pregnancy, medicines \u2014 pick \u201cHas an issue\u201d.\nAnything else you can tell the AI on the next step."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 224
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x1c

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :goto_a5
    return-void

    .line 213
    :cond_a6
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_10

    .line 215
    :cond_aa
    const/4 v3, 0x0

    goto :goto_3a

    .line 227
    :cond_ac
    new-instance v2, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;-><init>(Landroid/content/Context;)V

    .line 228
    const/4 v0, 0x0

    :goto_b2
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_113

    .line 229
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH:[Ljava/lang/String;

    aget-object v3, v1, v0

    .line 230
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v4, :cond_dc

    const-string v1, "postpartum"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d9

    const-string v1, "diastasis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d9

    const-string v1, "menopause"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 228
    :cond_d9
    :goto_d9
    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    .line 233
    :cond_dc
    invoke-static {v7, v3}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v4

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_110

    const-string v1, "\u2713 "

    :goto_e9
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->HEALTH_BG:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v1, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 235
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 236
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Health;

    invoke-direct {v4, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Health;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_d9

    .line 234
    :cond_110
    const-string v1, ""

    goto :goto_e9

    .line 239
    :cond_113
    const/4 v0, 0x0

    :goto_114
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_165

    .line 240
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA:[Ljava/lang/String;

    aget-object v3, v1, v0

    .line 241
    iget-object v1, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->MALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v1, v4, :cond_12e

    const-string v1, "pregnancy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 239
    :goto_12b
    add-int/lit8 v0, v0, 0x1

    goto :goto_114

    .line 244
    :cond_12e
    invoke-static {v7, v3}, Lcom/isaigu/gymapp/ai/AiCoach;->healthOn(Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;)Z

    move-result v4

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_162

    const-string v1, "\u2298 "

    :goto_13b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/isaigu/gymapp/ai/AiCoach;->CONTRA_BG:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v1, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 246
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 247
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Health;

    invoke-direct {v4, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Health;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {v2, v1}, Lcom/isaigu/gymapp/ai/AiUi$FlowRow;->add(Landroid/view/View;)V

    goto :goto_12b

    .line 245
    :cond_162
    const-string v1, ""

    goto :goto_13b

    .line 250
    :cond_165
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 252
    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x18

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a5
.end method

.method static label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .registers 6

    .prologue
    .line 426
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

    .line 427
    const v1, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 428
    return-object v0
.end method

.method private static number(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .registers 14

    .prologue
    const/high16 v8, 0x41d00000    # 26.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 151
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->tile(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 153
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    const/high16 v1, 0x42300000    # 44.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, p2, v1, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 156
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 157
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, p3, v1, v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 159
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 162
    const-string v2, "\u2212"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 163
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    new-instance v3, Lcom/isaigu/gymapp/ai/AiWizard$StepClick;

    invoke-direct {v3, p4, v4}, Lcom/isaigu/gymapp/ai/AiWizard$StepClick;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v6, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const-string v2, "+"

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 167
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 168
    new-instance v3, Lcom/isaigu/gymapp/ai/AiWizard$StepClick;

    invoke-direct {v3, p4, v5}, Lcom/isaigu/gymapp/ai/AiWizard$StepClick;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v3, v6, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 170
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 171
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    const/16 v2, 0xa

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-object v0
.end method

.method static reset()V
    .registers 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/ai/AiWizard;->step:I

    .line 42
    return-void
.end method

.method private static summary(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 15

    .prologue
    const/4 v12, -0x1

    const/16 v4, 0x8

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 320
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v5

    .line 321
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getPlan()Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v6

    .line 323
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->tile(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 324
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->free:Z

    if-eqz v0, :cond_d7

    .line 325
    invoke-static {p0, v7}, Lcom/isaigu/gymapp/ai/AiWizard;->freeTraining(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 356
    :goto_1a
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-direct {v0, v3, v12, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->tile(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 359
    const-string v0, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438"

    const-string v1, "Advice"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 360
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiCoach;->advice()[Ljava/lang/String;

    move-result-object v5

    .line 361
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 362
    if-nez v5, :cond_2f4

    .line 363
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AiTrain;->busy:Z

    if-eqz v0, :cond_2ea

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2726 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AI \u043f\u043e\u0434\u0433\u043e\u0442\u0432\u044f \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438\u0442\u0435\u2026"

    const-string v4, "The AI is preparing the advice\u2026"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_61
    const/high16 v1, 0x41700000    # 15.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 363
    invoke-static {p0, v0, v1, v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x6

    .line 365
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 363
    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    :cond_71
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 377
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    const v0, 0x3f99999a    # 1.2f

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiWizard;->tile(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2726 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0413\u043e\u0432\u043e\u0440\u0438 \u0441 AI"

    const-string v4, "Talk to the AI"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 383
    invoke-static {p0, v1, v3}, Lcom/isaigu/gymapp/ai/AiTrain;->chat(Landroid/content/Context;Landroid/widget/LinearLayout;Z)V

    .line 384
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 385
    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 386
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 387
    const v1, 0x3f99999a    # 1.2f

    const/16 v2, 0xe

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    return-void

    .line 327
    :cond_d7
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v0, v1, v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 328
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 329
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 330
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 332
    const-string v0, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v2, "active"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget v1, v1, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->level:I

    .line 333
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoUi;->levelName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    .line 331
    invoke-static {p0, v0, v1, v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    .line 333
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 331
    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    iget-object v1, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/ai/AutoCatalog;->times(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)[I

    move-result-object v0

    .line 335
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v0, v3

    aget v9, v0, v10

    add-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\u2032"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "\u0430\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v9, "active"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v2, v8}, Lcom/isaigu/gymapp/ai/AiWizard;->big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v11, v3}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    aget v0, v0, v8

    div-int/lit8 v0, v0, 0x3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2032"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v8, "recovery"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v11, v4}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    iget v8, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Lo:I

    if-le v0, v8, :cond_2d7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u2013"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v8, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->cr10Hi:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u0443\u0441\u0435\u0449\u0430\u043d\u0435 / 10"

    const-string v8, "feel / 10"

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->big(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 339
    invoke-static {p0, v11, v4}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 338
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-static {v6}, Lcom/isaigu/gymapp/ai/AiTrain;->mainStep(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Lcom/isaigu/gymapp/ai/AutoModel$Step;

    move-result-object v8

    .line 342
    if-eqz v8, :cond_2b4

    .line 343
    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    if-lez v0, :cond_2db

    sget v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoHz:I

    iget v1, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->age:I

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/SafeLimits;->hzMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 344
    :goto_203
    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    if-lez v1, :cond_2df

    sget v1, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOn:I

    .line 345
    :goto_209
    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    if-lez v2, :cond_2e3

    sget v2, Lcom/isaigu/gymapp/ai/AutoSession;->vetoOff:I

    .line 346
    :goto_20f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " Hz \u00b7 "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v9, "on"

    invoke-static {v1, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 347
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->pwUs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, v6, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->doublePulseAllowed:Z

    if-eqz v0, :cond_2e7

    iget-boolean v0, v5, Lcom/isaigu/gymapp/ai/AutoModel$Input;->doublePulse:Z

    if-eqz v0, :cond_2e7

    .line 348
    const-string v0, " \u00b7 \u0434\u0432\u043e\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v2, " \u00b7 double impulse"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_272
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41700000    # 15.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    .line 346
    invoke-static {p0, v0, v1, v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xa

    .line 348
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 346
    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoSession;->vetoReason:Ljava/lang/String;

    if-eqz v0, :cond_2b4

    .line 350
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

    invoke-static {p0, v0, v1, v2, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    :cond_2b4
    const-string v0, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0442\u0440\u044a\u0433\u0432\u0430 \u043e\u0442 0 \u2014 \u043a\u0430\u0447\u0432\u0430\u0448 \u044f \u0441 + \u043f\u043e \u0432\u0440\u0435\u043c\u0435 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430."

    const-string v1, "The strength starts at 0 \u2014 raise it with + during the session."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 354
    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 353
    invoke-virtual {v7, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1a

    .line 332
    :cond_2cd
    const-string v0, "\u043f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v2, "passive"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_115

    .line 338
    :cond_2d7
    const-string v0, ""

    goto/16 :goto_1c9

    .line 343
    :cond_2db
    iget v0, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->hz:I

    goto/16 :goto_203

    .line 344
    :cond_2df
    iget v1, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->onS:I

    goto/16 :goto_209

    .line 345
    :cond_2e3
    iget v2, v8, Lcom/isaigu/gymapp/ai/AutoModel$Step;->offS:I

    goto/16 :goto_20f

    .line 348
    :cond_2e7
    const-string v0, ""

    goto :goto_272

    .line 364
    :cond_2ea
    const-string v0, "\u041d\u044f\u043c\u0430 \u0432\u0440\u044a\u0437\u043a\u0430 \u0441 AI \u2014 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430 \u0435 \u0433\u043e\u0442\u043e\u0432\u0430 \u0438 \u0431\u0435\u0437 \u043f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0438."

    const-string v1, "No AI \u2014 the session is ready without advice."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_61

    :cond_2f4
    move v0, v3

    .line 367
    :goto_2f5
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_71

    array-length v1, v5

    if-ge v0, v1, :cond_71

    .line 368
    aget-object v1, v5, v0

    if-eqz v1, :cond_330

    aget-object v1, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_330

    .line 369
    sget-object v1, Lcom/isaigu/gymapp/ai/AiCoach;->ADVICE_BG:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/high16 v7, 0x41400000    # 12.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {p0, v1, v7, v8, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 370
    if-nez v0, :cond_333

    const/4 v1, 0x2

    :goto_318
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    aget-object v1, v5, v0

    const/high16 v7, 0x41600000    # 14.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {p0, v1, v7, v8, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    :cond_330
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f5

    :cond_333
    move v1, v4

    .line 370
    goto :goto_318
.end method

.method static tile(Landroid/content/Context;)Landroid/widget/LinearLayout;
    .registers 6

    .prologue
    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x41400000    # 12.0f

    .line 419
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 420
    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 421
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

    .line 422
    return-object v0
.end method

.method private static training(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .registers 13

    .prologue
    .line 179
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getInput()Lcom/isaigu/gymapp/ai/AutoModel$Input;

    move-result-object v7

    .line 180
    const/4 v0, 0x3

    new-array v6, v0, [Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->TONE:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aput-object v1, v6, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->SLIM:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aput-object v1, v6, v0

    const/4 v0, 0x2

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Goal;->HEALTH:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aput-object v1, v6, v0

    .line 181
    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u0442\u043e\u043d\u0443\u0441, \u043e\u0444\u043e\u0440\u043c\u044f\u043d\u0435, \u0441\u0438\u043b\u0430"

    const-string v2, "tone, shape, strength"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x1

    const-string v1, "\u043f\u043e\u0432\u0435\u0447\u0435 \u0440\u0430\u0437\u0445\u043e\u0434, \u043f\u043e-\u043c\u0430\u043b\u043a\u043e \u043c\u0430\u0437\u043d\u0438\u043d\u0438"

    const-string v2, "more burn, less fat"

    .line 182
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    const-string v1, "\u0433\u0440\u044a\u0431, \u0441\u0442\u0430\u0432\u0438, \u0432\u044a\u0437\u0441\u0442\u0430\u043d\u043e\u0432\u044f\u0432\u0430\u043d\u0435"

    const-string v2, "back, joints, recovery"

    .line 183
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 184
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 185
    const-string v0, "\u0426\u0435\u043b"

    const-string v1, "Goal"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 187
    const/4 v5, 0x0

    :goto_52
    array-length v0, v6

    if-ge v5, v0, :cond_83

    .line 188
    aget-object v0, v6, v5

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoUi;->goalName(Lcom/isaigu/gymapp/ai/AutoModel$Goal;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v8, v5

    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    aget-object v3, v6, v5

    if-ne v0, v3, :cond_7e

    const/4 v3, 0x1

    :goto_64
    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiWizard;->choice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)Landroid/view/View;

    move-result-object v1

    .line 189
    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v5, :cond_80

    const/4 v0, 0x0

    :goto_74
    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 188
    :cond_7e
    const/4 v3, 0x0

    goto :goto_64

    .line 189
    :cond_80
    const/16 v0, 0xa

    goto :goto_74

    .line 191
    :cond_83
    const/4 v0, 0x6

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;IF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const v3, 0x3fd9999a    # 1.7f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 194
    const-string v0, "\u0412\u0438\u0434"

    const-string v1, "Kind"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_194

    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->menu(Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Kind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_194

    const/4 v0, 0x1

    move v6, v0

    .line 196
    :goto_cb
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 197
    const-string v0, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430"

    const-string v1, "Active"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u0441 \u0443\u043f\u0440\u0430\u0436\u043d\u0435\u043d\u0438\u044f"

    const-string v2, "with exercises"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->ACTIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v3, :cond_198

    const/4 v3, 0x1

    .line 198
    :goto_e6
    if-eqz v6, :cond_19b

    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    :goto_ee
    const/4 v5, 0x0

    move-object v0, p0

    .line 197
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiWizard;->choice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 198
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 197
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    const-string v0, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430"

    const-string v1, "Passive"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u0432 \u043f\u043e\u043a\u043e\u0439"

    const-string v2, "at rest"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v7, Lcom/isaigu/gymapp/ai/AutoModel$Input;->kind:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoModel$Kind;->PASSIVE:Lcom/isaigu/gymapp/ai/AutoModel$Kind;

    if-ne v0, v3, :cond_19e

    const/4 v3, 0x1

    .line 200
    :goto_115
    if-eqz v6, :cond_1a1

    new-instance v4, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    :goto_11d
    const/4 v5, 0x1

    move-object v0, p0

    .line 199
    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/ai/AiWizard;->choice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/widget/XemsUi$OnIndex;I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xa

    .line 200
    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 199
    invoke-virtual {v9, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    const/4 v0, 0x6

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->fill(Landroid/content/Context;IF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    const-string v0, "\u041e\u043f\u0438\u0442 \u0441 EMS"

    const-string v1, "EMS experience"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AiWizard;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u041f\u044a\u0440\u0432\u0438 \u043f\u044a\u0442"

    const-string v3, "First time"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u041d\u044f\u043a\u043e\u043b\u043a\u043e"

    const-string v3, "A few"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u0420\u0435\u0434\u043e\u0432\u043d\u043e"

    const-string v3, "Regularly"

    .line 204
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v7}, Lcom/isaigu/gymapp/ai/AiCoach;->experienceOf(Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v1

    new-instance v2, Lcom/isaigu/gymapp/ai/AiTrain$Pick;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AiTrain$Pick;-><init>(I)V

    .line 203
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->segmented(Landroid/content/Context;[Ljava/lang/String;ILcom/isaigu/gymapp/widget/XemsUi$OnIndex;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x6

    .line 205
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 203
    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    const v0, 0x3f8ccccd    # 1.1f

    const/16 v1, 0x16

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/AiWizard;->colW(Landroid/content/Context;FI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    return-void

    .line 195
    :cond_194
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_cb

    .line 197
    :cond_198
    const/4 v3, 0x0

    goto/16 :goto_e6

    .line 198
    :cond_19b
    const/4 v4, 0x0

    goto/16 :goto_ee

    .line 199
    :cond_19e
    const/4 v3, 0x0

    goto/16 :goto_115

    .line 200
    :cond_1a1
    const/4 v4, 0x0

    goto/16 :goto_11d
.end method
